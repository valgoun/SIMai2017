using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;
using DG.Tweening;

public class CharacterControl : MonoBehaviour
{
    public int PlayerID = 0;

    public float Speed = 5.0f;
    public float Drag = 5f;
    [Header("Jump")]
    public float JumpHeight = 1.5f;
    public LayerMask Ground;
    public float GroundDistance = 0.1f;
    [Header("Dash")]
    public float DashDistance = 2f;
    public float DashCoolDown = 3f;
    public float DashTime = 0.5f;
    public float DashStunedTime = 3f;
    public float DashTriggerSize = 1.5f;
    public float DashImpactForce = 30f;
    public float DashImpactRetroForce = 20f;
    public BoxCollider DashTrigger;

    public bool IsGrounded
    {
        get
        {
            return _isGrounded;
        }
    }

    public bool IsStuned
    {
        get
        {
            return _isStunned;
        }
    }
    //public Vector3


    private Player _player;
    private Rigidbody _body;
    private Vector2 _axisInput;
    private bool _isGrounded = true;
    private bool _canDash = true;
    private bool _isDashing = false;
    private bool _isStunned = false;
    private Vector3 _dashDirection;
    private int _jumpAvailable = 0;
    private Transform _groundChecker;
    private float _dashSpeed;
    private float _jumpSpeed;

    // Use this for initialization
    void Start()
    {
        _player = ReInput.players.GetPlayer(PlayerID);
        _body = GetComponent<Rigidbody>();
        _groundChecker = transform.GetChild(0);
        _dashSpeed = DashDistance * (Mathf.Log(1f / (Time.fixedDeltaTime * Drag + 1)) / -Time.fixedDeltaTime);
        _jumpSpeed = Mathf.Sqrt(-2f * Physics.gravity.y * JumpHeight);
        /*DOVirtual.DelayedCall(2f, () =>
        {
            _body.AddForce(Vector3.forward * _dashSpeed * 2f, ForceMode.VelocityChange);
        });*/
    }

    public bool Stun(float time)
    {
        if (_isStunned)
            return false;

        foreach (Joystick j in _player.controllers.Joysticks)
        {
            if (!j.supportsVibration) continue;
            j.SetVibration(3f, 3f);
        }

        _isStunned = true;
        DOVirtual.DelayedCall(time, () =>
        {
            _isStunned = false;
            foreach (Joystick j in _player.controllers.Joysticks)
            {
                j.StopVibration();
            }
        });
        return true;
    }

    // Update is called once per frame
    void Update()
    {
        _isGrounded = Physics.CheckSphere(_groundChecker.position, GroundDistance, Ground);
        _body.useGravity = !_isGrounded;
        if (!_body.useGravity)
        {
            var vel = _body.velocity;
            vel.y = 0;
            _body.velocity = vel;
        }

        if (_isStunned)
            return;
        _axisInput = _player.GetAxis2D("Horizontal", "Vertical");


        if (_jumpAvailable == 0 && Physics.CheckSphere(_groundChecker.position, GroundDistance, Ground))
        {
            _jumpAvailable++;
        }

        if (_player.GetButtonDown("Jump") && _jumpAvailable > 0)
        {
            _jumpAvailable--;
            _body.AddForce(Vector3.up * _jumpSpeed, ForceMode.VelocityChange);
        }
        if (_player.GetButtonDown("Dash") && _canDash /*&& _axisInput != Vector2.zero*/)
        {
            _canDash = false;
            _isDashing = true;
            DashTrigger.size *= DashTriggerSize;
            DOVirtual.DelayedCall(DashCoolDown, () => _canDash = true);
            DOVirtual.DelayedCall(DashTime, () =>
            {
                _isDashing = false;
                DashTrigger.size /= DashTriggerSize;
            });
            _dashDirection = transform.forward;
            _body.AddForce(_dashDirection * _dashSpeed, ForceMode.VelocityChange);
        }
    }


    void FixedUpdate()
    {
        var velocity = new Vector3(_axisInput.x, 0, _axisInput.y) * Speed;
        _body.MovePosition(_body.position + velocity * Time.fixedDeltaTime);

        if (velocity != Vector3.zero)
            transform.forward = velocity.normalized;



        var vel = _body.velocity;
        vel.x /= 1f + Drag * Time.fixedDeltaTime;
        vel.z /= 1f + Drag * Time.fixedDeltaTime;
        _body.velocity = vel;
    }

    /// <summary>
    /// OnCollisionEnter is called when this collider/rigidbody has begun
    /// touching another rigidbody/collider.
    /// </summary>
    /// <param name="other">The Collision data associated with this collision.</param>
    void OnCollisionEnter(Collision other)
    {
        if (other.gameObject.CompareTag("Player") && _isDashing)
        {
            //other.rigidbody.DOMove(other.relativeVelocity.normalized * -DashImpactDistance, DashImpactSpeed).SetRelative().SetSpeedBased().SetEase(Ease.OutExpo);
        }
    }

    /// <summary>
    /// OnTriggerEnter is called when the Collider other enters the trigger.
    /// </summary>
    /// <param name="other">The other Collider involved in this collision.</param>
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && _isDashing)
        {
            if (other.transform.GetComponentInParent<CharacterControl>().Stun(DashStunedTime))
            {
                other.GetComponentInParent<Rigidbody>().AddForce(_dashDirection * DashImpactForce, ForceMode.VelocityChange);
                _body.AddForce(-_dashDirection * DashImpactRetroForce, ForceMode.VelocityChange);
            }
        }
        if (other.CompareTag("DeathTrigger"))
        {
            GameManager.Instance.KillPlayer();
            Destroy(gameObject);

            foreach (Joystick j in _player.controllers.Joysticks)
            {
                if (!j.supportsVibration) continue;
                j.SetVibration(3f, 3f);
            }

            DOVirtual.DelayedCall(1.5f, () =>
            {
                foreach (Joystick j in _player.controllers.Joysticks)
                {
                    j.StopVibration();
                }
            });

        }
    }
}

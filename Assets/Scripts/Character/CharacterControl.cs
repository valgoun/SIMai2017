using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;
using DG.Tweening;

public class CharacterControl : MonoBehaviour
{
    public int PlayerID = 0;

    public float Speed = 5.0f;
    [Header("Jump")]
    public float JumpHeight = 1.5f;
    public float JumpSpeed = 3f;
    public Ease JumpEase;
    public LayerMask Ground;
    public float GroundDistance = 0.1f;
    [Header("Dash")]
    public float DashDistance = 2f;
    public float DashSpeed = 3f;
    public Ease DashEase;
    public float DashCoolDown = 3f;
    public float DashImpactForce = 10f;
    public float DashImpactTime = 3f;

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

    // Use this for initialization
    void Start()
    {
        _player = ReInput.players.GetPlayer(PlayerID);
        _body = GetComponent<Rigidbody>();
        _groundChecker = transform.GetChild(0);
    }

    public bool Stun(float time)
    {
        if (_isStunned)
            return false;
        _isStunned = true;
        _body.drag = 12.0f;
        DOVirtual.DelayedCall(time, () =>
        {
            _isStunned = false;
            _body.drag = 0;
        });
        return true;
    }

    // Update is called once per frame
    void Update()
    {
        _axisInput = _player.GetAxis2D("Horizontal", "Vertical");

        _isGrounded = Physics.CheckSphere(_groundChecker.position, GroundDistance, Ground);
        if (_jumpAvailable == 0 && Physics.CheckSphere(_groundChecker.position, GroundDistance, Ground))
        {
            _jumpAvailable++;
        }

        if (_player.GetButtonDown("Jump") && _jumpAvailable > 0)
        {
            _jumpAvailable--;
            _body.DOMoveY(JumpHeight, JumpSpeed).SetRelative().SetSpeedBased().SetEase(JumpEase).OnUpdate(() =>
            {
                var velocity = _body.velocity;
                velocity.y = 0;
                _body.velocity = velocity;
            });
        }
        if (_player.GetButtonDown("Dash") && _canDash && _axisInput != Vector2.zero)
        {
            _canDash = false;
            _isDashing = true;
            DOVirtual.DelayedCall(DashCoolDown, () => _canDash = true);
            _dashDirection = transform.forward;
            var dash = _dashDirection * DashDistance;

            var ray = new Ray(_body.position, _dashDirection);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit, DashDistance, Ground))
            {
                dash = _dashDirection * (hit.distance - 0.5f);
            }


            DOTween.To(() => _body.position, x =>
            {
                var pos = x;
                pos.y = _body.position.y;
                _body.MovePosition(pos);
            }, dash, DashSpeed).SetRelative().SetSpeedBased().OnComplete(() => _isDashing = false).SetEase(DashEase);
        }
    }


    void FixedUpdate()
    {
        if (_isStunned)
            return;
        var velocity = _body.velocity;
        velocity.x = 0;
        velocity.z = 0;

        if (_axisInput != Vector2.zero)
        {
            velocity += (Vector3.right * _axisInput.x + Vector3.forward * _axisInput.y) * Speed;
            transform.forward = new Vector3(_axisInput.x, 0, _axisInput.y);
        }

        _body.velocity = velocity;
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
            if (other.transform.GetComponent<CharacterControl>().Stun(DashImpactTime))
            {
                other.rigidbody.AddForce(_dashDirection * DashImpactForce, ForceMode.VelocityChange);
            }
            //other.rigidbody.DOMove(other.relativeVelocity.normalized * -DashImpactDistance, DashImpactSpeed).SetRelative().SetSpeedBased().SetEase(Ease.OutExpo);
        }
    }
}

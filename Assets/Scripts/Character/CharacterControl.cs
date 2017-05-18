using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;
using DG.Tweening;

public class CharacterControl : MonoBehaviour
{
    public int PlayerID = 0;

    public float Speed = 5.0f;
    public float MaxVelocity = 450f;
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
    public Collider DashTrigger;
    [Header("Stomp")]
    public float ShockWaveTime;
    public float ShockWaveCooldown;
    public float ShockWaveForce;
    public float ShockWaveExplosionForce;
    public float ShockWaveExplosionRadius;
    public float ShockWaveStunTime;
    public float ShockWaveRecoveryTime = 0.2f;
    public LayerMask PlayerMask;

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
    private bool _canShock = true;
    private bool _isDashing = false;
    private bool _isStunned = false;
    private bool _isCharging = false;
    private bool _isShockWaving = false;
    private float _shockWaveCharge = 0f;
    private Vector3 _dashDirection;
    private int _jumpAvailable = 0;
    private Transform _groundChecker;
    private float _dashSpeed;
    private float _jumpSpeed;
    private Tween _moveTween, _rotTween, _upTween;
    private Animator _anim;
    private Transform _graph;

    // Use this for initialization
    void Start()
    {
        _player = ReInput.players.GetPlayer(PlayerID);
        _body = GetComponent<Rigidbody>();
        _groundChecker = transform.GetChild(0);
        _dashSpeed = DashDistance * (Mathf.Log(1f / (Time.fixedDeltaTime * Drag + 1)) / -Time.fixedDeltaTime);
        _jumpSpeed = Mathf.Sqrt(-2f * Physics.gravity.y * JumpHeight);
        _anim = GetComponentInChildren<Animator>();
        _graph = transform.GetChild(1);
    }

    public bool Stun(float time)
    {
        if (_isStunned)
            return false;

        _anim.SetBool("Stun", true);
        if (_isCharging)
        {
            StopAllCoroutines();
            _rotTween.Kill(true);
            _moveTween.Kill(true);
            _upTween.Kill(false);
            _body.useGravity = true;
            _isCharging = false;
        }

        foreach (Joystick j in _player.controllers.Joysticks)
        {
            if (!j.supportsVibration) continue;
            j.SetVibration(1f, 1f);
        }

        _isStunned = true;
        DOVirtual.DelayedCall(time, () =>
        {
            _isStunned = false;
            _anim.SetBool("Stun", false);
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
        _anim.SetBool("Grounded", _isGrounded);


        if (_isShockWaving && _isGrounded == _body.useGravity)
            Stomp();

        if (!_isCharging)
            _body.useGravity = !_isGrounded;
        if (!_body.useGravity)
        {
            var vel = _body.velocity;
            vel.y = 0;
            _body.velocity = vel;
        }

        if (_isStunned)
        {
            _axisInput = Vector2.zero;
            return;
        }
        _axisInput = _player.GetAxis2D("Horizontal", "Vertical");
        _anim.SetFloat("Speed", _axisInput.magnitude);


        if (_jumpAvailable == 0 && Physics.CheckSphere(_groundChecker.position, GroundDistance, Ground))
        {
            _jumpAvailable++;
        }

        if (_player.GetButtonDown("Jump") && _jumpAvailable > 0)
        {
            _anim.SetTrigger("Jump");
            _jumpAvailable--;
            _body.AddForce(Vector3.up * _jumpSpeed, ForceMode.VelocityChange);
        }
        if (_player.GetButtonDown("Dash") && _canDash /*&& _axisInput != Vector2.zero*/)
        {
            _anim.SetBool("Dash", true);
            _canDash = false;
            _isDashing = true;
            DashTrigger.gameObject.SetActive(true);
            DOVirtual.DelayedCall(DashCoolDown, () => _canDash = true);
            DOVirtual.DelayedCall(DashTime, () =>
            {
                _anim.SetBool("Dash", false);
                _isDashing = false;
                DashTrigger.gameObject.SetActive(false);
            });
            _dashDirection = transform.forward;
            _body.AddForce(_dashDirection * _dashSpeed, ForceMode.VelocityChange);
        }
        if (!_isGrounded && _player.GetButtonDown("ShockWave") && _canShock)
        {
            _canShock = false;
            DOVirtual.DelayedCall(ShockWaveCooldown, () => _canShock = true);
            StartCoroutine(ShockWave());
        }

    }

    IEnumerator ShockWave()
    {
        var vel = _body.velocity;
        vel.y = 0f;
        _body.velocity = vel;
        var timer = 0f;
        _isCharging = true;
        _body.useGravity = false;

        _rotTween = transform.DOShakeRotation(ShockWaveTime, 12, 20, 45, false).SetEase(Ease.InExpo);
        _moveTween = transform.DOShakePosition(ShockWaveTime, new Vector3(0.3f, 0, 0.3f), 15, 45, false).SetEase(Ease.InExpo);
        _upTween = transform.DOMoveY(2.5f, ShockWaveTime).SetRelative().SetEase(Ease.Linear);

        foreach (Joystick j in _player.controllers.Joysticks)
        {
            if (!j.supportsVibration) continue;
            j.SetVibration(0f, 3f);
        }


        while (_player.GetButton("ShockWave"))
        {
            _body.useGravity = false;
            timer += Time.deltaTime;
            if (timer >= ShockWaveTime)
            {
                break;
            }
            yield return null;
        }

        foreach (Joystick j in _player.controllers.Joysticks)
        {
            j.StopVibration();
        }

        _rotTween.Kill(true);
        _moveTween.Kill(true);
        _upTween.Kill(false);
        _body.useGravity = true;
        _body.AddForce(Vector3.down * ShockWaveForce, ForceMode.VelocityChange);
        _shockWaveCharge = ShockWaveExplosionForce * timer / ShockWaveTime;
        _isShockWaving = true;
        _isCharging = false;

    }

    void FixedUpdate()
    {
        var velocity = new Vector3(_axisInput.x, 0, _axisInput.y) * Speed;
        _body.MovePosition(_body.position + velocity * Time.fixedDeltaTime);

        if (velocity != Vector3.zero)
            transform.forward = velocity.normalized;



        var vel = _body.velocity;
        vel.x /= 1f + Drag * Time.fixedDeltaTime;
        vel.x = Mathf.Clamp(vel.x, -MaxVelocity, MaxVelocity);
        vel.z /= 1f + Drag * Time.fixedDeltaTime;
        vel.z = Mathf.Clamp(vel.z, -MaxVelocity, MaxVelocity);
        vel.y = Mathf.Min(vel.y, _jumpSpeed);
        _body.velocity = vel;
    }

    private void Stomp()
    {
        var pls = Physics.OverlapSphere(transform.position, ShockWaveExplosionRadius, PlayerMask);
        foreach (var pl in pls)
        {
            if (pl.GetComponentInParent<Rigidbody>() != _body)
            {
                pl.GetComponentInParent<Rigidbody>().AddExplosionForce(_shockWaveCharge, transform.position, ShockWaveExplosionRadius, 1f, ForceMode.VelocityChange);
                pl.GetComponentInParent<CharacterControl>().Stun(ShockWaveStunTime);
            }

        }
        _graph.DOScale(new Vector3(1.6f, 0.1f, 1.6f), 0.2f).SetLoops(2, LoopType.Yoyo).SetEase(Ease.OutCirc);
        _isShockWaving = false;
        Stun(ShockWaveRecoveryTime);
    }

    /// <summary>
    /// OnCollisionEnter is called when this collider/rigidbody has begun
    /// touching another rigidbody/collider.
    /// </summary>
    /// <param name="other">The Collision data associated with this collision.</param>
    void OnCollisionEnter(Collision other)
    {
        if (_isShockWaving)
        {
            Stomp();
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
            }
            _body.AddForce(-_dashDirection * DashImpactRetroForce, ForceMode.VelocityChange);
            _isDashing = false;
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

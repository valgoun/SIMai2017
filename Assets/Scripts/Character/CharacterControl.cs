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

    public bool IsGrounded
    {
        get
        {
            return _isGrounded;
        }
    }




    private Player _player;
    private Rigidbody _body;
    private Vector2 _axisInput;
    private bool _isGrounded = true;
    private bool _canDash = true;
    private Transform _groundChecker;

    // Use this for initialization
    void Start()
    {
        _player = ReInput.players.GetPlayer(PlayerID);
        _body = GetComponent<Rigidbody>();
        _groundChecker = transform.GetChild(0);
    }

    // Update is called once per frame
    void Update()
    {
        _axisInput = _player.GetAxis2D("Horizontal", "Vertical");

        _isGrounded = Physics.CheckSphere(_groundChecker.position, GroundDistance, Ground);

        if (_player.GetButtonDown("Jump") && _isGrounded)
            _body.DOMoveY(JumpHeight, JumpSpeed).SetRelative().SetSpeedBased().SetEase(JumpEase).OnUpdate(() =>
            {
                var velocity = _body.velocity;
                velocity.y = 0;
                _body.velocity = velocity;
            });
        if (_player.GetButtonDown("Dash") && _canDash)
        {
            _canDash = false;
            DOVirtual.DelayedCall(DashCoolDown, () => _canDash = true);
            _body.DOMove(transform.forward * DashDistance, DashSpeed).SetRelative().SetSpeedBased();
        }
    }


    void FixedUpdate()
    {
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
}

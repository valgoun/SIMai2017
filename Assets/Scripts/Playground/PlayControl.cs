using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;
using DG.Tweening;


public class PlayControl : MonoBehaviour
{

    public float Speed;
    public float JumpHeight;
    public float DashDistance = 5f;
    public float Drag = 1f;
    public float ShockWaveTime = 1.5f;
    public float ShockWaveForce = 30f;

    private Rigidbody _body;
    private Player _player;

    private Vector2 _Inputs;
    private Vector3 _oldVelocity = Vector3.zero;
    private float _dashSpeed;


    // Use this for initialization
    void Start()
    {
        _player = ReInput.players.GetPlayer(0);
        _body = GetComponent<Rigidbody>();
        _dashSpeed = DashDistance * (Mathf.Log(1f / (Time.fixedDeltaTime * Drag + 1)) / -Time.fixedDeltaTime);
    }

    // Update is called once per frame
    void Update()
    {
        _Inputs = _player.GetAxis2D("Horizontal", "Vertical");

        if (_player.GetButtonDown("Jump"))
        {
            _body.AddForce(transform.up * Mathf.Sqrt(-2f * Physics.gravity.y * JumpHeight), ForceMode.VelocityChange);
        }
        if (_player.GetButtonDown("Dash"))
        {
            _body.AddForce(transform.forward.normalized * _dashSpeed, ForceMode.VelocityChange);
        }
        if (_player.GetButtonDown("ShockWave"))
        {
            Debug.Log("ShockWave");
            StartCoroutine(ShockWave());
        }
    }


    IEnumerator ShockWave()
    {
        var vel = _body.velocity;
        vel.y = 0f;
        _body.velocity = vel;
        var timer = 0f;


        var RotTween = transform.DOShakeRotation(ShockWaveTime, 12, 20, 45, false).SetEase(Ease.InExpo);
        var MoveTween = transform.DOShakePosition(ShockWaveTime, new Vector3(0.3f, 0, 0.3f), 15, 45, false).SetEase(Ease.InExpo);
        while (_player.GetButton("ShockWave"))
        {
            _body.useGravity = false;
            timer += Time.deltaTime;
            if (timer >= ShockWaveTime)
            {
                _body.AddForce(Vector3.down * ShockWaveForce, ForceMode.VelocityChange);
                _body.useGravity = true;
                yield break;
            }
            yield return null;
        }
    }

    /// <summary>
    /// This function is called every fixed framerate frame, if the MonoBehaviour is enabled.
    /// </summary>
    void FixedUpdate()
    {

        var velocity = new Vector3(_Inputs.x, 0, _Inputs.y) * Speed;
        _body.MovePosition(_body.position + velocity * Time.fixedDeltaTime);

        if (velocity != Vector3.zero)
            transform.forward = velocity.normalized;

        var vel = _body.velocity;
        vel.x /= 1f + Drag * Time.fixedDeltaTime;
        vel.z /= 1f + Drag * Time.fixedDeltaTime;
        _body.velocity = vel;
    }
}

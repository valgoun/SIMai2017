using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;


public class PlayControl : MonoBehaviour
{

    public float Speed;

    private Rigidbody _body;
    private Player _player;

    private Vector2 _Inputs;
    private Vector3 _oldVelocity = Vector3.zero;


    // Use this for initialization
    void Start()
    {
        _player = ReInput.players.GetPlayer(0);
        _body = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        _Inputs = _player.GetAxis2D("Horizontal", "Vertical");

        if (_player.GetButtonDown("Jump"))
        {
            _body.AddForce(transform.up * 5f, ForceMode.VelocityChange);

        }
    }

    /// <summary>
    /// This function is called every fixed framerate frame, if the MonoBehaviour is enabled.
    /// </summary>
    void FixedUpdate()
    {

        var velocity = new Vector3(_Inputs.x, 0, _Inputs.y) * Speed;
        var dif = velocity - _oldVelocity;
        _body.velocity += dif;
        _oldVelocity = velocity;

        if (velocity != Vector3.zero)
            transform.forward = velocity.normalized;

        //drag
    }
}

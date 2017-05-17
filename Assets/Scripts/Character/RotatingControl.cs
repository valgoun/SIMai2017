using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotatingControl : MonoBehaviour
{
    //public float ForceFactor = 1f;
    private Rigidbody _body;
    private SortedList<int, RotationPan> _pans = new SortedList<int, RotationPan>();
    private CharacterControl _control;
    // Use this for initialization
    void Start()
    {
        _body = GetComponent<Rigidbody>();
        _control = GetComponent<CharacterControl>();
    }

    void OnTriggerEnter(Collider other)
    {
        var pan = other.GetComponentInParent<RotationPan>();
        if (pan != null && !_pans.ContainsValue(pan))
        {
            _pans.Add(pan.Id, pan);
        }
    }

    void OnTriggerExit(Collider other)
    {
        var pan = other.transform.GetComponentInParent<RotationPan>();
        if (pan != null)
        {
            _pans.Remove(pan.Id);
        }
    }

    void FixedUpdate()
    {
        if (_pans.Count <= 0 /*|| !_control.IsGrounded */|| _control.IsStuned)
            return;


        var pan = _pans.Values[0];
        var circlePos = transform.position - pan.transform.position;
        circlePos.y = 0;
        var dist = circlePos.sqrMagnitude;
        circlePos.Normalize();
        var tangent = new Vector3(circlePos.z, 0, -circlePos.x);
        _body.AddForce(tangent * (pan.Speed * Mathf.Max(dist, 1.0f) * pan.ForceFactor));
    }
}

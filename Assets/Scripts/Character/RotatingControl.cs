using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotatingControl : MonoBehaviour
{
    public float ForceFactor = 1f;
    private Rigidbody _body;
    private SortedList<int, RotationPan> _pans = new SortedList<int, RotationPan>();
    // Use this for initialization
    void Start()
    {
        _body = GetComponent<Rigidbody>();
    }

    void OnCollisionEnter(Collision other)
    {
        var pan = other.transform.GetComponent<RotationPan>();
        if (pan != null && !_pans.ContainsValue(pan))
        {
            _pans.Add(pan.Id, pan);
        }
    }

    void OnCollisionExit(Collision other)
    {
        var pan = other.transform.GetComponent<RotationPan>();
        if (pan != null)
        {
            _pans.Remove(pan.Id);
        }
    }

    void FixedUpdate()
    {
        if (_pans.Count <= 0)
            return;


        var circlePos = transform.position - _pans.Values[0].transform.position;
        circlePos.y = 0;
        var dist = circlePos.sqrMagnitude;
        circlePos.Normalize();
        var tangent = new Vector3(circlePos.z, 0, -circlePos.x);
        _body.AddForce(tangent * (_pans.Values[0].Speed * dist * ForceFactor));
    }
}

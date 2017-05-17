using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotationPan : MonoBehaviour
{
    public float Speed;
    public float ForceFactor;
    public AnimationCurve ForceAngleCurve;
    public int Id
    {
        get
        {
            return _id;
        }
    }


    [SerializeField]
    [Tooltip("définit l'index du cercle concentrique associé, plus il est élevé, plus il est à l'extérieur")]
    private int _id;
    private Rigidbody _body;

    // Use this for initialization
    void Start()
    {
        _body = GetComponent<Rigidbody>();
    }

    /// <summary>
	/// This function is called every fixed framerate frame, if the MonoBehaviour is enabled.
	/// </summary>
	void FixedUpdate()
    {
        _body.MoveRotation(transform.rotation * Quaternion.Euler(0, Time.fixedDeltaTime * Speed, 0));
    }

}

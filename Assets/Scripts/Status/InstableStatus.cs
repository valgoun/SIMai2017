using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System;

public class InstableStatus : Status
{

    public float fallSpeed { get; set; }
    private DestroyedStatus status;

    void Start()
    {

    }

    void OnCollisionStay(Collision other)
    {
        if (other.transform.tag == "Player" && isReady)
        {
            Debug.Log(duration);
            status = gameObject.AddComponent<DestroyedStatus>();
            status.fallSpeed = fallSpeed;
            status.duration = duration;
            status.exec();
            Destroy(this);
        }
    }

    public override void exec()
    {
        isReady = true;
    }
}

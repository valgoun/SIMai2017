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
        if (transform.childCount == 1)
            transform.GetChild(0).DOShakeRotation(1f, new Vector3(15, 0, 15), 10, 90, false).SetLoops(-1);
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

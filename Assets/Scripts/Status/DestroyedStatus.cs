using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class DestroyedStatus : Status {

    public float fallSpeed { get; set; }

    private Vector3 startPosition;

    public override void exec()
    {
        startPosition = transform.position;
        transform.DOMoveY(-5, fallSpeed).SetRelative();
        if(duration != 0)
        {
            DOVirtual.DelayedCall(duration, () => transform.DOMoveY(5, fallSpeed).SetRelative());
        }
        else
        {
            LevelManager.Instance.destroyedSectors.Add(transform.gameObject);
        }
    }

    public void restore()
    {
        transform.DOMoveY(startPosition.y, fallSpeed);
        LevelManager.Instance.destroyedSectors.Remove(transform.gameObject);
    }
}

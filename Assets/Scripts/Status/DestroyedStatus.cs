using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class DestroyedStatus : Status
{

    public float fallSpeed { get; set; }

    private Vector3 startPosition;

    private Status[] status;

    public override void exec()
    {
        startPosition = transform.position;
        transform.DOMoveY(-5, fallSpeed);
        Debug.Log(startPosition);
        if (duration != 0)
        {
            DOVirtual.DelayedCall(duration, () => restore());
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
        status = GetComponents<Status>();

        foreach (Status s in status)
        {
            if (!(s is DestroyedStatus))
            {
                Destroy(s);
            }
            Destroy(this);
        }
    }
}

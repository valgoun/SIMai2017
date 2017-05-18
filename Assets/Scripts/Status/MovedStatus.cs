using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class MovedStatus : Status {

    private Vector3 position;

    public float moveSpeed { get; set; }

    public float heightModifier { get; set; }

    private int random;

    public override void exec()
    {
        position = transform.position;
        if(position.y == 0)
        {
            random = UnityEngine.Random.Range(0,2);
            switch (random)
            {
                case 0:
                    transform.DOMoveY(heightModifier, moveSpeed).SetRelative();
                    break;
                case 1:
                    transform.DOMoveY(-heightModifier, moveSpeed).SetRelative();
                    break;
            }
        }
        else if(position.y < 0)
        {
            transform.DOMoveY(heightModifier, moveSpeed).SetRelative();

        }
        else if(position.y > 0)
        {
            transform.DOMoveY(-heightModifier, moveSpeed).SetRelative();
        }
    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Status : MonoBehaviour {

    protected bool isReady;

    public float duration { get; set; }

    public abstract void exec();
}

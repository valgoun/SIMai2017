using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System;

public class InstableStatus : Status {


    private MeshCollider col;

    public float fallSpeed { get; set; }

    private Vector3 startPosition;

    private DestroyedStatus status;


	// Use this for initialization
	void Start () {
        col = GetComponent<MeshCollider>();
        startPosition = transform.position;
	}
	

    void OnCollisionStay(Collision other)
    {
        //Debug.Log(duration);
        if (other.transform.tag == "Player" && isReady)
        {
            StartCoroutine(fall());
        }
    }


    IEnumerator fall()
    {
        col.enabled = false;
        transform.DOMoveY(-5, fallSpeed);
        yield return new WaitForSeconds(duration);
        transform.DOMoveY(startPosition.y, fallSpeed);
        col.enabled = true;
        Destroy(this);
    }

    public override void exec()
    {
        isReady = true;     
    }
}

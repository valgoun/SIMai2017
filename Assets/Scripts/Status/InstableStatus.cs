using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System;

public class InstableStatus : Status { 

 

    public float fallSpeed { get; set; }


    private DestroyedStatus status;


	// Use this for initialization
	void Start () {

	}


        void OnCollisionStay(Collision other)
        {

            if (other.transform.tag == "Player" && isReady)
            {
                status = gameObject.AddComponent<DestroyedStatus>();
                status.fallSpeed = fallSpeed;
                status.duration = duration;
                status.exec();
                Destroy(this);
            }    // Use this for initialization
        }


    // Update is called once per frame
    void Update()
    {

    }

   



    public override void exec()
    {
        isReady = true;     
    }
}

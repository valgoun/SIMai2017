using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
public class InstableStatus : MonoBehaviour {

    public float duration { get; set;}

    private MeshCollider collider;

    private bool isFallen;

	// Use this for initialization
	void Start () {
        isFallen = false;
        collider = GetComponent<MeshCollider>();
        duration = 2.5f;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnCollisionStay(Collision other)
    {
        Debug.Log(duration);
        if (other.transform.tag == "Player" && !isFallen && duration != 0)
        {
            isFallen = true;
            StartCoroutine(fall());

        }
    }


    IEnumerator fall()
    {
        collider.enabled = false;
        transform.DOMoveY(-5, 0.25f).SetRelative();
        yield return new WaitForSeconds(duration);
        transform.DOMoveY(5, 0.25f).SetRelative();
        collider.enabled = true;
        Destroy(this);
    }
}

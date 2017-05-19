using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class MeatballScript : MonoBehaviour {

    [SerializeField]
    private float stunTime;

	public float timer = 5f;
    
	// Use this for initialization
	void Start () {
        transform.DOMoveY(-8, 0.3f).SetRelative();
		Destroy (gameObject, timer);
	}
	
	// Update is called once per frame
	void Update () {

        transform.RotateAround(Vector3.zero, Vector3.up, 100 * Time.deltaTime);

    }

    void OnTriggerEnter(Collider other)
    {
        if(other.transform.tag == "Player")
        {
            other.GetComponent<CharacterControl>().Stun(stunTime);
        }
    }

}

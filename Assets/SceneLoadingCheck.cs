using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class SceneLoadingCheck : MonoBehaviour {

    public List<Transform> playersSpawn = new List<Transform>();

	// Use this for initialization
	void Start () {
        OnSceneLoaded();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void OnSceneLoaded()
    {
        Debug.Log("toto");
        GameManager.Instance.charactersSpawnPoints = playersSpawn;
        GameManager.Instance.startGame();
    }
}

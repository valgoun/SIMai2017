using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SceneLoadingCheck : MonoBehaviour {

    public List<Transform> playersSpawn = new List<Transform>();

    public GameObject endGameDisplay;

    public Button RestartButton;

    public Button BackToMenuButton;
    // Use this for initialization
    void Start () {
        OnSceneLoaded();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void OnSceneLoaded()
    {
        GameManager.Instance.charactersSpawnPoints = playersSpawn;
        GameManager.Instance.endGameDisplay = endGameDisplay;
        GameManager.Instance.RestartButton = RestartButton;
        GameManager.Instance.BackToMenuButton = BackToMenuButton;
        GameManager.Instance.startRound();
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using Rewired;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;

public class MenuManager : MonoBehaviour {


    public static MenuManager Instance { get; private set; }

    [SerializeField]
    private float transitionDuration;

    [SerializeField]
    private Menu playerSelect;

    [SerializeField]
    private Menu start;

    [SerializeField]
    private Menu options;

    [SerializeField]
    private Menu credits;

    public Menu howToPlay;


    public List<Menu> previousPositions = new List<Menu>();

    private Ray ray;


    [SerializeField]
    private LayerMask layer; 

	// Use this for initialization
	void Start () {
        if (Instance)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
        previousPositions.Add(start);
        
       
	}
	
	// Update is called once per frame
	void Update () {
        if (ReInput.players.GetPlayer(0).GetButtonDown("Cancel"))
        {
            OnReturnClick();
        }
	}
    
    public void OnPlayClick()
    {
        EventSystem.current.SetSelectedGameObject(playerSelect.getMainButton());
        previousPositions.Add(playerSelect);
        transform.DOMove(playerSelect.getMenuCameraPosition().position, 1f);
        transform.DORotateQuaternion(playerSelect.getMenuCameraPosition().rotation, 1f);

    }

    public void OnOptionsClick()
    {
        EventSystem.current.SetSelectedGameObject(options.getMainButton());
        previousPositions.Add(options);
        transform.DOMove(options.getMenuCameraPosition().position, 1f);
        transform.DORotateQuaternion(options.getMenuCameraPosition().rotation, 1f);
    }

    public void OnReturnClick()
    {
        if (previousPositions.Count > 1)
        {
            EventSystem.current.SetSelectedGameObject(previousPositions[previousPositions.Count - 2].getMainButton());
            transform.DOMove(previousPositions[previousPositions.Count - 2].getMenuCameraPosition().position, 1f);
            transform.DORotateQuaternion(previousPositions[previousPositions.Count - 2].getMenuCameraPosition().rotation, 1f);


            previousPositions.RemoveAt(previousPositions.Count - 1);
        }
    }


    public void OnCreditsClick()
    {
        previousPositions.Add(credits);
        transform.DOMove(credits.getMenuCameraPosition().position, 1f);
        transform.DORotateQuaternion(credits.getMenuCameraPosition().rotation, 1f);
    }

    public void OnHowToPlayClick()
    {
        EventSystem.current.SetSelectedGameObject(howToPlay.getMainButton());
        previousPositions.Add(howToPlay);
        transform.DOMove(howToPlay.getMenuCameraPosition().position, 1f);
        transform.DORotateQuaternion(howToPlay.getMenuCameraPosition().rotation, 1f);
    }

    public void OnStartClick()
    {
        SceneManager.LoadScene(1);
    }

}

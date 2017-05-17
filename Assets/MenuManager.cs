using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using Rewired;

public class MenuManager : MonoBehaviour {


    [SerializeField]
    private float transitionDuration;

    [SerializeField]
    private Transform playerSelectPosition;

    [SerializeField]
    private Transform startPosition;

    [SerializeField]
    private Transform optionsPosition;

    [SerializeField]
    private List<Transform> previousPositions = new List<Transform>();

    private Ray ray;

    [SerializeField]
    private GameObject[] characters;

    [SerializeField]
    private LayerMask layer; 

	// Use this for initialization
	void Start () {
        previousPositions.Add(startPosition);
        
        ReInput.ControllerConnectedEvent += OnControllerConnected;

        ReInput.ControllerDisconnectedEvent += OnControllerDisconnected;

        if(ReInput.controllers.joystickCount != 0)
        {
            foreach (Joystick j in ReInput.controllers.GetJoysticks())
            {
                characters[j.id].SetActive(true);
            }
        }
	}
	
	// Update is called once per frame
	void Update () {

	}
    
    public void OnPlayClick()
    {
        previousPositions.Add(playerSelectPosition);
        transform.DOMove(playerSelectPosition.position, 1f);
        transform.DORotateQuaternion(playerSelectPosition.rotation, 1f);

    }

    public void OnOptionsClick()
    {
        previousPositions.Add(optionsPosition);
        transform.DOMove(optionsPosition.position, 1f);
        transform.DORotateQuaternion(optionsPosition.rotation, 1f);
    }

    public void OnReturnClick()
    {

        transform.DOMove(previousPositions[previousPositions.Count - 2].position, 1f);
        transform.DORotateQuaternion(previousPositions[previousPositions.Count - 2].rotation, 1f);


        previousPositions.RemoveAt(previousPositions.Count - 1);
    }

    public void OnControllerConnected(ControllerStatusChangedEventArgs args)
    {
        characters[args.controllerId].SetActive(true);
    }

    public void OnControllerDisconnected(ControllerStatusChangedEventArgs args)
    {
        characters[args.controllerId].SetActive(false);
    }

}

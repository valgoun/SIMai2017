using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Menu {

    [SerializeField]
    private Transform menuCameraPosition;

    [SerializeField]
    private GameObject mainButton;


    public Transform getMenuCameraPosition()
    {
        return menuCameraPosition;
    }

    public GameObject getMainButton()
    {
        return mainButton;
    }

}

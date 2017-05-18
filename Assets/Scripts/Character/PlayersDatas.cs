using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[System.Serializable]
public class PlayersDatas {

    [SerializeField]
    private int id;

    [SerializeField]
    private bool isAlive;

    [SerializeField]
    private int Score;

    [SerializeField]
    private GameObject deathImage;

    [SerializeField]
    private Image playerPortrait;

    [SerializeField]
    private GameObject[] victoryStamps;

}

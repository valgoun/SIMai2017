using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class UIManager : MonoBehaviour
{

    public static UIManager Instance;

    [SerializeField]
    private GameObject[] playersDisplays;

    [SerializeField]
    private GameObject vote1;

    [SerializeField]
    private GameObject vote2;

    [SerializeField]
    private GameObject vote3;

    [SerializeField]
    private GameObject vote4;

    private Color playerColor;

    private Image playerImage;

    public GameObject Pause;

    public GameObject upblackbar;

    public GameObject downblackbar;


    public bool test;

    public bool isPaused = false;

    public int testValue;


    // Use this for initialization
    void Start()
    {
        if (Instance)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    // Update is called once per frame
    void Update()
    {
        if (test)
        {
            showPlayerDeath(testValue);
        }

        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!isPaused)
            {
                PauseGame();
                //isPaused = true;
            }

            if (isPaused)
            {
                UnPauseGame();
                //isPaused = false;
            }

            isPaused = !isPaused;
        }

    }

    public void PauseGame()
    {
        Pause.SetActive(true);
        upblackbar.transform.DOMoveY(-4, 0.2f).SetRelative();
        downblackbar.transform.DOMoveY(4, 0.2f).SetRelative();
    }

    public void UnPauseGame()
    {
        Pause.SetActive(false);
        upblackbar.transform.DOMoveY(4, 0.2f).SetRelative();
        downblackbar.transform.DOMoveY(-4, 0.2f).SetRelative();
    }

    public void initialize(int playerID)
    {
        playersDisplays[playerID].SetActive(true);
    }

    public void showPlayerDeath(int playerID)
    {
        playersDisplays[playerID].GetComponent<Image>().DOColor(Color.gray, 0.1f);
        playersDisplays[playerID].transform.GetChild(0).GetComponent<Image>().DOColor(Color.gray, 0.1f);
        playersDisplays[playerID].transform.GetChild(1).gameObject.SetActive(true);
    }

    public void voteActivation()
    {
        vote1.transform.DOMoveX(1340, 0.25f);
        vote2.transform.DOMoveX(1340, 0.25f);
        vote3.transform.DOMoveX(1340, 0.25f);
        vote4.transform.DOMoveX(1340, 0.25f);
    }

}

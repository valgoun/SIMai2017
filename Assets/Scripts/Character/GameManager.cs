
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Rewired;
using UnityEngine.EventSystems;
using DG.Tweening;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    public int PlayerAlive = 0;

    public int playerAmount = 0;
    public static GameManager Instance { get; private set; }

    public bool canChangeRound = false;

    public GameObject roundDisplay;

    public int roundAmount = 0;

    public int maxRoundAmount = 0;

    public bool inMenu = true;

    public Text roundDisplayText;

    public GameObject endGameDisplay;

    public List<Transform> charactersSpawnPoints = new List<Transform>();

    public Button RestartButton;

    public Button BackToMenuButton;

    [SerializeField]
    private GameObject[] characters;

    [SerializeField]
    private GameObject[] charactersPrefabs;

    [SerializeField]
    private List<int> playersID = new List<int>();

    /// <summary>
    /// Awake is called when the script instance is being loaded.
    /// </summary>
    void Awake()
    {

        if (Instance)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        DontDestroyOnLoad(gameObject);


        ReInput.ControllerConnectedEvent += OnControllerConnected;

        ReInput.ControllerDisconnectedEvent += OnControllerDisconnected;

        roundAmount = 3;

        if (ReInput.controllers.joystickCount != 0)
        {
            foreach (Joystick j in ReInput.controllers.GetJoysticks())
            {

                characters[j.id].SetActive(true);
                playersID.Add(j.id);
                PlayerAlive++;
                playerAmount++;
            }
        }

        foreach (var pl in ReInput.players.AllPlayers)
        {
            if (pl == ReInput.players.GetSystemPlayer()) continue;
            pl.AddInputEventDelegate(_ => NewRound(), UpdateLoopType.Update, InputActionEventType.ButtonJustPressed, "Restart");
        }
    }

    void Update()
    {
        if (canChangeRound)
        {
            if (ReInput.players.GetPlayer(0).GetButtonDown("MoveVertical"))
            {
                Debug.Log("tata");
                if (maxRoundAmount < 9)
                {
                    roundAmount++;
                    maxRoundAmount++;
                }
                else
                {
                    roundAmount = 1;
                    maxRoundAmount = 1;
                }
            }
            else if (ReInput.players.GetPlayer(0).GetNegativeButtonDown("MoveVertical"))
            {
                Debug.Log("toto");
                if (maxRoundAmount > 1)
                {
                    roundAmount--;
                    maxRoundAmount--;
                }
                else
                {
                    roundAmount = 9;
                    maxRoundAmount = 9;
                }
            }
        }
        if (inMenu && roundDisplayText)
        {
            if (roundDisplayText.text != roundAmount.ToString())
            {
                Debug.Log(roundAmount);
                roundDisplayText.text = roundAmount.ToString();
            }
        }
    }

    public void KillPlayer(CharacterControl player)
    {
        PlayerAlive--;
        UIManager.Instance.showPlayerDeath(player.PlayerID);
        if (PlayerAlive <= 1 && roundAmount > 0)
        {
            NewRound();
            roundAmount--;
        }
        else if (PlayerAlive <= 1 && roundAmount <= 1)
        {
            EndGame();
        }
        //EndTurn();
    }

    public void startRound()
    {
        if (endGameDisplay.activeInHierarchy)
        {
            endGameDisplay.SetActive(false);

        }
        foreach (int id in playersID)
        {
            Instantiate(charactersPrefabs[id], charactersSpawnPoints[id].position, Quaternion.identity).GetComponent<CharacterControl>();
        }
    }

    public void NewRound()
    {
        PlayerAlive = playerAmount;
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    public void RestartGame()
    {
        Debug.Log("toto");
        roundAmount = maxRoundAmount;
        PlayerAlive = playerAmount;
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }

    public void BackToMenu()
    {
        inMenu = true;
        SceneManager.LoadScene(0);
    }

    public void EndGame()
    {
        endGameDisplay.SetActive(true);
        RestartButton.onClick.AddListener(() => RestartGame());
        BackToMenuButton.onClick.AddListener(() => BackToMenu());
    }

    public void OnControllerConnected(ControllerStatusChangedEventArgs args)
    {
        characters[args.controllerId].SetActive(true);
    }

    public void OnControllerDisconnected(ControllerStatusChangedEventArgs args)
    {
        characters[args.controllerId].SetActive(false);
    }

    public void OnSelect()
    {
        Debug.Log("tutu");
        canChangeRound = true;
    }

    public void OnDeselect()
    {
        canChangeRound = false;
    }
}

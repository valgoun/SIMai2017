
﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Rewired;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class GameManager : MonoBehaviour
{
    public int PlayerAlive = 0;
    public static GameManager Instance { get; private set; }

    public bool canChangeRound = false;

    public GameObject roundDisplay;

    public int roundAmount;

    public Text roundDisplayText;

    public List<CharacterControl> playersAlive;

    public List<int> scores = new List<int>();

    public List<Transform> charactersSpawnPoints = new List<Transform>();

    public List<int> deadPlayersID = new List<int>();

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
                //characters[j.id].SetActive(true);
                playersID.Add(j.id);
                PlayerAlive++;
            }
        }

        foreach (var pl in ReInput.players.AllPlayers)
        {
            if (pl == ReInput.players.GetSystemPlayer()) continue;
            pl.AddInputEventDelegate(_ => RestartGame(), UpdateLoopType.Update, InputActionEventType.ButtonJustPressed, "Restart");
        }
    }

    void Update()
    {
            if (canChangeRound)
            {
                if(ReInput.players.GetPlayer(0).GetButtonDown("MoveVertical"))
                {
                    if(roundAmount < 5)
                {
                    roundAmount++;
                }
                else
                {
                    roundAmount = 1;
                }
                }
                else if (ReInput.players.GetPlayer(0).GetNegativeButtonDown("MoveVertical"))
                {
                    if (roundAmount > 1)
                    {
                        roundAmount--;
                    }
                    else
                    {
                    roundAmount = 5;
                    }
                }
            }
        /*if(roundDisplayText.text != roundAmount.ToString())
        {
            roundDisplayText.text = roundAmount.ToString();
        }*/

    }

    public void KillPlayer(CharacterControl player)
    {
        PlayerAlive--;
        UIManager.Instance.showPlayerDeath(player.PlayerID);
        deadPlayersID.Add(player.PlayerID);
        playersAlive.Remove(player);
        if (PlayerAlive <= 1)
            RestartGame();
    }

    public void startGame()
    {
        foreach(int id in playersID)
        {
            playersAlive.Add(Instantiate(charactersPrefabs[id], charactersSpawnPoints[id].position, Quaternion.identity).GetComponent<CharacterControl>());
            scores.Add(0);
        }
    }

    public void RestartGame()
    {
        Debug.Log(playersAlive[0].PlayerID);
        scores[playersAlive[0].PlayerID]++;
        foreach (int id in deadPlayersID)
        {
            Instantiate(charactersPrefabs[id], charactersSpawnPoints[id].position, Quaternion.identity).GetComponent<CharacterControl>();
        }
        deadPlayersID = new List<int>();
        //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
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
        canChangeRound = true;
    }

    public void OnDeselect()
    {
        canChangeRound = false;
    }
}

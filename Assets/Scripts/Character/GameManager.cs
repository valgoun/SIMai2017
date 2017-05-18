using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Rewired;
using DG.Tweening;

public class GameManager : MonoBehaviour
{
    public int PlayerAlive = 0;
    public static GameManager Instance { get; private set; }

    private Camera _main;

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
        _main = Camera.main;
    }

    public void KillPlayer()
    {
        Sound_Manager.Instance.SFX_Death_Cook();
        PlayerAlive--;
        if (PlayerAlive <= 1)
            RestartGame();
        _main.DOShakePosition(0.5f, 0.8f, 15, 45);
    }

    public void startGame(List<Transform> charactersSpawnPoints)
    {
        foreach(int id in playersID)
        {
            Instantiate(charactersPrefabs[id], charactersSpawnPoints[id].position, Quaternion.identity);
        }
    }

    public void RestartGame()
    {
        Debug.Log("Restart");
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
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

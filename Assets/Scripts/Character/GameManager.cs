using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Rewired;

public class GameManager : MonoBehaviour
{
    public int PlayerAlive = 4;
    public static GameManager Instance { get; private set; }

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

        foreach (var pl in ReInput.players.AllPlayers)
        {
            if (pl == ReInput.players.GetSystemPlayer()) continue;
            pl.AddInputEventDelegate(_ => RestartGame(), UpdateLoopType.Update, InputActionEventType.ButtonJustPressed, "Restart");
        }
    }

    public void KillPlayer()
    {
        PlayerAlive--;
        if (PlayerAlive <= 1)
            RestartGame();
    }

    public void RestartGame()
    {
        Debug.Log("Restart");
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}

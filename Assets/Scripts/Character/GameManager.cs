using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using Rewired;
using DG.Tweening;

public class GameManager : MonoBehaviour
{
    public int PlayerAlive = 4;
    public static GameManager Instance { get; private set; }

    private Camera _main;

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
        _main = Camera.main;
    }

    public void KillPlayer()
    {
        PlayerAlive--;
        if (PlayerAlive <= 1)
            RestartGame();
        _main.DOShakePosition(0.5f, 0.8f, 15, 45);
    }

    public void RestartGame()
    {
        Debug.Log("Restart");
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}

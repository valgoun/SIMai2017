using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UniRx;

public class EventManager : MonoBehaviour
{
    public static EventManager Instance { get; private set; }

    public List<Gameplay.Event> Events;
    public float InitialTimer;
    [System.Serializable]
    public class TimerEntry
    {
        public float TimeStamp;
        public float Timer;
    }

    public List<TimerEntry> TimerModification;


    void Awake()
    {
        if (Instance)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    // Use this for initialization
    void Start()
    {
        foreach (var entry in TimerModification)
        {
            Observable.Timer(TimeSpan.FromSeconds(entry.TimeStamp)).Subscribe(_ => InitialTimer = entry.Timer).AddTo(this);
        }
        StartCoroutine(UpdateCoroutine());
    }

    IEnumerator UpdateCoroutine()
    {
        while (true)
        {
            var time = InitialTimer;
            yield return new WaitForSeconds(time);
            var e = Events[UnityEngine.Random.Range(0, Events.Count)];
            e.Exec();
        }
    }
}

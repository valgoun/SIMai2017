using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class Binding : MonoBehaviour {

    public EventTrigger trigger;

    // Use this for initialization
    void Start()
    {
        trigger = GetComponent<EventTrigger>();
        EventTrigger.Entry select = new EventTrigger.Entry();
        EventTrigger.Entry deselect = new EventTrigger.Entry();
        select.eventID = EventTriggerType.Select;
        deselect.eventID = EventTriggerType.Deselect;
        select.callback.AddListener(x =>
        {
            OnSelect();
        });
        deselect.callback.AddListener(x =>
        {
            OnDeselect();
        });
        trigger.triggers.Add(select);


    }
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnSelect()
    {
        GameManager.Instance.canChangeRound = true;
    }

    void OnDeselect()
    {
        GameManager.Instance.canChangeRound = false;
    }
}

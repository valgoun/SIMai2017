﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Gameplay
{
    public class BoilingEvent : Event
    {

        [Tooltip("Durée sous l'eau du bloc lorsque celui ci est activé")]
        [SerializeField]
        private float fallDuration;

        [Tooltip("le nombre de secteurs affectés par l'évènement")]
        [SerializeField]
        private int quantity;

        private List<GameObject> sectors = new List<GameObject>();

        public override void Exec()
        {
            sectors = LevelManager.Instance.GetRandomsSectors(quantity);

            foreach (GameObject s in sectors)
            {

                s.AddComponent<InstableStatus>();
                s.GetComponent<InstableStatus>().duration = fallDuration;
                Debug.Log("toto");
            }

        }

    }
}
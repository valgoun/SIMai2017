using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

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

        [Tooltip("Vitesse de chute du bloc")]
        [SerializeField]
        private float fallSpeed;

        private InstableStatus status;

        private List<GameObject> sectors = new List<GameObject>();

        public override void Exec()
        {
            sectors = LevelManager.Instance.GetRandomsSectors(quantity);

            foreach(GameObject s in sectors)
            {
                if (!s.GetComponent<InstableStatus>()) { 
                status = s.AddComponent<InstableStatus>();
                status.fallSpeed = fallSpeed;
                status.duration = fallDuration;
                status.exec();
               }
            }
        }

        [MenuItem("Assets/Create/Event/BoilingEvent")]
        public static void CreateAsset()
        {
            ScriptableObjectUtility.CreateAsset<BoilingEvent>();
        }
    }
}
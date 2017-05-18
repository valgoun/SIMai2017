using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Gameplay
{
    public class PotatoEvent : Event
    {
        private List<GameObject> sectors = new List<GameObject>();

        [Tooltip("Nombre de secteurs affectés par l'évènement")]
        [SerializeField]
        private int quantity;

        [Tooltip("Vitesse de chute de la plateforme")]
        [SerializeField]
        private float fallSpeed;

        private DestroyedStatus status;


        public override void Exec()
        {
            sectors = LevelManager.Instance.GetRandomsSectors(quantity);
            foreach (GameObject s in sectors)
            {
                if (!s.GetComponent<DestroyedStatus>())
                {
                    status = s.AddComponent<DestroyedStatus>();
                    status.fallSpeed = fallSpeed;
                    status.duration = 0;
                    status.exec();
                }
            }
        }

    }
}

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Gameplay
{
    public class MeatballEvent : Event
    {

        private GameObject circle;

        [SerializeField]
        private GameObject meatball;

        public override void Exec()
        {
            circle = LevelManager.Instance.GetRandomCircle();
            if (!LevelManager.Instance.meatBalledcircle.Contains(circle))
            {
                Instantiate(meatball, circle.transform.GetChild(circle.transform.childCount - 1).position, Quaternion.identity);
                LevelManager.Instance.meatBalledcircle.Add(circle);
            }
        }

    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Gameplay
{
    public class LadleEvent : Event
    {
        private List<GameObject> Circles = new List<GameObject>();


        [Tooltip("Valeur du modificateur de vitesse")]
        [SerializeField]
        private float modifierValue;

        public override void Exec()
        {
            Circles = LevelManager.Instance.getAllCircles();
            foreach (GameObject c in Circles)
            {
                //Debug.Log(c.GetComponent<RotationPan>());
                //Debug.Log(c.GetComponent<RotationPan>().Speed * -modifierValue);
                c.GetComponent<RotationPan>().Speed *= -modifierValue;
            }
        }



    }
}

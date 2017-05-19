using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Gameplay
{
	public class BoilingEvent : Event
	{

		[Tooltip ("Durée sous l'eau du bloc lorsque celui ci est activé")]
		[SerializeField]
		private float fallDuration;

		[Tooltip ("le nombre de secteurs affectés par l'évènement")]
		[SerializeField]
		private int quantity;

		[Tooltip ("Vitesse de chute du bloc")]
		[SerializeField]
		private float fallSpeed;

		private InstableStatus status;

		private List<GameObject> sectors = new List<GameObject> ();

		public override void Exec ()
		{
			sectors = LevelManager.Instance.GetRandomsSectors (quantity, x => !x.GetComponent<InstableStatus> ());

			foreach (GameObject s in sectors) {
				status = s.AddComponent<InstableStatus> ();
				status.fallSpeed = fallSpeed;
				status.duration = fallDuration;
				status.exec ();
			}
		}
	}
}
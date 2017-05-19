using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Gameplay
{
	public class ForkEvent : Event
	{

		private List<GameObject> sectors = new List<GameObject> ();

		private MovedStatus status;

		[Tooltip ("modificateur de hauteur")]
		[SerializeField]
		private float heightModifier;

		[Tooltip ("vitesse de déplacement de l'élément")]
		[SerializeField]
		private float moveSpeed;

		[Tooltip ("Nombre de plateformes devant être affecté")]
		[SerializeField]
		private int quantity;

		public override void Exec ()
		{
			
			sectors = LevelManager.Instance.GetRandomsSectors (quantity);
			foreach (GameObject s in sectors) {
				var canMove = true;
				if (s.GetComponent<DestroyedStatus> ()) {
					canMove = false;
					Debug.Log ("Bonjour");
				}
				if (canMove) {
					
					if (!s.GetComponent<MovedStatus> ()) {
						status = s.AddComponent<MovedStatus> ();
						status.moveSpeed = moveSpeed;
						status.heightModifier = heightModifier;
						status.exec ();
						Debug.Log ("Lol");
					} else {
						status.exec ();
					}
				}
			}
		}
	}
}

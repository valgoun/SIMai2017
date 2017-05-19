using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UniRx;
using UniRx.Triggers;


namespace Gameplay
{
	public class MeatballEvent : Event
	{

		//private GameObject circle;

		[SerializeField]
		private GameObject meatball;

		public override void Exec ()
		{
			var circle = LevelManager.Instance.GetRandomCircle (x => !LevelManager.Instance.meatBalledcircle.Contains (x));
			if (circle) {
				Debug.Log (circle.GetComponent<RotationPan> ().Id);
				if (!LevelManager.Instance.meatBalledcircle.Contains (circle)) {
					var ball = Instantiate (meatball, circle.transform.GetChild (circle.transform.childCount - 1).position, Quaternion.identity) as GameObject;
					LevelManager.Instance.meatBalledcircle.Add (circle);
					ball.AddComponent<ObservableDestroyTrigger> ().OnDestroyAsObservable ().Subscribe (_ => {
						LevelManager.Instance.meatBalledcircle.Remove (circle);
					});
				}
			}
		}

	}
}

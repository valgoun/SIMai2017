using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

namespace Gameplay
{
    public class DebugEvent : Event
    {
        [TextAreaAttribute(15, 20)]
        public string Text;
        public override void Exec()
        {
            Debug.Log(Text);
        }

        [MenuItem("Assets/Create/Event/DebugEvent")]
        public static void CreateAsset()
        {
            ScriptableObjectUtility.CreateAsset<DebugEvent>();
        }
    }
}


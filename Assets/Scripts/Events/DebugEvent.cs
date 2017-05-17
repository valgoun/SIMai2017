using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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


    }
}


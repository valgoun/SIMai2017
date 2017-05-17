using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Gameplay
{
    [Serializable]
    public abstract class Event : ScriptableObject
    {
        public abstract void Exec();
    }
}

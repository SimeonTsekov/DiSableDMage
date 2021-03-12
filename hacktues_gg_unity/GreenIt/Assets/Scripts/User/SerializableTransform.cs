using System;
using UnityEngine;

namespace User
{
    [Serializable]
    public class SerializableTransform
    {
        public Vector3 position;
        public Quaternion rotation;

        public SerializableTransform(Transform transform)
        {
            this.position = transform.position;
            this.rotation = transform.rotation;
        }
    }
}
using System;
using UnityEngine;

namespace User
{
    [Serializable]
    public class SerializableTransform
    {
        public float positionX;
        public float positionY;
        public float positionZ;
        public float rotationX;
        public float rotationY;
        public float rotationZ;
        public float rotationW;

        public SerializableTransform(Transform transform)
        {
            positionX = transform.position.x;
            positionY = transform.position.y;
            positionZ = transform.position.z;
            rotationX = transform.rotation.x;
            rotationY = transform.rotation.y;
            rotationZ = transform.rotation.z;
            rotationW = transform.rotation.w;
        }
    }
}
using System;
using Building;
using UnityEngine;

namespace User
{
    [Serializable]
    public class BuildingData
    {
        public SerializableTransform buildingTransform;
        public string prefab;
        //public BaseBuilding buildingInfo;

        public BuildingData(SerializableTransform buildingTransform, string prefab)
        {
            this.buildingTransform = buildingTransform;
            this.prefab = prefab;
            //this.buildingInfo = buildingInfo;
        }
    }
}
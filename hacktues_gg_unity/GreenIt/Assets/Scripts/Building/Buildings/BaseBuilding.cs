using UnityEngine;
using User;

namespace Building
{
    public class BaseBuilding : MonoBehaviour
    {
        public int price;

        public void OnBuild()
        {
            Debug.Log("Lmao");
            UserController.Instance.buildings.Add(new BuildingData(new SerializableTransform(transform), name));
        }
    }
}
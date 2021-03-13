using UnityEngine;
using User;

namespace Building.Buildings
{
    public abstract class BaseBuilding : MonoBehaviour
    {
        protected string Name;
        public float Price { get; protected set; }
        protected int WorkersRequired;
        protected UserController User;

        protected void OnBuild()
        {
            if (!GameStateController.Instance.loading)
            {
                User.UserData.currency -= Price;
                User.UserData.workers -= WorkersRequired;
                UpdateMultipliers();
            }
            User.buildings.Add(new BuildingData(new SerializableTransform(transform), Name));
        }

        protected abstract void UpdateMultipliers();
    }
}
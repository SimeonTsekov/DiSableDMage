using UnityEngine;
using User;

namespace Building.Buildings
{
    public abstract class BaseBuilding : MonoBehaviour
    {
        protected string Name;
        protected float Price;
        protected int WorkersRequired;
        protected UserController User;

        protected void OnBuild()
        {
            User.UserData.currency -= Price;
            User.UserData.workers -= WorkersRequired;
            UpdateMultipliers();
            User.buildings.Add(new BuildingData(new SerializableTransform(transform), Name));
        }

        protected abstract void UpdateMultipliers();
    }
}
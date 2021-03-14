using User;
using Utils;

namespace Building.Buildings
{
    public class WindTurbine : BaseBuilding
    {
        private int _energyGeneration;

        private void Awake()
        {
            User = UserController.Instance;
            Price = Constants.turbinePrice;
            WorkersRequired = Constants.turbineWorkers;
            _energyGeneration = Constants.turbineEnergy;
            Name = "WindTurbine";
            OnBuild();
        }
        
        protected override void UpdateMultipliers()
        {
            User.UserData.power += _energyGeneration;
        }
    }
}
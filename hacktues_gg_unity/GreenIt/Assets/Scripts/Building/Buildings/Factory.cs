using User;
using Utils;

namespace Building.Buildings
{
    public class Factory : BaseBuilding
    {
        private int _energyConsumption;
        private float _currencyMultiplier;
        private float _pollutionMultiplier;

        private void Awake()
        {
            User = UserController.Instance;
            Price = Constants.factoryPrice;
            WorkersRequired = Constants.factoryWorkers;
            _energyConsumption = Constants.factoryEnergy;
            _currencyMultiplier = Constants.factoryCurrencyMultiplier;
            _pollutionMultiplier = Constants.factoryPollutionMultiplier;
            Name = "Factory";
            OnBuild();
        }
        
        protected override void UpdateMultipliers()
        {
            User.UserData.power -= _energyConsumption;
            User.UserData.currencyMultiplier += _currencyMultiplier;
            User.UserData.pollutionMultiplier += _pollutionMultiplier;
        }
    }
}
using System;
using User;
using Utils;


namespace Building.Buildings
{
    public class House : BaseBuilding
    {
        private int _energyConsumption;
        private float _currencyMultiplier;
        private float _pollutionMultiplier;

        private void Awake()
        {
            User = UserController.Instance;
            Price = Constants.housePrice;
            WorkersRequired = Constants.houseWorkers;
            _energyConsumption = Constants.houseEnergy;
            _currencyMultiplier = Constants.houseCurrencyMultiplier;
            _pollutionMultiplier = Constants.housePollutionMultiplier;
            Name = "House";
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
using Utils;

namespace User
{
    public class UserData
    {
        public int workers;
        public float pollution;
        public float currency;
        public string cityName;
        public int power;

        public float pollutionMultiplier;
        public float currencyMultiplier;

        public UserData()
        {
            workers = Constants.baseWorkers;
            pollution = Constants.basePollution;
            currency = Constants.baseCurrency;
            power = Constants.basePower;

            cityName = "";
            
            pollutionMultiplier = Constants.basePollutionMultiplier;
            currencyMultiplier = Constants.baseCurrencyMultiplier;
        }

        public UserData(int workers, float pollution, float currency, string cityName, int power, float pollutionMultiplier, float currencyMultiplier)
        {
            this.workers = workers;
            this.pollution = pollution;
            this.currency = currency;
            this.cityName = cityName;
            this.power = power;
            this.pollutionMultiplier = pollutionMultiplier;
            this.currencyMultiplier = currencyMultiplier;
        }
    }
}
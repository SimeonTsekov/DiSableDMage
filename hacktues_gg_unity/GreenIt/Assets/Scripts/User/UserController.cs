using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Firebase.Firestore;
using UnityEngine;
using Utils;

namespace User
{
    public class UserController : MonoBehaviour

    {
        public static UserController Instance { get; private set; }
        public UserData UserData;
        public string userId;
        
        public List<BuildingData> buildings;

        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
            }

            DontDestroyOnLoad(gameObject);
            UserData = new UserData();
            buildings = new List<BuildingData>();
            userId = "";
        }

        private void Start()
        {
            InvokeRepeating(nameof(UpdateUserResources), 1f, 5f);
        }

        public void InitializeUser()
        {
            UserData = new UserData();
        }

        public async Task ReadUser()
        {
            UserData = await DbManager.Instance.ReadUserData();
        }

        public void UpdateUser()
        {
            DbManager.Instance.UpdateUser();
        }

        public void UpdateUserResources()
        {
            UserData.currency += UserData.currencyMultiplier;
            UserData.pollution += UserData.pollutionMultiplier;
            Debug.Log(UserData.currency + " : " + UserData.currencyMultiplier);
        }
        
        public Dictionary<string, object> GetUserDataDictionary()
        {
            Dictionary<string, object> data = new Dictionary<string, object>();

            data["building_count"] = buildings.Count;
            data["factory_count"] = buildings.FindAll(b => b.prefab.Equals("Factory")).Count;
            data["house_count"] = buildings.FindAll(b => b.prefab.Equals("House")).Count;
            data["money"] = UserData.currency;
            data["money_multiplier"] = UserData.currencyMultiplier;
            data["name"] = UserData.cityName;
            Debug.Log(data["name"]);
            data["pollution"] = UserData.pollution;
            data["pollution_multiplier"] = UserData.pollutionMultiplier;
            data["population"] = UserData.workers;
            data["power"] = UserData.power;
            data["power_multiplier"] = 0;
            data["updated_at"] = FieldValue.ServerTimestamp;
            
            return data;
        }
    }
}
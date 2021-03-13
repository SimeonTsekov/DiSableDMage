using User;
using Utils;
using Building;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;

namespace UI
{
    public class CurrencyValidationController : MonoBehaviour 
    {
        private Button button;
        private float price;
        private int energy;
        private int workers;

        void Awake()
        {
            button = gameObject.GetComponent<Button>();
        }
        
        void Start()
        {
            switch (button.name)
            {
                case "House":
                    price = Constants.housePrice;
                    energy = Constants.houseEnergy;
                    break;
                case "Factory":
                    price = Constants.factoryPrice;
                    energy = Constants.factoryEnergy;
                    workers = Constants.factoryWorkers;
                    break;
                case "WindTurbine":
                    price = Constants.turbinePrice;
                    workers = Constants.turbineWorkers;
                    energy = 0;
                    break;
                case "Tree":
                    price = Constants.treePrice;
                    energy = 0;
                    break;
                       
            }
        }
        
        void Update()
        {
            if(UserController.Instance.UserData.currency < price 
            || UserController.Instance.UserData.workers < workers
            || UserController.Instance.UserData.power < energy)
            {
                button.interactable = false;
            }
        }
    }
}
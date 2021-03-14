using User;
using Utils;
using Building;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Threading;

namespace UI
{
    public class CurrencyValidationController : MonoBehaviour 
    {
        private Button _button;
        private float _price;
        private int _energy;
        private int _workers;

        void Awake()
        {
            _button = gameObject.GetComponent<Button>();
        }
        
        void Start()
        {
            switch (_button.name)
            {
                case "House":
                    _price = Constants.housePrice;
                    _energy = Constants.houseEnergy;
                    break;
                case "Factory":
                    _price = Constants.factoryPrice;
                    _energy = Constants.factoryEnergy;
                    _workers = Constants.factoryWorkers;
                    break;
                case "WindTurbine":
                    _price = Constants.turbinePrice;
                    _workers = Constants.turbineWorkers;
                    _energy = 0;
                    break;
                case "Tree":
                    _price = Constants.treePrice;
                    _energy = 0;
                    break;
            }
        }
        
        void Update()
        {
            if(UserController.Instance.UserData.currency < _price 
            || UserController.Instance.UserData.workers < _workers
            || UserController.Instance.UserData.power < _energy)
            {
                _button.interactable = false;
            }
            else
            {
                _button.interactable = true;
            }
        }
    }
}
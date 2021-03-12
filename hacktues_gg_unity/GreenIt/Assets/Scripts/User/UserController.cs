using System.Collections.Generic;
using UnityEngine;
using Utils;

namespace User
{
    public class UserController : MonoBehaviour

    {
    public static UserController Instance { get; private set; }

    public int availableWorkers;
    public float pollution;
    public int currency;
    public string cityName;

    public float pollutionMod;
    public int currencyMod;
    public int workersMod;

    public List<BuildingData> buildings;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }

        buildings = new List<BuildingData>();
    }

    }
}
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using User;
using Utils;

public class GameStateController : MonoBehaviour
{
    public static GameStateController Instance { get; private set; }
    private Transform _camT;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        
        _camT = Camera.main.transform;
        _camT.Rotate(Vector3.right * -45);
    }
    
    public void SerializeBuildings(List<BuildingData> buildings)
    {
        string jsonBuildings = JsonUtility.ToJson(buildings);

        StreamWriter writer = new StreamWriter(Constants.jsonSaveFilePath);//takes absolute path
        writer.WriteLine(jsonBuildings);
    }

    /*public List<BuildingData> deSerializeBuilding()
    {
        return File.ReadAllText(Constants.jsonSaveFilePath);   
    }*/
    
    
    public void GenerateBuildingsJsonFile()
    {
        string buildingJson = JsonHelper.ToJson(UserController.Instance.buildings.ToArray());
        Debug.Log(buildingJson);
    }
}

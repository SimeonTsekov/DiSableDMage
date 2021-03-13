using System;
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
        LoadBuildings();
    }

    /*public void SerializeBuildings(List<BuildingData> buildings)
    {
        string jsonBuildings = JsonUtility.ToJson(buildings);

        StreamWriter writer = new StreamWriter(Constants.jsonSaveFilePath);//takes absolute path
        writer.WriteLine(jsonBuildings);
    }*/

    /*public List<BuildingData> deSerializeBuilding()
    {
        return File.ReadAllText(Constants.jsonSaveFilePath);   
    }*/

    public void SaveBuildings()
    {
        SaveSystem.SaveBuildingsInfo(UserController.Instance.buildings);
    }

    public void LoadBuildings()
    {
        if (SaveSystem.LoadBuildingsInfo() == null)
        {
            return;
        }
        
        var buildings = SaveSystem.LoadBuildingsInfo();
        UserController.Instance.buildings = buildings;
        
        foreach (var building in UserController.Instance.buildings)
        {
            Debug.Log(building.prefab);
            var prefab = Resources.Load(building.prefab) as GameObject;
            var previewer = prefab.GetComponent<PreviewObj>();

            previewer.BuildOnPosition(new Vector3(building.buildingTransform.positionX,
                    building.buildingTransform.positionY,
                    building.buildingTransform.positionZ),
                new Quaternion(building.buildingTransform.rotationX,
                    building.buildingTransform.rotationY,
                    building.buildingTransform.rotationZ,
                    building.buildingTransform.rotationW));
        }
    }
    
    public void GenerateBuildingsJsonFile()
    {
        string buildingJson = JsonHelper.ToJson(UserController.Instance.buildings.ToArray());
        Debug.Log(buildingJson);
    }
}

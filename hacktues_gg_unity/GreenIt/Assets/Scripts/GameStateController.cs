using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Firebase.Extensions;
using Firebase.Functions;
using UI;
using UnityEngine;
using User;
using Utils;

public class GameStateController : MonoBehaviour
{
    public static GameStateController Instance { get; private set; }
    private Transform _camT;
    public bool loading;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        
        _camT = Camera.main.transform;
        _camT.Rotate(Vector3.right * -45);
        loading = true;
        LoadBuildings();
    }

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
        
        foreach (var building in UserController.Instance.buildings.ToList())
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

        loading = false;
    }
    
    public void GenerateBuildingsJsonFile()
    {
        string buildingJson = JsonHelper.ToJson(UserController.Instance.buildings.ToArray());
        Debug.Log(buildingJson);
    }

    public void EndSession()
    {
        var dict = new Dictionary<string, object> {["isActive"] = true};

        var function = FirebaseFunctions.DefaultInstance.GetHttpsCallable("updateUnityClientState");
        function.CallAsync(dict).ContinueWith(response =>
        {
            Debug.Log("response = " + response.Result.Data);
 
            if (response.IsFaulted || response.IsCanceled)
            {
                Firebase.FirebaseException e = response.Exception.Flatten().InnerExceptions[0] as Firebase.FirebaseException;
                FunctionsErrorCode error = (FunctionsErrorCode)e.ErrorCode;
 
                Debug.LogError("Fault!");
                Debug.Log("FunctionsErrorCode! = " + error);
            }
            else
            {
                string returnedName = response.Result.Data.ToString();
                if (returnedName == name)
                {
                    //Name already exists in database
                }
                else if (string.IsNullOrEmpty(returnedName))
                {
                    //Name doesn't exist in database
                }
            }
        });
    }
}

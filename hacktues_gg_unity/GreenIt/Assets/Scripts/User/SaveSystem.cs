using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using UnityEditor;
using UnityEngine;
using Utils;

namespace User
{
    public static class SaveSystem
    {
        public static void SaveBuildingsInfo(List<BuildingData> buildings)
        {
            if (File.Exists(Constants.saveFilePath))
            {
                Debug.Log("exists");
                Debug.Log(Constants.saveFilePath);
                File.Delete(Constants.saveFilePath);
                Debug.Log(File.Exists(Constants.saveFilePath));
            }
                
            BinaryFormatter formatter = new BinaryFormatter();
            string path = Constants.saveFilePath;

            FileStream stream = new FileStream(path, FileMode.Create);

            formatter.Serialize(stream, buildings);
            stream.Close();
        }

        public static List<BuildingData> LoadBuildingsInfo()
        {
            if (File.Exists(Constants.saveFilePath))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                FileStream stream = new FileStream(Constants.saveFilePath, FileMode.Open);

                List<BuildingData> buildings = formatter.Deserialize(stream) as List<BuildingData>;
                stream.Close();

                return buildings;
            }
            else
            {
                return null;
            }
        }
    }
}
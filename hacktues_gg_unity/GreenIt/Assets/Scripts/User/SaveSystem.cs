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
            BinaryFormatter formatter = new BinaryFormatter();
            string path = Constants.saveFilePath + UserController.Instance.userId + ".bin";

            FileStream stream = new FileStream(path, FileMode.Create);

            formatter.Serialize(stream, buildings);
            stream.Close();
        }

        public static List<BuildingData> LoadBuildingsInfo()
        {
            Debug.Log(File.Exists(Constants.saveFilePath + UserController.Instance.userId + ".bin"));
            if (File.Exists(Constants.saveFilePath + UserController.Instance.userId + ".bin"))
            {
                BinaryFormatter formatter = new BinaryFormatter();
                FileStream stream = new FileStream(Constants.saveFilePath + UserController.Instance.userId + ".bin", FileMode.Open);

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
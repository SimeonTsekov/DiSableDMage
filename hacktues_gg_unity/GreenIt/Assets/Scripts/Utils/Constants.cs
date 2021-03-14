using System.IO;
using UnityEngine;

namespace Utils
{
	public class Constants
	{
		public static readonly float CameraSpeed = 10.0f;
		public static int ScreenBoundary = 1;
		
		//User initialization constants
		public static readonly float basePollution = 0.0f;
		public static readonly int baseCurrency = 200;
		public static readonly int baseWorkers = 5;
		public static readonly float baseCurrencyMultiplier = 0.2f;
		public static readonly int basePollutionMultiplier = 0;
		public static string saveFilePath = Application.persistentDataPath;
		public static readonly int basePower = 0;
		
		//House constants
		public static readonly float housePrice = 50f;
		public static readonly int houseWorkers = -2;
		public static readonly int houseEnergy = 2;
		public static readonly float houseCurrencyMultiplier = 0.2f;
		public static readonly float housePollutionMultiplier = 0.2f;
		
		//Factory constants
		public static readonly float factoryPrice = 200f;
		public static readonly int factoryWorkers = 10;
		public static readonly int factoryEnergy = 10;
		public static readonly float factoryCurrencyMultiplier = 1f;
		public static readonly float factoryPollutionMultiplier = 1f;
		
		//Tree constants
		public static readonly float treePrice = 10f;
		public static readonly int treeWorkers = 0;
		public static readonly float treePollutionMultiplier = -0.2f;
		
		//Turbine constants
		public static readonly float turbinePrice = 100f;
		public static readonly int turbineWorkers = 2;
		public static readonly int turbineEnergy = 5;
	}
}
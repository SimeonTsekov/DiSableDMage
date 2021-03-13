using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using Firebase;
using Firebase.Firestore;
using Firebase.Storage;
using UnityEngine;
using UnityEngine.Networking;
using User;

public class DbManager : MonoBehaviour
{
	public static DbManager Instance { get; private set; }
	private DocumentReference _reference;
	private FirebaseApp _app;
	private FirebaseFirestore _db;

	private void Awake()
	{
		if (Instance == null)
		{
			Instance = this;
		}

		DontDestroyOnLoad(gameObject);
		_app = FirebaseApp.DefaultInstance;
		_db = FirebaseFirestore.DefaultInstance;
	}

	public async Task<UserData> ReadUserData()
	{
		UserData userData = null;

		await _db.Collection("cities")
			.Document(UserController.Instance.userId)
			.GetSnapshotAsync()
			.ContinueWith(user =>
			{
				userData = new UserData(user.Result.GetValue<int>("population"),
					user.Result.GetValue<float>("pollution"),
					user.Result.GetValue<float>("money"),
					user.Result.GetValue<string>("name"),
					user.Result.GetValue<int>("power"),
					user.Result.GetValue<float>("pollution_multiplier"),
					user.Result.GetValue<float>("money_multiplier"));
			});

		Debug.Log(userData.cityName);
		
		return userData;
	}

	public async void UpdateUser()
	{
		await _db.Collection("cities")
			.Document(UserController.Instance.userId)
			.SetAsync(UserController.Instance.GetUserDataDictionary());
	}

}
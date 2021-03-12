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
	private StorageReference _storage;
	private FirebaseFirestore _db;

	private void Awake()
	{
		if (Instance == null)
		{
			Instance = this;
		}

		DontDestroyOnLoad(gameObject);
		_app = FirebaseApp.DefaultInstance;
		_storage = FirebaseStorage.DefaultInstance.RootReference;
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

	async void ReadConfiguration()
	{
		var childReference = _storage.Child("/cities/" + PlayerPrefs.GetString("UserId"));
		var cityConfigurationURL = await childReference.GetDownloadUrlAsync();

		StartCoroutine(GetText(cityConfigurationURL.AbsolutePath));
	}

	async void WriteConfiguration()
	{
		var childReference = _storage.Child("/cities/" + PlayerPrefs.GetString("UserId"));
		childReference.PutFileAsync("");
	}
	
	IEnumerator GetText(string url) {
		UnityWebRequest www = UnityWebRequest.Get(url);
		yield return www.SendWebRequest();
 
		if (www.result != UnityWebRequest.Result.Success) {
			Debug.Log(www.error);
		}
		else {
			// Show results as text
			Debug.Log(www.downloadHandler.text);
		}
	}

}
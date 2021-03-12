using System.Collections;
using System.Collections.Generic;
using Firebase;
using Firebase.Firestore;
using Firebase.Storage;
using UnityEngine;
using UnityEngine.Networking;

public class DbManager : MonoBehaviour
{
	public static DbManager Instance { get; private set; }
	private DocumentReference _reference;
	private FirebaseApp _app;
	private StorageReference _storage;

	private void Awake()
	{
		if (Instance == null)
		{
			Instance = this;
		}

		DontDestroyOnLoad(gameObject);
		_app = FirebaseApp.DefaultInstance;
		_storage = FirebaseStorage.DefaultInstance.RootReference;
	}

	private void Start()
	{
		//Call();
	}

	async void Call()
	{
		var db = FirebaseFirestore.DefaultInstance;
		_reference = db.Collection("B R U H").Document("b r u h");

		var bruh = new Dictionary<string, string>
		{
			{"B R U H", "b r u h"}
		};

		await _reference.SetAsync(bruh);
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
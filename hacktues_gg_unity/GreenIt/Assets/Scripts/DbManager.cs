using System.Collections.Generic;
using Firebase;
using Firebase.Firestore;
using UnityEngine;

public class DbManager : MonoBehaviour
{
	public static DbManager Instance { get; private set; }
	private DocumentReference _reference;
	private FirebaseApp _app;

	private void Awake()
	{
		if (Instance == null)
		{
			Instance = this;
		}

		_app = FirebaseApp.DefaultInstance;
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
}
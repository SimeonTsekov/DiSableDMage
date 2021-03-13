using System.Collections;
using Firebase.Storage;
using UnityEngine;
using UnityEngine.Networking;
using User;
using Utils;

public class FirebaseStorageManager : MonoBehaviour
{
        
    public static FirebaseStorageManager Instance { get; private set; }
    private StorageReference _storage;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }

        DontDestroyOnLoad(gameObject);
        _storage = FirebaseStorage.DefaultInstance.RootReference;
    }
        
    public async void ReadConfiguration()
    {
        var childReference = _storage.Child("/cities/" + PlayerPrefs.GetString("UserId"));
        await childReference.GetFileAsync(Constants.saveFilePath + UserController.Instance.userId + ".bin");
    }

    public async void WriteConfiguration()
    {
        var childReference = _storage.Child("/cities/" + PlayerPrefs.GetString("UserId"));
        await childReference.PutFileAsync(Constants.saveFilePath + UserController.Instance.userId + ".bin");
    }
}
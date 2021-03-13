using System.Collections;
using Firebase.Storage;
using UnityEngine;
using UnityEngine.Networking;
using Utils;

namespace User
{
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
        
        async void ReadConfiguration()
        {
            var childReference = _storage.Child("/cities/" + PlayerPrefs.GetString("UserId"));
            var cityConfigurationURL = await childReference.GetDownloadUrlAsync();

            StartCoroutine(GetText(cityConfigurationURL.AbsolutePath));
        }

        async void WriteConfiguration()
        {
            var childReference = _storage.Child("/cities/" + PlayerPrefs.GetString("UserId"));
            await childReference.PutFileAsync(Constants.saveFilePath);
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
}
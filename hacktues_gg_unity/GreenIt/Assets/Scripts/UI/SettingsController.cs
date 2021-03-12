using System;
using Firebase.Auth;
using UnityEngine;
using UnityEngine.SceneManagement;
using User;

namespace UI
{
    public class SettingsController : MonoBehaviour
    {
        public GameObject settingsMenu;
        private bool _settingsMenuActive;

        private void Awake()
        {
            _settingsMenuActive = false;
            settingsMenu.SetActive(_settingsMenuActive);
        }

        private void Update()
        {
            if(Input.GetKeyDown(KeyCode.Escape))
            {
                Debug.Log(UserController.Instance.userId);
                OnSettings();
            }
        }

        public void OnSettings()
        {
            _settingsMenuActive = !_settingsMenuActive;
            settingsMenu.SetActive(_settingsMenuActive);
        }

        public void OnSignOut()
        {
            UserController.Instance.UpdateUser();
            PlayerPrefs.SetString("UserId", "LMAO");
            FirebaseAuth.DefaultInstance.SignOut();
            SceneManager.LoadScene("LogIn");
        }
        
        public void OnExit()
        {
            PlayerPrefs.SetString("UserId", UserController.Instance.userId);
            PlayerPrefs.Save();
            UserController.Instance.UpdateUser();
            GameStateController.Instance.GenerateBuildingsJsonFile();
            Application.Quit();
        }
    }
}
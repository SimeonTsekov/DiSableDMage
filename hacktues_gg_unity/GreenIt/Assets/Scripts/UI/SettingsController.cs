using System;
using Firebase.Auth;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using User;

namespace UI
{
    public class SettingsController : MonoBehaviour
    {
        public static SettingsController Instance { get; private set; }
        public GameObject settingsMenu;
        public GameObject cityNameMenu;
        public GameObject gameOverMenu;
        public TMP_InputField cityNameInput;
        private bool _settingsMenuActive;

        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
            }
            
            if (!UserController.Instance.UserData.cityName.Equals(""))
            {
                cityNameMenu.SetActive(false);
            }
            
            _settingsMenuActive = false;
            settingsMenu.SetActive(_settingsMenuActive);
            gameOverMenu.SetActive(false);
        }

        private void Update()
        {
            if(Input.GetKeyDown(KeyCode.Escape))
            {
                OnSettings();
            }
            
            if ((int)UserController.Instance.UserData.pollution >= 100) 
            {
                gameOverMenu.SetActive(true);
            }
        }

        public void OnSettings()
        {
            _settingsMenuActive = !_settingsMenuActive;
            settingsMenu.SetActive(_settingsMenuActive);
        }

        public void OnConfirmName()
        {
            Debug.Log(cityNameInput.text);
            UserController.Instance.UserData.cityName = cityNameInput.text;
            Debug.Log(UserController.Instance.UserData.cityName);
            cityNameMenu.SetActive(false);
        }
        
        public void OnSignOut()
        {
            UserController.Instance.UpdateUser();
            PlayerPrefs.SetString("UserId", "LMAO");
            FirebaseAuth.DefaultInstance.SignOut();
            FirebaseStorageManager.Instance.WriteConfiguration();
            GameStateController.Instance.EndSession();
            SceneManager.LoadScene("LogIn");
        }
        
        public void OnExit()
        {
            PlayerPrefs.SetString("UserId", UserController.Instance.userId);
            PlayerPrefs.Save();
            UserController.Instance.UpdateUser();
            GameStateController.Instance.SaveBuildings();
            FirebaseStorageManager.Instance.WriteConfiguration();
            GameStateController.Instance.EndSession();
            Application.Quit();
        }
    }
}
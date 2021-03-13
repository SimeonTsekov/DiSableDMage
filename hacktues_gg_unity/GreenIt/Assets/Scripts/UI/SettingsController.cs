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
        public GameObject settingsMenu;
        public GameObject cityNameMenu;
        public TMP_InputField cityNameInput;
        private bool _settingsMenuActive;

        private void Awake()
        {
            if (!UserController.Instance.UserData.cityName.Equals(""))
            {
                cityNameMenu.SetActive(false);
            }
            _settingsMenuActive = false;
            settingsMenu.SetActive(_settingsMenuActive);
        }

        private void Update()
        {
            if(Input.GetKeyDown(KeyCode.Escape))
            {
                OnSettings();
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
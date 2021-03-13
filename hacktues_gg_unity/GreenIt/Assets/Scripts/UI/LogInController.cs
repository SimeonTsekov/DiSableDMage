using System;
using System.Threading.Tasks;
using Authentication;
using Firebase.Auth;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using User;

namespace UI
{
	public class LogInController : MonoBehaviour
	{
		private string _email;
		private string _password;
		private bool loadFlag;

		public TMP_InputField emailField;
		public TMP_InputField passwordField;

		public GameObject logInMenu;

		private async void Start()
		{
			loadFlag = false;
			PlayerPrefs.SetString("UserId", "LMAO");
			FirebaseAuth.DefaultInstance.SignOut();
			
			if (PlayerPrefs.GetString("UserId") != null && !PlayerPrefs.GetString("UserId").Equals("LMAO"))
			{
				logInMenu.SetActive(false);
				UserController.Instance.userId = FirebaseAuth.DefaultInstance.CurrentUser.UserId;
				await UserController.Instance.ReadUser();
				SceneManager.LoadScene("MainScene");
			}
		}

		private void Update()
		{
			if (loadFlag)
			{
				SceneManager.LoadScene("MainScene");
			}
		}

		public async void OnSignIn()
		{
			_email = emailField.text;
			_password = passwordField.text;
			
			logInMenu.SetActive(false);
			var id = await LogInAuthenticationController.Instance.Authenticate(_email, _password);
			PlayerPrefs.SetString("UserId", id);
			Debug.Log("PlayerPrefs : " + PlayerPrefs.GetString("UserId"));
			await UserController.Instance.ReadUser().ContinueWith(userData =>
			{
				loadFlag = true;
			});
		}

		public void OnLoadSignUp()
		{
			SceneManager.LoadScene("Register");
		}
		
		public void OnExit()
		{
			Application.Quit();
		}
	}
}
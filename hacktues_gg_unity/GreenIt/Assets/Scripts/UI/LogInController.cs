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

		public TMP_InputField emailField;
		public TMP_InputField passwordField;

		public GameObject logInMenu;

		private async void Start()
		{
			if (PlayerPrefs.GetString("UserId") != null && !PlayerPrefs.GetString("UserId").Equals("LMAO"))
			{
				logInMenu.SetActive(false);
				UserController.Instance.userId = FirebaseAuth.DefaultInstance.CurrentUser.UserId;
				await UserController.Instance.ReadUser();
				SceneManager.LoadScene("MainScene");
			}
		}

		public async void OnSignIn()
		{
			_email = emailField.text;
			_password = passwordField.text;
			
			logInMenu.SetActive(false);
			LogInAuthenticationController.Instance.Authenticate(_email, _password);
			await UserController.Instance.ReadUser();
			SceneManager.LoadScene("MainScene");
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
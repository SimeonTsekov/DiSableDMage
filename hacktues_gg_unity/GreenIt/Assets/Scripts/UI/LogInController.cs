using System;
using Authentication;
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

		private void Awake()
		{
			if (PlayerPrefs.GetString("UserId") != null && !PlayerPrefs.GetString("UserId").Equals("LMAO"))
			{
				SceneManager.LoadScene("MainScene");
			}
		}

		public void OnSignIn()
		{
			_email = emailField.text;
			_password = passwordField.text;
			
			LogInAuthenticationController.Instance.Authenticate(_email, _password);
			UserController.Instance.ReadUser();
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
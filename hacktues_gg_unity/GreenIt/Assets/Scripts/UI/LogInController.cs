using System;
using Authentication;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

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
			if (PlayerPrefs.GetString("UserId") != null)
			{
				SceneManager.LoadScene("MainScene");
			}
		}

		public void OnSignIn()
		{
			_email = emailField.text;
			_password = passwordField.text;
			
			LogInAuthenticationController.Instance.Authenticate(_email, _password);
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
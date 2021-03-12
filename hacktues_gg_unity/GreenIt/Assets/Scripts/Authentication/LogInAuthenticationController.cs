using Firebase.Auth;
using UnityEngine;

namespace Authentication
{
	public class LogInAuthenticationController : MonoBehaviour
	{
		public static LogInAuthenticationController Instance { get; private set; }
		private FirebaseAuth _auth;

		private void Awake()
		{
			if (Instance == null)
			{
				Instance = this;
			}

			InitializeFirebaseAuth();
		}

		public void Authenticate(string email, string password)
		{
			_auth.SignInWithEmailAndPasswordAsync(email, password).ContinueWith(task => {
				if (task.IsCanceled) {
					Debug.LogError("SignInWithEmailAndPasswordAsync was canceled.");
					return;
				}
				if (task.IsFaulted) {
					Debug.LogError("SignInWithEmailAndPasswordAsync encountered an error: " + task.Exception);
					return;
				}

				var newUser = task.Result;
				Debug.LogFormat("User signed in successfully: {0} ({1})",
					newUser.DisplayName, newUser.UserId);
			});
		}

		private void InitializeFirebaseAuth()
		{
			_auth = FirebaseAuth.DefaultInstance;
			_auth.StateChanged += AuthStateChanged;
			AuthStateChanged(this, null);
		}

		private void AuthStateChanged(object sender, System.EventArgs eventArgs)
		{
			if (_auth.CurrentUser != null)
			{
				var user = _auth.CurrentUser;
				Debug.Log("Signed in " + user.UserId);
			}
			else
			{
				Debug.Log("Signed out ");
			}
		}
	}
}
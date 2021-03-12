using Firebase.Auth;
using UnityEngine;

namespace Authentication
{
    public class SignUpAuthenticationController : MonoBehaviour
    {
		public static SignUpAuthenticationController Instance { get; private set; }
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
			_auth.CreateUserWithEmailAndPasswordAsync(email, password).ContinueWith(task => {
				if (task.IsCanceled) {
					Debug.LogError("CreateUserWithEmailAndPasswordAsync was canceled.");
					return;
				}
				if (task.IsFaulted) {
					Debug.LogError("CreateUserWithEmailAndPasswordAsync encountered an error: " + task.Exception);
					return;
				}

				// Firebase user has been created.
				FirebaseUser newUser = task.Result;
				Debug.LogFormat("Firebase user created successfully: {0} ({1})",
					newUser.DisplayName, newUser.UserId);
				PlayerPrefs.SetString("UserId", newUser.UserId);
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
		}    }
}
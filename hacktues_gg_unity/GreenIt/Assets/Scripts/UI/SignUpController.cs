using Authentication;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using User;

namespace UI
{
    public class SignUpController : MonoBehaviour
    {
        private string _email;
        private string _password;
        private string _confirmedPassword;

        public TMP_InputField emailField;
        public TMP_InputField passwordField;
        public TMP_InputField confirmPasswordField;
		

        public void OnSignUp()
        {
            _email = emailField.text;
            _password = passwordField.text;
            _confirmedPassword = confirmPasswordField.text;

            if (_confirmedPassword.Equals(_password))
            {
                SignUpAuthenticationController.Instance.Authenticate(_email, _password);
                UserController.Instance.InitializeUser();
                SceneManager.LoadScene("MainScene");
            }
        }

        public void OnExit()
        {
            Application.Quit();
        }    
    }
}
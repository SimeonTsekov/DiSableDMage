using UnityEngine;
using UnityEngine.UI;

namespace User.UserInformationLabels
{
    public class PowerLabelController : MonoBehaviour
    {
        private Text _txt;

        private void Start()
        {
            _txt = GetComponent<Text>();
            _txt.text = "";
        }

        private void Update()
        {
            _txt.text = UserController.Instance.UserData.power.ToString();
        }
    }
}
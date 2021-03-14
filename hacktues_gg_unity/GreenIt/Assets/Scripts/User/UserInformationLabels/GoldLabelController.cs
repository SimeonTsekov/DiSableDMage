using UnityEngine;
using UnityEngine.UI;

namespace User.UserInformationLabels
{
    public class GoldLabelController : MonoBehaviour
    {
        private Text _txt;

        private void Start()
        {
            _txt = GetComponent<Text>();
            _txt.text = "";
        }

        private void Update()
        {
            _txt.text = UserController.Instance.UserData.currency.ToString("00.00");
        }
    }
}
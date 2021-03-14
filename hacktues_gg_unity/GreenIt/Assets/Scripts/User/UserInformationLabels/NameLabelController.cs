using UnityEngine;
using UnityEngine.UI;

namespace User.UserInformationLabels
{
    public class NameLabelController : MonoBehaviour
    {
        private Text _txt;

        private void Start()
        {
            _txt = GetComponent<Text>();
            _txt.text = UserController.Instance.UserData.cityName;
        }
    }
}
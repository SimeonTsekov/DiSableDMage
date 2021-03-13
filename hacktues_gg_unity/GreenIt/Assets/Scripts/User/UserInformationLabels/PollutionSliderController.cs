using UnityEngine;
using UnityEngine.UI;

namespace User.UserInformationLabels
{
    public class PollutionSliderController : MonoBehaviour
    {
        private Slider _slider;
        
        private void Start()
        {
            _slider = GetComponent<Slider>();
            _slider.value = 0;
        }

        private void Update()
        {
            _slider.value = UserController.Instance.UserData.pollution;
        }
    }
}
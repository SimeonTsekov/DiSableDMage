using UnityEngine;

public class GameStateController : MonoBehaviour
{
    public static GameStateController Instance { get; private set; }
    private Transform _camT;
    
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        
        _camT = Camera.main.transform;
        _camT.Rotate(Vector3.right * -45);
    }
}

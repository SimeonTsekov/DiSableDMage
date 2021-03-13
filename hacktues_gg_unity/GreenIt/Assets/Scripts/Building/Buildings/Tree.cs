using User;
using Utils;

namespace Building.Buildings
{
    public class Tree : BaseBuilding
    {
        private float _pollutionMultiplier;

        private void Awake()
        {
            User = UserController.Instance;
            Price = Constants.treePrice;
            WorkersRequired = Constants.treeWorkers;
            _pollutionMultiplier = Constants.treePollutionMultiplier;
            Name = "Tree";
            OnBuild();
        }
        
        protected override void UpdateMultipliers()
        {
            User.UserData.pollutionMultiplier -= _pollutionMultiplier;
        }
    }
}
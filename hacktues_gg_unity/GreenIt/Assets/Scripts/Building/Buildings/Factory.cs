﻿namespace Building.Buildings
{
    public class Factory : BaseBuilding
    {
        public int requiredWorkers;
        public int requiredEnergy;
        public float emissionModifier;
        public float moneyModifier;
        protected override void UpdateMultipliers()
        {
            throw new System.NotImplementedException();
        }
    }
}
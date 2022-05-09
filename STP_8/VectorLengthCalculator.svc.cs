using System;
using System.ServiceModel;
using System.ServiceModel.Activation;

namespace STP_8
{
    [ServiceContract(Namespace = "STP_8")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class VectorLengthCalculator
    {
        [OperationContract]
        public double CalculateVectorLength(double x, double y, double z)
        {
            return Math.Sqrt(
                Math.Pow(x,2) + 
                Math.Pow(y,2) + 
                Math.Pow(z,2) 
            );
        }

    }
}

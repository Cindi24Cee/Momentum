using System;
using System.Collections.Generic;
using System.Text;

namespace Data_Access_Layer.Library.ViewModels
{
   public class uspVehicle
    {

        public int CarNo { get; set; }
        public string CarName { get; set; }
        public string  CarLicenseNo { get; set; }
        public  string  CarMake { get; set; }
        public string FuelType { get; set; }
        public string Color { get; set; }
        public string Power { get; set; }
        public string Mileage { get; set; }

        public  int CarModelYear { get; set; }
        public int DoorNo { get; set;  }
        public int SeatNo { get; set; }
       

        public int  BranchNo { get; set; }
        public int VehicleTypeID { get; set;  }
        public int BrandNo { get; set; }
        public Byte Image { get; set; }

        public double RentalPrice { get; set; }
    }
}

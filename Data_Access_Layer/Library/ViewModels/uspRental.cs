using System;
using System.Collections.Generic;
using System.Text;

namespace Data_Access_Layer.Library.ViewModels
{
   public class uspRental
    {   
        public int CarNo { get; set; }
        public int CustomerID { get; set; }
        public DateTime DateReserved { get; set; }
        public DateTime DateReturned { get; set; }

        public int EmployeeID { get; set;  }
    }
}

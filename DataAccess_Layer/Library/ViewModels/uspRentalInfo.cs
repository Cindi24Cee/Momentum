using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess_Layer.Library.ViewModels
{
   public class uspRentalInfo
    {

        public int CarNo { get; set; }
        public int CustomerID { get;  set; }

        public DateTime DateReserved { get; set; }
        public DateTime DateReturned { get; set; }
        public  string CustomerName { get; set; }

        public string EmailAddress { get; set; }
        public string PhoneNo { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Text;

namespace Data_Access_Layer.Library.ViewModels
{
    class uspCustomer
    {

        public int CustomerNo { get; set; }
        public string CustomerName { get; set; }
        public string PhoneNo { get; set; }
        public string Password { get; set; }

        public string EmailAddress { get; set; }
        public string HomeAddress { get; set; }

        public string WorkAddress { get; set; }

        public int Age { get; set; }

      public string IdNo { get; set;}
        public DateTime DateDriversLicenseIssued { get; set; }

        public DateTime DateDriversLicenseExpire { get; set; }
    }
}

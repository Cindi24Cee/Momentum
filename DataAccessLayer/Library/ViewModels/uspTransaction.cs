using System;
using System.Collections.Generic;
using System.Text;

namespace Data_Access_Layer.Library.ViewModels
{
   public class uspTransaction
    {

        public int TransactionID { get; set; }
        public int CarNo { get; set; }
        public int  PaymentID { get; set; }
        public int CustomerNo { get; set; }
        public string Status { get; set; }

        public DateTime TimeStamp { get; set; }
    }
}

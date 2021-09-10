using System;
using System.Collections.Generic;
using System.Text;

namespace Data_Access_Layer.Library.ViewModels
{
  public   class uspPayment
    {

        public int PaymentID { get; set; }
        public int Amount { get; set; }

        public DateTime TimeStamp { get; set; }
    }
}

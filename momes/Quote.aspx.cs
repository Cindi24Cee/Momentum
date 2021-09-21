using Syncfusion.HtmlConverter;
using Syncfusion.Pdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace momes
{
    public partial class Quote : System.Web.UI.Page
    {
      public void Page_Load(object sender, EventArgs e)
        {


            lblPickUpL.Text= (string)Session["Location_Pick_Up"];
            lblDropOffL.Text=(string)Session["Location_Drop_Off"];
            lblPickUpDate.Text=(string)Session["Date_Time_Pick_Up"];
            lblDropOffD.Text=(string)Session["Date_Time_Off"];
          
            
            //int Price = Convert.ToInt32(Session["Price"].ToString());

            int deposit = 3500;
            int contractFee = 70;
            int Admin_and_Prep_Fee = 130;
         
            //  int Gross_Total = No_Of_Days + Price;
            double TotalPrice = deposit + contractFee + Admin_and_Prep_Fee;

            lblGrandTotal.Text = TotalPrice.ToString();


            DateTime date1 = Convert.ToDateTime(lblPickUpDate.Text);
            DateTime date2 = Convert.ToDateTime(lblDropOffD.Text);

            int dateiff = ((TimeSpan)(date2 - date1)).Days;

           lblNumberOfDays.Text = dateiff.ToString();
        }


        public double TotalCost()
        {
            int deposit = 3500;
            int contractFee = 70;
            int Admin_and_Prep_Fee = 130;
            // int Gross_Total = No_Of_Days + Price;
            double TotalPrice = deposit + contractFee + Admin_and_Prep_Fee;

            return TotalPrice;
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Login1.aspx");
            }catch(Exception ex)
            {
                ex.ToString();
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {





            try
            {

                /*
                 * Session["
                 * 
                 * 
                 * 
                 * 
                 * 
                 * 
                 * 
                 * */
                Response.Redirect("Send_Quotees.aspx");

            }


            catch(Exception ex)
            {
                ex.ToString();
            }
        }
    }
}
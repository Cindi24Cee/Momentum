using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;
using System.Data.SqlClient;

namespace momes
{
    public partial class Login1 : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string pick_up_location = (string)Session["Location_Pick_Up"];
                string drop_off_location = (string)Session["Location_Drop_Off"];
                string date_time_pick_up = (string)Session["Date_Time_Pick_Up"];
                string date_time_drop_off = (string)Session["Date_Time_Off"];
                string carName = "Mazda";
                int noOfdays = Convert.ToInt32((string)Session["Number_Of_Days"]);
                int total = Convert.ToInt32((string)Session["Total_Price"]);
                int grandTotal = Convert.ToInt32((string)Session["Grand_Total"]);
            } catch(Exception ex)
            {
                ex.ToString();
                Response.Redirect("Error_page.aspx");
            }
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {


            
                try
                {
                    da.AuthenticateUser(txtEmail.Text.Trim(), txtPassword.Text.Trim());
                
                
                    Response.Redirect("Confirm_Booking.aspx");
                }
                catch (SqlException ex)
                {

                    ex.ToString();
                    Failed();
                }

            
        }

        protected void Success()
        {
            string message = "Success.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }


        protected void Failed()
        {
            string message = "Incorrect Email Address And Password.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "FailMessage", script, true);
        }
    }
}
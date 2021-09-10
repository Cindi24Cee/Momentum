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

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {



            try
            {
                da.AuthenticateUser(txtEmail.Text.Trim(), txtPassword.Text.Trim());
                txtEmail.Text = String.Empty;
                txtPassword.Text = String.Empty;

               // Session["CustomerName"] = lblCustomerName.Text;
                Response.Redirect("Search.aspx");

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
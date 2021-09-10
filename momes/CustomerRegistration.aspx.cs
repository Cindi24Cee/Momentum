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
    public partial class CustomerRegistration : System.Web.UI.Page
    {

        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddCustomer(txtName.Text, txtPhone.Text, txtPassword.Text, txtEmail.Text, txtHome.Text, txtWork.Text, int.Parse(txtAge.Text), txtID.Text, txtDI.Text, txtEx.Text);
                
                
                Success();

                Response.Redirect("Login.aspx");
                //Response.Redirect("test1.aspx");
                txtName.Text = String.Empty;
                txtID.Text = String.Empty;
                txtPhone.Text = String.Empty;
                txtEmail.Text = String.Empty;
                txtHome.Text = String.Empty;
                txtWork.Text = String.Empty;
                txtAge.Text = String.Empty;
                txtPassword.Text = String.Empty;

            }
            catch (Exception ex)
            {
                Failed();
                ex.ToString();
            }
        }

        protected void Success()
        {
            string message = "Successfully Registered.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }


        protected void Failed()
        {
            string message = "Please Retry.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "FailMessage", script, true);
        }

    }
   
}
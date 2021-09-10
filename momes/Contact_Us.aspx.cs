using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;

namespace momes
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddContact_Click(object sender, EventArgs e)
        {


            try
            {
                da.AddEnquiry(txtName.Text, txtEmail.Text, txtMobile.Text, txtSubject.Text, txtMessage.Text);
                txtName.Text = String.Empty;
                txtEmail.Text = String.Empty;
                txtMobile.Text = String.Empty;
                txtSubject.Text = String.Empty;
                txtMessage.Text = String.Empty;
                Success();
            }
            catch (Exception ex)
            {
                Failed();
                ex.ToString();
            }
        }

        protected void Success()
        {
            string message = "Enqueries Sent, Thank You.";
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
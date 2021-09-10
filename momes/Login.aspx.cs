using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Data_Access_Layer;

namespace momes
{
    public partial class Login : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {

            if (!FileUpload1.HasFile)
            {
                Label1.Visible = true;
                Label1.Text = "Please Select Image File";
            }
            else
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];


                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);


                try
                {

                    da.AddVehicleImage(pic, txtEmail.Text);
               /* da.AuthenticateUSer(txtEmail.Text, txtPassword.Text);
                txtEmail.Text = String.Empty;
                txtPassword.Text = String.Empty;*/
                Success();

                } catch (SqlException ex)
                {
                    ex.ToString();
                    Failed();
                }

            }
        }

        protected void Success()
        {
            string message = "Your details have been saved successfully.";
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
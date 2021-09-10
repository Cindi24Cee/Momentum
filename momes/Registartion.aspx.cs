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
    public partial class Registartion : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistaer_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddCustomer(txtName.Text, txtPhone.Text, txtPassword.Text, txtEmail.Text, txtHms.Text, txtWork.Text, int.Parse(txtAge.Text), txtID.Text, txtDI.Text, txtEx.Text);
                lblMessage.Text = "Successfully Inserted";
            }
            catch (SqlException ex)
            {
                lblMessage.Text = ex.ToString();
            }
        }
    }
}
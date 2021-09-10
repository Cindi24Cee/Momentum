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
    public partial class Manage_Vehicle_Type : System.Web.UI.Page
    {

        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                lstTypes.DataSource = da.GetVehicleType();
                lstTypes.DataBind();
            }
            this.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddVehicleType(txtType.Text);
                Success();
                txtType.Text = String.Empty;
                load();
            }catch(SqlException ex)
            {
                ex.ToString();
                Failed();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        public void load()
        {
            Response.Redirect(Request.RawUrl);
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
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
    public partial class Manage_Branches : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                grdBranch.DataSource = da.GetBranch();
                grdBranch.DataBind();


                lstBranches.DataSource = da.GetBranch();
                lstBranches.DataBind();

            }
            this.DataBind();
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddBranch(txtBranch.Text);
                Success();
                txtBranch.Text = String.Empty;

            }catch(SqlException ex)
            {
                ex.ToString();
                Failed();
            }
        }

        protected void grdBranch_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void grdBranch_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}
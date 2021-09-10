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
    public partial class Reservation : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlBranchDrop.DataSource = da.GetBranch();
                ddlBranchDrop.DataTextField = "BranchName";
                ddlBranchDrop.DataValueField = "BranchNo";
                ddlBranchDrop.DataBind();

                ddlBranchPick.DataSource = da.GetBranch();
                ddlBranchPick.DataTextField = "BranchName";
                ddlBranchPick.DataValueField = "BranchNo";
                ddlBranchPick.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
               // da.AddRentals()
            }
            catch(SqlException ex)
            {
                ex.ToString();
                throw;
            }
        }
    }
}
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
    public partial class Admin_Manage_Brand : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lstBrands.DataSource = da.GetBrand();
                lstBrands.DataTextField = "BrandName";
                lstBrands.DataValueField = "BrandNo";
                lstBrands.DataBind();
            }
            this.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                da.AddBrand(txtBrand.Text);
                txtBrand.Text = "";
            }
            catch(SqlException ex)
            {
                ex.ToString();
            }
        }

        protected void lstBrands_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
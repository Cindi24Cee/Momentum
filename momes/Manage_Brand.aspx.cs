using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;

namespace momes
{
    public partial class Manage_Brand : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                lstBrand.DataSource = da.GetBrand();
                lstBrand.DataBind();
            }
            this.DataBind();
        }
    }
}
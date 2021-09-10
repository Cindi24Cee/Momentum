using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;


namespace momes
{
    public partial class test : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                lstVehicle.DataSource = da.GetVehicle();
                lstVehicle.DataBind();
            }
            this.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;

namespace momes
{
    public partial class Homies : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Vehicle Type
                ddlVehicleType.DataSource = da.GetVehicleType();
                ddlVehicleType.DataTextField = "VehicleType";
                ddlVehicleType.DataValueField = "VehicleTypeID";
                ddlVehicleType.DataBind();

                ddlPick.DataSource = da.GetBranch();
                ddlPick.DataTextField = "BranchName";
                ddlPick.DataValueField = "BranchNo";
                ddlPick.DataBind();

                ddlDrop.DataSource = da.GetBranch();
                ddlDrop.DataTextField = "BranchName";
                ddlDrop.DataValueField = "BranchNo";
                ddlDrop.DataBind();

                
            }


           

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {

            Session["vehicle_type"] = ddlVehicleType.SelectedItem.Value;
            Session["Location_Pick_Up"] = ddlPick.SelectedItem.Text;
            Session["Location_Drop_Off"] = ddlDrop.SelectedItem.Text;
            Session["Date_Time_Pick_Up"] = txtPickupDate.Text;
            Session["Date_Time_Off"] = txtDropOffDate.Text;

            Response.Redirect("test1.aspx");
            try
            {
                Session["vehicle_type"] = ddlVehicleType.SelectedItem.Value;
                Response.Redirect("test1.aspx");
            }
            catch(Exception ex)
            {
               ex.ToString();
                //Response.Redirect("NotFound.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

               
              
                Response.Redirect("Search.aspx");
                da.Get_Vehicle_By_Type(int.Parse(ddlVehicleType.SelectedValue));
            }
            catch(Exception ex)
            {
                ex.ToString();
            }
        }
    }
    }
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;


namespace momes
{
    public partial class test1 : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

           
            lblID.Text = (string)Session["vehicle_type"];
            txtD.Enabled = false;
            txtP.Enabled = false;
            ddlBranchD.Enabled = false;
            ddlBranchP.Enabled = false;

            ddlBranchP.Text = (string)Session["Location_Pick_Up"];
            ddlBranchD.Text= (string)Session["Location_Drop-Off"];
            txtP.Text = (string)Session["Date_Time_Pick_Up"];
            txtD.Text = (string)Session["Date_Time_Off"];



            if (!Page.IsPostBack)
            {
                //Vehicle Brands
                ddlBrand.DataSource = da.GetBrand();
                ddlBrand.DataTextField = "BrandName";
                ddlBrand.DataValueField = "BrandNo";
                ddlBrand.DataBind();

                //Vehicle Type
                ddlVType.DataSource = da.GetVehicleType();
                ddlVType.DataTextField = "VehicleType";
                ddlVType.DataValueField = "VehicleTypeID";
                ddlVType.DataBind();


                ddlBranchP.DataSource = da.GetBranch();
                ddlBranchP.DataTextField = "BranchName";
                ddlBranchP.DataValueField = "BranchName";
                ddlBranchP.DataBind();

                ddlBranchD.DataSource = da.GetBranch();
                ddlBranchD.DataTextField = "BranchName";
                ddlBranchD.DataValueField = "BranchName";
                ddlBranchD.DataBind();

               // lstVehicle.DataSource = da.Get_Vehicle_By_Type(int.Parse(lblID.Text));
               // lstVehicle.DataBind();


                //Calculate date drop off and date pick up
            }



        }


   
        protected void btnReserve_Click(object sender, EventArgs e)
        {


            Session["Location_Pick_Up"] = ddlBranchP.Text;
            Session["Location_Drop-Off"] = ddlBranchD.Text;
           // Session["Car_ID"];
          //  Session["Car_Name"];
            Session["Date_Time_Pick_Up"] = txtP.Text;
            Session["Date_Time_Off"]= txtD.Text;

            Response.Redirect("Quote.aspx");
           
        }

        protected void lstVehicle_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void btnRent_Click(object sender, EventArgs e)
        {

            Session["Location_Pick_Up"] = ddlBranchP.SelectedValue;
            Session["Location_Drop_Off"] = ddlBranchD.SelectedValue;
            Session["Date_Pick_Up"] = txtP.Text;
            Session["Date_Drop_Off"] = txtD.Text;


        }

        protected void Success()
        {
            string message = "Success.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }

        protected void btnRentMe_Click(object sender, EventArgs e)
        {
           // Session["Car_ID"]
           //Session["Car_Name"]
            Session["Location_Pick_Up"] = ddlBranchP.SelectedValue;
            Session["Location_Drop_Off"] = ddlBranchD.SelectedValue;
            Session["Date_Pick_Up"] = txtP.Text;
            Session["Date_Drop_Off"] = txtD.Text;
        }
    }
}
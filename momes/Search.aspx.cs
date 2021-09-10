﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;

namespace momes
{
    public partial class Search : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Vehicle Brand
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

                lstVehicle.DataSource = da.GetVehicle();
                lstVehicle.DataBind();


                //Calculate date drop off and date pick up
            }
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            //Session["Car_Name"] = lblC.Text;
            Session["Location_Pick_Up"] = ddlBranchP.Text;
            Session["Location_Drop_Off"] = ddlBranchD.Text;
            Session["Date_Time_Pick_Up"] = txtP.Text;
            Session["Date_Time_Off"] = txtD.Text;



            DateTime pickDate = Convert.ToDateTime(txtP.Text);
            DateTime dropDate = Convert.ToDateTime(txtD.Text);

            // DateTime pickTime = Convert.ToDateTime(txtPickupTime.Text);
            //DateTime dropTime = Convert.ToDateTime(txtDropOffTime.Text);
            DateTime date = DateTime.Now;

            int result = DateTime.Compare(pickDate, dropDate);

            string resultMsg = " ";

            if ((result < 0 && date < pickDate))
            {
                //Success();
                Response.Redirect("test1.aspx");

            }

            else
            {
                // Response.Redirect("Homies.aspx");
                //Failed();
            }
            Response.Redirect("Quote.aspx");

        }

        protected void btnRent_Click(object sender, EventArgs e)
        {

           // Session["Car_Name"] = lblCar_Make.Text;
            Session["Location_Pick_Up"] = ddlBranchP.Text;
            Session["Location_Drop_Off"] = ddlBranchD.Text;
            Session["Date_Time_Pick_Up"] = txtP.Text;
            Session["Date_Time_Off"] = txtD.Text;

            Response.Redirect("Quote.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();
           
            Response.Redirect("Homies.aspx", true);
        }

        protected void lstVehicle_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Data_Access_Layer;
using System.IO;

namespace momes
{
    public partial class VehicleRegistration : System.Web.UI.Page
    {

        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                //Vehicle Brand
                ddlBrand.DataSource = da.GetBrand();
                ddlBrand.DataTextField = "BrandName";
                ddlBrand.DataValueField = "BrandNo" ;
                ddlBrand.DataBind();

                //Vehicle Type
                ddlVType.DataSource = da.GetVehicleType();
                ddlVType.DataTextField = "VehicleType";
                ddlVType.DataValueField = "VehicleTypeID";
                ddlVType.DataBind();

                // Branch 
                ddlBranch.DataSource = da.GetBranch();
                ddlBranch.DataTextField = "BranchName" ;
                ddlBranch.DataValueField = "BranchNo";
                ddlBranch.DataBind();



            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {

            if (!FileUpload1.HasFile)
            {
                Label1.Visible = true;
                Label1.Text = "Please Select Image File";
            }
            else
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];


                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                try
                {



                    //da.AddVehicle(txtLicenceNo.Text, txtMake.Text, int.Parse(txtModelYr.Text), ddlFuel.Text, int.Parse(txtDoor.Text), int.Parse(txtSeat.Text), txtColor.Text, txtPower.Text, txtMileage.Text, int.Parse(ddlBranch.Text), int.Parse(ddlVType.Text), int.Parse(ddlBrand.Text) , byte.Parse(FileUpload1.ToString()));

                    da.AddVehicle( txtMake.Text,
                       txtLicenceNo.Text,
                        int.Parse(txtModelYr.Text), 
                        ddlFuel.Text,
                        int.Parse(txtDoor.Text),
                        int.Parse(txtSeat.Text), 
                        txtColor.Text,
                        txtPower.Text,
                        txtMileage.Text, 
                        int.Parse(ddlBranch.Text),
                        int.Parse(ddlVType.Text), 
                        int.Parse(ddlBrand.Text), 
                        pic, double.Parse(txtPrice.Text));


                    Success();

                }
                catch (SqlException ex)
                {
                    Label1.Text = ex.ToString();
                }

            }
        }

       protected void Success()
        {
            string message = "Your details have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }

        protected void Upload()
        {
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }

        }
            protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {



        }
    }
}
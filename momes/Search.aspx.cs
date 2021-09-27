using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
            
            try
            {
                string Query = "SELECT image from VEHICLE where CarNo = @Id";
                string cs = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                SqlCommand cmd = new SqlCommand(Query);
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["CarNo"]);
                SqlConnection con = new SqlConnection(cs);
                SqlDataAdapter sda = new SqlDataAdapter();
                cmd.CommandType = CommandType.Text;
                DataTable dt = new DataTable();
                cmd.Connection = con;

                con.Open();
                sda.SelectCommand = cmd;
                sda.Fill(dt);


                Byte[] bytes = (Byte[])dt.Rows[0]["Image"];
                Response.BinaryWrite(bytes);
                Response.Flush();
                Response.End();
            } catch(Exception ex)
            {
                ex.ToString();
            }

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


           // if (HttpContext.Current.Session["Location_Pick_Up"] != null || HttpContext.Current.Session["Location_Drop_Off"] != null || HttpContext.Current.Session["Date_Time_Pick_Up"] != null || HttpContext.Current.Session["Date_Time_Off"] != null)
          //  {
                // code if session is not null

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

                    Response.Redirect("Quote.aspx");

                }

                else
                {
                    Response.Redirect("Homies.aspx");

                }
                Response.Redirect("Quote.aspx");

           // }
           // else
           // {
                //Failed();
              //  Response.Redirect("Search.aspx");
          //  }

        }

        protected void btnRent_Click(object sender, EventArgs e)
        {

           // Session["Car_Name"] = lblCar_Make.Text;
            Session["Location_Pick_Up"] = ddlBranchP.Text;
            Session["Location_Drop_Off"] = ddlBranchD.Text;
            Session["Date_Time_Pick_Up"] = txtP.Text;
            Session["Date_Time_Off"] = txtD.Text;

           /* Session["Date_Time_Pick_Up"] = l.Text;
            Session["Date_Time_Off"] = txtD.Text;
            Session["Date_Time_Pick_Up"] = txtP.Text;
            Session["Date_Time_Off"] = txtD.Text;*/

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
           // lblCar_Make.Text=
        }

        protected void Success()
        {
            string message = "Success.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }


        protected void Failed()
        {
            string message = "Ensure all fields are field.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "FailMessage", script, true);
        }

        protected void btnRent_Click1(object sender, EventArgs e)
        {
           // Session["Car_Name"] = lblCarNo.Text;
            Session["Location_Pick_Up"] = ddlBranchP.Text;
            Session["Location_Drop_Off"] = ddlBranchD.Text;
            Session["Date_Time_Pick_Up"] = txtP.Text;
            Session["Date_Time_Off"] = txtD.Text;

            /* Session["Date_Time_Pick_Up"] = l.Text;
             Session["Date_Time_Off"] = txtD.Text;
             Session["Date_Time_Pick_Up"] = txtP.Text;
             Session["Date_Time_Off"] = txtD.Text;*/

            Response.Redirect("Quote.aspx");
        }
    }
}
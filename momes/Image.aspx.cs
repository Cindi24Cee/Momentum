using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace momes
{
    public partial class Image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["CarNo"] != null)
            {
                string Query = "SELECT * from VEHICLE where CarNo = @Id";
                string cs = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                SqlCommand cmd = new SqlCommand(Query);
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Request.QueryString["CarNo"]);
                SqlConnection con = new SqlConnection(cs);
                SqlDataAdapter sda = new SqlDataAdapter();
                cmd.CommandType = CommandType.Text;
                DataTable dt = new DataTable();
                cmd.Connection = con;
                try
                {
                    con.Open();
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
                catch
                {
                    dt = null;
                }
                finally
                {
                    con.Close();
                    sda.Dispose();
                    con.Dispose();
                }
                if (dt != null)
                {
                    Byte[] bytes = (Byte[])dt.Rows[0]["Image"];
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.BinaryWrite(bytes);
                    Response.Flush();
                    Response.End();
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;


namespace momes
{
    public partial class Confirm_Booking : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {

            lblPickUpL.Text = (string)Session["Location_Pick_Up"];
            lblDropOffL.Text = (string)Session["Location_Drop_Off"];
            lblPickUpDate.Text = (string)Session["Date_Time_Pick_Up"];
            lblDropOffD.Text = (string)Session["Date_Time_Off"];

          
            //int Price = Convert.ToInt32(Session["Price"].ToString());

            int deposit = 3500;
            int contractFee = 70;
            int Admin_and_Prep_Fee = 130;

            //  int Gross_Total = No_Of_Days + Price;
            double TotalPrice = deposit + contractFee + Admin_and_Prep_Fee;


            Session["Total_Price"] = lblGrandTotal.Text;

            DateTime date1 = Convert.ToDateTime(lblPickUpDate.Text);
            DateTime date2 = Convert.ToDateTime(lblDropOffD.Text);

            int dateiff = ((TimeSpan)(date2 - date1)).Days;
            int noOfDays = dateiff;

            int GrandTotal = (int)TotalPrice + (noOfDays * 1000);
            lblNumberOfDays.Text = dateiff.ToString();
            Session["Number_Of_Days"] = lblNumberOfDays.Text;


            lblGrandTotal.Text = GrandTotal.ToString();
            Session["Grand_Total"] = lblGrandTotal.Text;

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            int carNo = 10000005;
            int CustomerID = 2021002;
            int employee = 0000;

            try
            {
                da.AddRentals(int.Parse(carNo.ToString()), int.Parse(CustomerID.ToString()), DateTime.Parse(lblPickUpDate.Text), DateTime.Parse(lblDropOffD.Text));
                lblMessage.Text = "Booking Successfully requested...";


                try
                { // Details From the other page
                    string pick_up_location = (string)Session["Location_Pick_Up"];
                    string drop_off_location = (string)Session["Location_Drop_Off"];
                    string date_time_pick_up = (string)Session["Date_Time_Pick_Up"];
                    string date_time_drop_off = (string)Session["Date_Time_Off"];
                    string carName = "Mazda";
                    int noOfdays = Convert.ToInt32((string)Session["Number_Of_Days"]);
                    int total = Convert.ToInt32((string)Session["Total_Price"]);
                    int grandTotal = Convert.ToInt32((string)Session["Grand_Total"]);

                    string email = "sekhwarimasindi21@gmail.com";
                    string name = "Masindi Sekhwari";

                    //Handling Email
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("zwonaka2020cee@gmail.com");
                    msg.To.Add(email);
                    msg.Subject = "Rental Confirmation for " + name;
                    msg.Body = "<table style='margin: auto; text - align:left; border=1; 'class='auto - style4'>  <tr> <th class='auto-style5'>Rental Detail</th> </tr> "
                     + "<tr><td class='auto-style5'> <asp:Image ID = 'Image1' runat='server' Height='122px' Width='151px' />"
                     + " <br />  <br /><h5>Note*</h5><br /> &nbsp;&nbsp; Pick Up Location : " + pick_up_location + "<br />"
                     + "&nbsp;&nbsp; Pick Up Date and Time  : " + date_time_pick_up + " <br/>"
                     + " &nbsp;&nbsp; Drop Off Location :" + drop_off_location + "<br />"
                     + "&nbsp;&nbsp; Drop Off Date and Time  : " + date_time_drop_off + "<br />"
                     + " <br /> " + carName + "</td> <td>" + noOfdays + " Days"
                     + "&nbsp; <asp:Label ID = 'lblX' runat='server' Text='*'></asp:Label>  &nbsp;<asp:Label ID = 'lblPrice' runat='server' Text='Price'></asp:Label>  &nbsp;"
                     + "<asp:Label ID = 'lvlEquals' runat='server' Text='='></asp:Label>  &nbsp; " + total + " </asp:Label></td>"
                     + "</tr> <tr>  <td class='auto-style5'>Extras</td></tr>"
                     + "<tr><td class='auto-style5'>Admin Fees</td> </tr>"
                     + "<tr> <td class='auto-style5'>Admin and Prep Fee(R130.00)</td><td>R130.00&nbsp;</td> </tr>"
                     + "<tr><td class='auto-style5'>Contract Fee(R70.00)</td><td>R70.00</td> </tr>"
                     + "<tr>  <td class='auto-style5'>Refundable Deposit</td></tr>"
                     + "<tr>  <td class='auto-style6'> <p style = 'color:black;' > Refundable Deposit.</p> <p style = 'color: blue' > *Please note:</p>"
                     + "<p style = 'color:black;' > When paying with Cash, via EFT, by Debit Card or <br/> Credit Card please ensure that you have refudable deposit available <br />  when collecting your vehicle. </p></td>  <td class='auto-style3'>R3500.00</td> </tr>"
                     + "<tr><td class='auto-style6'><b>Grand Total</b></td> <td class='auto-style3'>  &nbsp; R " + grandTotal + "  &nbsp;.00</td>  </tr>  </table>"
                     + "<br/>"
                     + "<br/>"
                     + "Thank Your For Trust in Us"
                     + "Momentum" ;


                    msg.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";

                    System.Net.NetworkCredential netCred = new System.Net.NetworkCredential();
                    netCred.UserName = "sekhwarimasindi21@gmail.com";
                    netCred.Password = "sestbxhsdekgbkls";

                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = netCred;
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Send(msg);

                    //Label1.Text = "Successfully";

                }
                catch (Exception ex)
                {
                    ex.ToString();
                    Response.Redirect("Error_Page");
                }



                Success();
                Response.Redirect("Search.aspx");

            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.ToString();
            }


        }
        protected void Success()
        {
            string message = "Booking Successfully requested...";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }


        protected void Failed()
        {
            string message = "Incorrect Email Address And Password.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "FailMessage", script, true);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data_Access_Layer;
using MimeKit;

namespace momes
{
    public partial class Send_Quotees : System.Web.UI.Page
    {
        DBAccess da = new DBAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Net.ServicePointManager.ServerCertificateValidationCallback +=
                   (s, cert, chain, sslPolicyErrors) => true;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            try
            {

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("zwonaka2020cee@gmail.com");
                msg.To.Add(txtEmailAddress.Text);
                msg.Subject = "Rental Quotation for "+  txtName.Text;
                msg.Body = txtName.Text + " Hey.";  // Details From the other page
                msg.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";

                System.Net.NetworkCredential netCred = new System.Net.NetworkCredential();
                netCred.UserName = "sekhwarimasindi21@gmail.com";
                netCred.Password = "password";

                smtp.UseDefaultCredentials = true;
                smtp.Credentials = netCred;
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(msg);

                Label1.Text = "Successfully";
              
            }
            catch (Exception ex)
            {
                ex.ToString();
            }

            /* SmtpClient smtpClient = new SmtpClient("zwonaka2020cee@gmail.com", 25);

              smtpClient.Credentials = new System.Net.NetworkCredential("zwonaka2020cee@gmail.com", "bondiS631@@");
               smtpClient.UseDefaultCredentials = true; // uncomment if you don't want to use the network credentials
              smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
              smtpClient.EnableSsl = true;
              MailMessage mail = new MailMessage();

              //Setting From , To and CC
              mail.From = new MailAddress("zwonaka2020cee@gmail.com", "MyWeb Site");
              mail.To.Add(new MailAddress(txtEmailAddress.Text));
              mail.CC.Add(new MailAddress("masindisikhwari23@gmail.com"));
              mail.Body = "Dear " +txtName.Text+ " Testing 1 2 3";
              smtpClient.Send(mail);*/
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Threading;

namespace VirtualLab.login___schedule
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] == null)
            {
                logOut.Visible = false;
            }
            else
            {
                logOut.Visible = true;
            }
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        public void redirect()
        {
            Thread.Sleep(10000);            
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {                        
            SqlDataSource1.SelectParameters["login_id"].DefaultValue = UserName.Text;
            SqlDataSource1.SelectParameters["mailID"].DefaultValue = emailIdTB.Text;
            try
            {
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                string password = (string)dv.Table.Rows[0][0];
                MailMessage mM = new MailMessage();
                mM.From = new MailAddress("avialvlabmhrd@gmail.com");
                mM.To.Add(emailIdTB.Text);
                mM.Subject = "Password Recovery";
                mM.Body = "Your Password is : <b>" + password +"</b>";
                mM.IsBodyHtml = true;                
                mM.Priority = MailPriority.High;
                SmtpClient sc = new SmtpClient();
                sc.Host = "smtp.gmail.com";
                sc.Port = 587;
                sc.Credentials = new NetworkCredential("avialvlabmhrd@gmail.com", "usic.mhrd.012");
                sc.EnableSsl = true;
                sc.DeliveryMethod = SmtpDeliveryMethod.Network;
                sc.Send(mM);
                this.FailureText.Text = "You will shorty receive an E-Mail with password";
               // Response.Write("<script language='javascript'>var Timeout = setTimeout('window.location='Login.aspx'',50000);</script>");                
                ClientScript.RegisterClientScriptBlock(Page.GetType(), "Delay then redirect", "<script type=text/javascript>delayRedirect('Login.aspx');</script>");
            }
            catch (Exception ex)
            {
                this.FailureText.Text = "Invalid Entries";
                //Response.Write(ex);
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace VirtualLab.login___schedule
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                logOut.Visible = false;
                Login1.Visible = true;                
            }
            else
            {
                Login1.Visible = false;
                Response.Redirect("Schedule.aspx");
            }
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectParameters["login_id"].DefaultValue = Login1.UserName;
            try
            {
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (Login1.Password == (string)dv.Table.Rows[0][0])
                {
                    Login1.Visible = false;
                   // Response.Cookies.Add(new HttpCookie("userName", Login1.UserName));                    
                    Session.Add("UserName", Login1.UserName);
                    Response.Redirect("Schedule.aspx");
                }
                else
                {
                    Login1.FailureText = "Username/Password Incorrect";
                }
            }
            catch (Exception ex)
            {
                Login1.FailureText = "Username/Password Incorrect";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}

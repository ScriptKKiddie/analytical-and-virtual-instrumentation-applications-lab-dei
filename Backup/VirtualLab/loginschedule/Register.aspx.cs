using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services;

namespace VirtualLab.login___schedule
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Header.DataBind();
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
            Response.Redirect("Register.aspx");
        }

        [WebMethod]
        public static string checkUserName(string struname)
        {
            try
            {
                string strSQL = "select login_id from loginTable where login_id='" + struname + "'";
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["LABConnectionString"].ToString());
                if (cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
                SqlDataAdapter da = new SqlDataAdapter(strSQL, cnn);
                DataSet ds = new DataSet();
                da.Fill(ds, "login_id");
                string uerror = "";
                if (ds.Tables[0].Rows.Count > 0)
                {
                    DataRow dtr;
                    int i = 0;
                    while (i < ds.Tables[0].Rows.Count)
                    {
                        dtr = ds.Tables[0].Rows[i];
                        uerror = "<font color='red'>UserName Already Exist!</font>";
                        break;
                    }
                }
                else
                {
                    uerror = "<font color='green'>UserName Available!</font>";
                }
                return uerror;
            }
            catch (Exception ex)
            {
                string uerror = "An Error occured while checking availablity";
                return uerror;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (passwordTB.Text == confrmTB.Text)
            {
                if (inpHide.Value == "true")
                {
                    try
                    {
                        SqlDataSource1.InsertParameters["login_id"].DefaultValue = userNameTB.Text;
                        SqlDataSource1.InsertParameters["password"].DefaultValue = passwordTB.Text;
                        SqlDataSource1.InsertParameters["name"].DefaultValue = nameTB.Text;
                        SqlDataSource1.InsertParameters["mailID"].DefaultValue = emailTB.Text;
                        SqlDataSource1.InsertParameters["institution"].DefaultValue = instituteTB.Text;
                        SqlDataSource1.InsertParameters["designation"].DefaultValue = desisnationTB.Text; ;
                        SqlDataSource1.InsertParameters["phNumber"].DefaultValue = phNumberTB.Text;
                        SqlDataSource1.Insert();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex);
                    }
                    userNameTB.Text = "";
                    passwordTB.Text = "";
                    nameTB.Text = "";
                    emailTB.Text = "";
                    instituteTB.Text = "";
                    desisnationTB.Text = "";
                    phNumberTB.Text = "";
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    userNameTB.Focus();
                }
            }
            else
            {
                cnfrmLabel.Text = "Password Mismatch";
                passwordTB.Focus();
            }
        }       
    }
}

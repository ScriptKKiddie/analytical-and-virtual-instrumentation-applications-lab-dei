using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace VirtualLab.others
{
    public partial class faqs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet tmpDs = new DataSet();
            tmpDs.ReadXml(Server.MapPath("~/count.xml"));
            countLBL.Text = tmpDs.Tables[0].Rows[0]["hits"].ToString();
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
            Response.Redirect("faqs.aspx");
        }
    }
}
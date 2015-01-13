using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Configuration;
using System.Web.Configuration;
using System.Data;

namespace VirtualLab
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            countMe();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {            
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
        private void countMe()
        {

            DataSet tmpDs = new DataSet();
            tmpDs.ReadXml(Server.MapPath("~/count.xml"));
            int hits = Int32.Parse(tmpDs.Tables[0].Rows[0]["hits"].ToString());
            hits += 1;
            tmpDs.Tables[0].Rows[0]["hits"] = hits.ToString();
            tmpDs.WriteXml(Server.MapPath("~/count.xml"));

        }
    }
}
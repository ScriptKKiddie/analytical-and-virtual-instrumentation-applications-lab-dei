using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Telerik.Web.UI;


namespace VirtualLab.login___schedule
{
    public partial class Schedule : System.Web.UI.Page
    {
        protected global::System.Web.UI.HtmlControls.HtmlAnchor logOut;
        protected void Page_Load(object sender, EventArgs e)
        {
            /* if (Request.Cookies["userName"] == null)
             {
                 this.RadScheduler1.ReadOnly = true;
             }
             else
             {
                 this.RadScheduler1.ReadOnly = false;
             }*/

            if (Session["UserName"] == null)
            {
                this.RadScheduler1.ReadOnly = true;
                logOut.Visible = false;
            }
            else
            {
                this.RadScheduler1.ReadOnly = false;
                logOut.Visible = true;
            }

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Schedule.aspx");
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
        }

        protected void RadScheduler1_AppointmentInsert(object sender, SchedulerCancelEventArgs e)
        {
            if (this.RadScheduler1.ReadOnly == false)
            {
                //this.SqlDataSource1.InsertParameters["UserID"].DefaultValue = Request.Cookies["userName"].Value;
                this.SqlDataSource1.InsertParameters["UserID"].DefaultValue = Session["UserName"].ToString();
            }
        }


        protected void RadScheduler1_AppointmentUpdate(object sender, EventArgs e)
        {

        }


        protected void RadScheduler1_AppointmentCreated(object sender, AppointmentCreatedEventArgs e)
        {
            if (this.RadScheduler1.ReadOnly == false)
            {
                //this.SqlDataSource1.InsertParameters["UserID"].DefaultValue = Request.Cookies["userName"].Value;
                this.SqlDataSource1.InsertParameters["UserID"].DefaultValue = Session["UserName"].ToString();
            }
        }

        protected void RadScheduler1_AppointmentDelete(object sender, SchedulerCancelEventArgs e)
        {
            try
            {
                this.SqlDataSource2.SelectParameters["Start"].DefaultValue = e.Appointment.Start.ToString();
                this.SqlDataSource2.SelectParameters["End_Time"].DefaultValue = e.Appointment.End.ToString();
                this.SqlDataSource2.SelectParameters["Subject"].DefaultValue = e.Appointment.Subject.ToString();
                DataView dv = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                // if (Request.Cookies["userName"].Value != (string)dv.Table.Rows[0][0])
                if (Session["UserName"].ToString() != (string)dv.Table.Rows[0][0])
                {
                    e.Cancel = true;
                    //Response.Write("radalert('Welcome to RadWindow!', 330, 100,'RadAlert custom title'); return false;");
                }
                else
                {
                    e.Cancel = false;
                }
            }
            catch (Exception ex)
            {
                //Console.WriteLine(ex.ToString());
            }

        }

    }
}
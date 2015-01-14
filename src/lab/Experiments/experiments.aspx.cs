using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualLab.Experiments
{
    public partial class experiments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DayOfWeek today = DateTime.Today.DayOfWeek;
            //if (today == DayOfWeek.Sunday)
            //{
            //    exp1.Enabled = false;
            //    exp2.Enabled = false;
            //    exp3.Enabled = false;
            //    exp4.Enabled = false;
            //    exp5.Enabled = false;
            //    exp6.Enabled = false;
            //}
            //else if (today == DayOfWeek.Monday || today == DayOfWeek.Wednesday || today == DayOfWeek.Friday)
            //{
            //    exp4.Enabled = false;                
            //    exp5.Enabled = false;
            //    exp6.Enabled = false;
            //    exp4.Text = exp4.Text + " (only Available on Tuesday, Thrusday & Saturday)";
            //    exp5.Text = exp5.Text + " (only Available on Tuesday, Thrusday & Saturday)";
            //    exp6.Text = exp6.Text + " (only Available on Tuesday, Thrusday & Saturday)";
            //}
            //else
            //{
            //    exp1.Enabled = false;
            //    exp2.Enabled = false;
            //    exp3.Enabled = false;
            //    exp1.Text = exp1.Text + "only Available on Monday, Wednesday & Friday";
            //    exp2.Text = exp2.Text + "only Available on Monday, Wednesday & Friday";
            //    exp3.Text = exp3.Text + "only Available on Monday, Wednesday & Friday";
            //}
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
            Response.Redirect("experiments.aspx");
        }
    }
}

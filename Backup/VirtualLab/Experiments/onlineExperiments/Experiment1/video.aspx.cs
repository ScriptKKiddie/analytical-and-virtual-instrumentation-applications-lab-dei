using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualLab.Experiments.onlineExperiments.Experiment1
{
    public partial class video : System.Web.UI.Page
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
            Response.Redirect("video.aspx");
        }

        protected void lnkBtnBasicVideo_Click(object sender, EventArgs e)
        {
            basicVideo.Visible = true;
            avdnvVideo.Visible = false;
        }

        protected void lnkBtnAdvncVideo_Click(object sender, EventArgs e)
        {
            basicVideo.Visible = false;
            avdnvVideo.Visible = true;
        }
    }
}

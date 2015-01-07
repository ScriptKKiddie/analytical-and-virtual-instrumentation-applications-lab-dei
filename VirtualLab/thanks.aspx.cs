using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualLab
{
    public partial class thanks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox tc = (TextBox) PreviousPage.FindControl("nameTB");
            DropDownList dl = (DropDownList) PreviousPage.FindControl("tileList");             
            name.Text = "Your have been successfully registered " + dl.SelectedItem.Value + tc.Text;
        }
    }
}

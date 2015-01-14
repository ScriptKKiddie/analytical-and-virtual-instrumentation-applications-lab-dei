using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VirtualLab.feedback
{
    public partial class feedback : System.Web.UI.Page
    {

        char ans1a = '5';
        char ans1b = '5';
        char ans1c = '5';
        char ans1d = '5';
        char ans1e = '5';
        char ans1f = '5';
        char ans1g = '5';
        char ans1h = '5';
        string ans4 = "Yes";
        string ans5 = "Yes";
        string ans6 = "Yes";

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Attributes.Add("onBlur", "return ValidateForm()");
            Button1.Attributes.Add("onClick", "return ValidateForm()");
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
            Response.Redirect("feedback.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            { 
                Session.Add("success", (bool)false);
                string name = TextBox1.Text;
                string comment = TextBox4.Text;
                string epxnameis = DropDownList1.SelectedItem.ToString();
                string email = TextBox3.Text;
                string ans2 = TextBox5.Text;
                string ans3 = TextBox6.Text;

                //For Button Group 1
                if (RadioButton1.Checked)
                {
                    ans1a = '5';
                }
                if (RadioButton2.Checked)
                {
                    ans1a = '4';
                }
                if (RadioButton3.Checked)
                {
                    ans1a = '3';
                }
                if (RadioButton4.Checked)
                {
                    ans1a = '2';
                }
                if (RadioButton5.Checked)
                {
                    ans1a = '1';
                }

                //Button group 2
                if (RadioButton6.Checked)
                {
                    ans1b = '5';
                }
                if (RadioButton7.Checked)
                {
                    ans1b = '4';
                }
                if (RadioButton8.Checked)
                {
                    ans1b = '3';
                }
                if (RadioButton9.Checked)
                {
                    ans1b = '2';
                }
                if (RadioButton10.Checked)
                {
                    ans1b = '1';
                }

                //Button group 3
                if (RadioButton11.Checked)
                {
                    ans1c = '5';
                }
                if (RadioButton12.Checked)
                {
                    ans1c = '4';
                }
                if (RadioButton13.Checked)
                {
                    ans1c = '3';
                }
                if (RadioButton14.Checked)
                {
                    ans1c = '2';
                }
                if (RadioButton15.Checked)
                {
                    ans1c = '1';
                }

                //Button group 4
                if (RadioButton16.Checked)
                {
                    ans1d = '5';
                }
                if (RadioButton17.Checked)
                {
                    ans1d = '4';
                }
                if (RadioButton18.Checked)
                {
                    ans1d = '3';
                }
                if (RadioButton19.Checked)
                {
                    ans1d = '2';
                }
                if (RadioButton20.Checked)
                {
                    ans1d = '1';
                }

                //Button group 5
                if (RadioButton21.Checked)
                {
                    ans1e = '5';
                }
                if (RadioButton22.Checked)
                {
                    ans1e = '4';
                }
                if (RadioButton23.Checked)
                {
                    ans1e = '3';
                }
                if (RadioButton24.Checked)
                {
                    ans1e = '2';
                }
                if (RadioButton25.Checked)
                {
                    ans1e = '1';
                }

                //Button group 6
                if (RadioButton26.Checked)
                {
                    ans1f = '5';
                }
                if (RadioButton27.Checked)
                {
                    ans1f = '4';
                }
                if (RadioButton28.Checked)
                {
                    ans1f = '3';
                }
                if (RadioButton29.Checked)
                {
                    ans1f = '2';
                }
                if (RadioButton30.Checked)
                {
                    ans1f = '1';
                }

                //button Group 7
                if (RadioButton31.Checked)
                {
                    ans1g = '5';
                }
                if (RadioButton32.Checked)
                {
                    ans1g = '4';
                }
                if (RadioButton33.Checked)
                {
                    ans1g = '3';
                }
                if (RadioButton34.Checked)
                {
                    ans1g = '2';
                }
                if (RadioButton35.Checked)
                {
                    ans1g = '1';
                }

                //button Group 8
                if (RadioButton36.Checked)
                {
                    ans1h = '5';
                }
                if (RadioButton37.Checked)
                {
                    ans1h = '4';
                }
                if (RadioButton38.Checked)
                {
                    ans1h = '3';
                }
                if (RadioButton39.Checked)
                {
                    ans1h = '2';
                }
                if (RadioButton40.Checked)
                {
                    ans1h = '1';
                }

                //button Group 9
                if (RadioButton41.Checked)
                {
                    ans4 = RadioButton41.Text;
                }
                if (RadioButton42.Checked)
                {
                    ans4 = RadioButton42.Text;
                }
                if (RadioButton43.Checked)
                {
                    ans4 = "No Answer";
                }

                //button Group 10
                if (RadioButton44.Checked)
                {
                    ans5 = RadioButton44.Text;
                }
                if (RadioButton45.Checked)
                {
                    ans5 = RadioButton45.Text;
                }
                if (RadioButton46.Checked)
                {
                    ans5 = "No Answer";
                }

                //button Group 11
                if (RadioButton47.Checked)
                {
                    ans6 = RadioButton47.Text;
                }
                if (RadioButton48.Checked)
                {
                    ans6 = RadioButton48.Text;
                }
                if (RadioButton49.Checked)
                {
                    ans6 = "No Answer";
                }

                try
                {
                    SqlDataSource1.InsertParameters["name"].DefaultValue = name;
                    SqlDataSource1.InsertParameters["expname"].DefaultValue = epxnameis;
                    SqlDataSource1.InsertParameters["ques1a"].DefaultValue = ans1a.ToString();
                    SqlDataSource1.InsertParameters["ques1b"].DefaultValue = ans1b.ToString();
                    SqlDataSource1.InsertParameters["ques1c"].DefaultValue = ans1c.ToString();
                    SqlDataSource1.InsertParameters["ques1d"].DefaultValue = ans1d.ToString();
                    SqlDataSource1.InsertParameters["ques1e"].DefaultValue = ans1e.ToString();
                    SqlDataSource1.InsertParameters["ques1f"].DefaultValue = ans1f.ToString();
                    SqlDataSource1.InsertParameters["ques1g"].DefaultValue = ans1g.ToString();
                    SqlDataSource1.InsertParameters["ques1h"].DefaultValue = ans1h.ToString();
                    SqlDataSource1.InsertParameters["coment"].DefaultValue = comment;
                    SqlDataSource1.InsertParameters["ques2"].DefaultValue = ans2;
                    SqlDataSource1.InsertParameters["ques3"].DefaultValue = ans3;
                    SqlDataSource1.InsertParameters["ques4"].DefaultValue = ans4;
                    SqlDataSource1.InsertParameters["ques5"].DefaultValue = ans5;
                    SqlDataSource1.InsertParameters["ques6"].DefaultValue = ans6;
                    SqlDataSource1.InsertParameters["mail"].DefaultValue = email;

                    if (Request.Cookies["userName"] != null)
                    {
                        SqlDataSource1.InsertParameters["userId"].DefaultValue = Request.Cookies["userName"].Value;
                    }
                    SqlDataSource1.Insert();
                    Session.Add("tname", name);// .Contents["tname"] = name;
                    Session.Contents["success"] = true;
                }
                catch (Exception ex)
                {
                    Response.Redirect("errordbup.aspx", true);
                    //Response.Write(ex.ToString()); 
                }
                if ((bool)Session.Contents["success"])
                {
                    Response.Redirect("thanks.aspx", true);
                }
            } 
        }
    }
}

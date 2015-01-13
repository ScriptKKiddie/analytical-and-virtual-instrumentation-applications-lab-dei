using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.Text;

namespace VirtualLab.Experiments.onlineExperiments.Experiment4
{
    public partial class Quiz : System.Web.UI.Page
    {
        String strXmlFilePath = System.Web.HttpContext.Current.Server.MapPath("quiz.xml");
        XmlDocument xDoc = new XmlDocument();

        //Initialize variables
        int intTotalQuestion=10;
        int intQuestionNo = 1;
        int intScore = 0;
        ArrayList arrAnswerHistory = new ArrayList();
        int[] question = new int[10];
        Random random;

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
            xDoc.Load(strXmlFilePath);
            if (!Page.IsPostBack)
            {
                random = new Random();
                //intTotalQuestion = xDoc.SelectNodes("quiz/mchoice").Count;
                ViewState["StartTime"] = DateTime.Now;
                //To Change for Questions
                int[] numbers = new int[12]; 
                //To Change for Question
                for (int i = 1; i <=12; i ++)
                numbers[i-1] = i;
                for (int i = 0; i < 10; i ++)
                {
                    //To Change for Questions
                    int idx = random.Next(1,12);
                    int temp = numbers[idx];
                    numbers[idx] = numbers[i];
                    numbers[i] = temp;
                }
                for (int i = 0; i < 10; i ++)
                {
                    question[i] = numbers[i];
                }
                ViewState["Questions"] = question;
                ShowQuestion(intQuestionNo);
            }

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Quiz.aspx");
        }

        protected void ShowQuestion(int intQuestionNo)
        {
            XmlNodeList xNodeList ;
	        Object xNodeAttr ;
	        String strXPath; 
	        int i;
            TimeSpan tsTimeSpent;
            question = (int[])ViewState["Questions"];
            strXPath = "/quiz/mchoice["+ question[intQuestionNo-1].ToString() + "]";
            //Extract question
            lblQuestion.Text = (intQuestionNo.ToString() + ". " + xDoc.SelectSingleNode(strXPath + "/question").InnerXml).Replace("]]>",null);
            //Extract answers
            xNodeList = xDoc.SelectNodes(strXPath + "/answer");
            //Clear previous listitems
            rblAnswer.Items.Clear();
            for (i = 0; i <= xNodeList.Count - 1; i++)
            {
                //Add item to radiobuttonlist
                rblAnswer.Items.Add(xNodeList.Item(i).InnerText);
                //Extract correct answer
                xNodeAttr = xNodeList.Item(i).Attributes["correct"];               
                if(xNodeAttr != null)
                {
                    XmlAttribute attrib = (XmlAttribute)xNodeAttr;
			        if(attrib.Value == "yes")
                    {
				        ViewState["CorrectAnswer"] = i+1;
                    }
			    }
            }
            //Output Total Question
            lblTotalQuestion.Text = intTotalQuestion.ToString();
            //Output Time Spent
            tsTimeSpent = DateTime.Now.Subtract((DateTime) ViewState["StartTime"]);
            lblTimeSpent.Text = tsTimeSpent.Minutes.ToString() + ":" + tsTimeSpent.Seconds.ToString();
            
            //Store essential data to viewstate
	        ViewState["TotalQuestion"] = intTotalQuestion;
	        ViewState["Score"] = intScore;
	        ViewState["QuestionNo"] = intQuestionNo;
            ViewState["AnswerHistory"] = arrAnswerHistory;
            ViewState["Questions"] = question;
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Retrieve essential variables from state bag
            intTotalQuestion = (int) ViewState["TotalQuestion"];
            intQuestionNo = (int)ViewState["QuestionNo"];
            intScore = (int)ViewState["Score"];
            arrAnswerHistory = (ArrayList)ViewState["AnswerHistory"];

            //Correct answer?
            if (rblAnswer.SelectedIndex + 1 == (int) ViewState["CorrectAnswer"])
            {
                intScore += 1;
                arrAnswerHistory.Add(0);
                ViewState["Score"] = intScore;
            }
            else
            {
                arrAnswerHistory.Add(rblAnswer.SelectedIndex + 1);
            }

            //End of quiz?
            if (intQuestionNo == intTotalQuestion)
            {
                //Yes! Show the result...
                QuizScreen.Visible = false;
                ResultScreen.Visible = true;
                //Render result screen
                ShowResult();
            }
            else
            {
                //Not yet! Show another question...
                QuizScreen.Visible = true;
                ResultScreen.Visible = false;
                intQuestionNo++;
                //Render next question               
                ShowQuestion(intQuestionNo);
            }
            
        }

        protected void ShowResult()
        {
            String strResult;
	        int intCompetency;
	        int i;
	        String strXPath;
            TimeSpan tsTimeSpent;
            StringBuilder text = new StringBuilder();
            question = (int[]) ViewState["Questions"];
            intScore = (int)ViewState["Score"];
            tsTimeSpent = DateTime.Now.Subtract((DateTime) ViewState["StartTime"]);
            intCompetency = (intScore * 100) / intTotalQuestion;
            strResult  = "<center>";
	        strResult += "<h3>Quiz Result</h3>";
            strResult += "<p>Points: " + intScore.ToString() + " of " + intTotalQuestion.ToString();
            strResult += "<p>Your Competency: " + intCompetency.ToString() + "%";
	        strResult += "<p>Time Spent: " + tsTimeSpent.Minutes.ToString() + ":" + tsTimeSpent.Seconds.ToString();
            strResult += "</center>";
            strResult += "<h3>Quiz Breakdown:</h3>";
            for (i = 1; i <= intQuestionNo; i++)
            {
		        strXPath = "/quiz/mchoice[" + question[i-1].ToString() + "]";
		        strResult += ("<b>" + i.ToString() + ". " + xDoc.SelectNodes(strXPath + "/question").Item(0).InnerXml + "</b><br>").Replace("]]>",null);
                strResult.Replace("]]>", null);
		        if( (int) arrAnswerHistory[i-1] == 0)
                {
			        strResult += "<font color=green><b>Correct</b></font><br><br>";
                }
		        else
                {			        
                    strResult += "<b>You answered:</b> " + xDoc.SelectNodes(strXPath + "/answer[" + arrAnswerHistory[i - 1].ToString() + "]").Item(0).InnerXml + "<br>";                    
                    strResult += "<font color=red><b>Incorrect</b></font><br><br>";
                }			
            }
            lblResult.Text = strResult;
        }
    }
}

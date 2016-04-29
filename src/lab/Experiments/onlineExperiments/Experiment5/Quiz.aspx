<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="Quiz.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment5.Quiz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Electro Chemistry Quiz</title>
    <link href="../../../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../../../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../../../ddtabmenufiles/ddtabmenu.js">
    </script>

    <link rel="stylesheet" type="text/css" href="../../../ddtabmenufiles/glowtabs.css" />
    <style type="text/css">
        tr.heading
        {
            background-color: #7CC9F4;
            color: #284E98;
        }
        .button
        {
            border: 1px solid #000000;
            background-color: #ffffff;
        }
    </style>
</head>
<body id="Body1" bgcolor="#FFFFFF" runat="server">
    <form id="Form1" runat="server">
    <div id="header_main">
        <img src="../../../Images/logo.jpg" align="right" style="padding-right: 20px" height="100px"
            width="120px" alt="logo" />
    </div>
    <!-- <div id="no_print"
         start header -->
    <div id="header">
        <ul id="menuTop">
            <li><a href="../../../Default.aspx" target="_self">Home</a></li>
            <li><a href="../../../Experiments/experiments.aspx" target="_self">Experiments</a></li>
            <li><a href="../../../loginschedule/login.aspx" target="_self">Login & Schedule</a></li>
            <li><a href="../../../feedback/feedbacks.aspx" target="_self">Feedback</a></li>
            <li><a href="../../../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../../../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../../../others/people.aspx" target="_self">People</a></li>
            <li><a href="../../../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">Online Quiz</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../../../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
            <br />
            <div id="ddtabs2" class="glowingtabs">
                <ul>
                    <li><a href="introduction.aspx"><span>
                        <center>
                            <img src="../../../images/theory.jpg" border="0"><br />
                            Introduction</center>
                    </span></a></li>
                    <li><a href="setup.aspx"><span>
                        <center>
                            <img src="../../../images/setup.png" border="0"><br />
                            Setup</center>
                    </span></a></li>
                    <li><a href="sample.aspx"><span>
                        <center>
                            <img src="../../../images/sample.png" border="0"><br />
                            Sample</center>
                    </span></a></li>
                    <li><a href="procedure.aspx"><span>
                        <center>
                            <img src="../../../images/procedure.jpg" border="0"><br />
                            Procedure</center>
                    </span></a></li>
                    <li><a href="animate.aspx"><span>
                        <center>
                            <img src="../../../images/sim.jpg" border="0"><br />
                            Animate</center>
                    </span></a></li>
                    <li><a href="perform.aspx"><span>
                        <center>
                            <img src="../../../images/eval.jpg" border="0"><br />
                            Perform</center>
                    </span></a></li>
                    <li><a href="DataAnalysis.aspx"><span>
                        <center>
                            <img src="../../../images/books.jpg" border="0"><br />
                            Data Analysis</center>
                    </span></a></li>
                    <li><a href="#"><span>
                        <center>
                            <img src="../../../images/quiz.png" border="0"><br />
                            Quiz</center>
                    </span></a></li>
                    <li><a href="video.aspx"><span>
                        <center>
                            <img src="../../../images/video.jpg" border="0"><br />
                            Video</center>
                    </span></a></li>
                    <li><a href="livecam.aspx"><span>
                        <center>
                            <img src="../../../images/liveCam.png" border="0"><br />
                            Live View</center>
                    </span></a></li>
                </ul>
            </div>
            <h1 class="title">
                <a href="#"></a>
            </h1>
            <p class="meta">
                <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>&nbsp;
            </p>
            <div class="entry" style="font-size: 10pt; font-family: verdana,helvetica,arial,sans-serif;
                color: #000000;">
                <span id="selection" runat="server">
                    <asp:RadioButtonList ID="SelectionList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelectionList_SelectedIndexChanged">
                        <asp:ListItem Text="Pre-Experiment Quiz" Value="Pre-Experiment Quiz"></asp:ListItem>
                        <asp:ListItem Text="Post-Experiment Quiz" Value="Post-Experiment Quiz"></asp:ListItem>
                    </asp:RadioButtonList>
                </span><span id="QuizScreen" runat="server" visible="false">
                    <table width="100%" border="0" cellpadding="2" cellspacing="0">
                        <tr class="heading">
                            <td width="50%" align="left">
                                <font color="#284E98"><b>Electro Chemistry Quiz</b></font>
                            </td>
                            <td width="50%" align="right">
                                <font color="#284E98"><b>Virtual Labs Quiz</b></font>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <b>
                                    <asp:Label ID="lblQuestion" runat="server" /></b><br />
                                <br />
                                <asp:RadioButtonList ID="rblAnswer" RepeatDirection="vertical" TextAlign="right"
                                    RepeatLayout="table" runat="server" />
                                <br />
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" ControlToValidate="rblAnswer"
                                    ErrorMessage="Please pick an answer!" runat="server" /><br />
                                <asp:Button ID="btnSubmit" class="button" Text="  Next  " OnClick="btnSubmit_Click"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr class="heading">
                            <td width="50%" align="left">
                                <font color="#284E98"><b>Total
                                    <asp:Label ID="lblTotalQuestion" runat="server" />
                                    questions</b></font>
                            </td>
                            <td width="50%" align="right">
                                <font color="#284E98"><b>Time spent
                                    <asp:Label ID="lblTimeSpent" runat="server" /></b></font>
                            </td>
                        </tr>
                    </table>
                </span><span id="ResultScreen" runat="server">
                    <asp:Label ID="lblResult" runat="server" />
                </span>
            </div>
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="../../../images/footer-curve.jpg" width="1024" height="31" alt="" /><div
            class="copyright">
            Copyright &copy; 2009-2016</div>
        <br />
    </div>
    </form>
</body>
</html>

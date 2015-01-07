<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faqs.aspx.cs" Inherits="VirtualLab.others.faqs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>Analytical & Virtual Instrumentation Applications Lab</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
    </script>

    <link rel="stylesheet" type="text/css" href="../ddtabmenufiles/glowtabs.css" />
</head>
<body id="Body1" bgcolor="#FFFFFF" runat="server">
    <form id="Form1" runat="server">
    <div id="header_main">
        <img src="../Images/logo.jpg" align="right" style="padding-right: 20px" height="100px"
            width="120px" alt="logo" />
    </div>
    <!-- <div id="no_print"
         start header -->
    <div id="header">
        <ul id="menuTop">
            <li><a href="../Default.aspx" target="_self">Home</a></li>
            <li><a href="../Experiments/experiments.aspx" target="_self">Experiments</a></li>
            <li><a href="../loginschedule/login.aspx" target="_self">Login & Schedule</a></li>
            <li><a href="../feedback/feedback.aspx" target="_self">Feedback</a></li>
            <li><a href="livecam.aspx" target="_self">Live View</a></li>
            <li><a href="equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="#" target="_self">FAQs</a></li>
            <li><a href="people.aspx" target="_self">People</a></li>
            <li><a href="contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">Frequently Asked Questions</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
            <br />
            <h1 class="title">
                <a href="#"></a>
            </h1>
            <br />
            <br />
            <div class="entry">
                <p>
                    <b>Question :How do I get a virtual Lab account? Is it free or do I need to pay anything
                        to perform experiment?</b></p>
                <p>
                    <b>Answer : </b>No, you do not need to pay anything to us to perform any of the
                    experiment. Virtual Lab is a free service provided by MHRD, India to perform various
                    online experiment in many fields. You only go to <a href="login.aspx">"Login & Schedule"</a>
                    tab. Register yourself to the lab and book an appointment for performing experiment
                    as per your comfort.</p>
                <br />
                <p>
                    <b>Question : What are the requirements of my computer in order to run the experiments?</b></p>
                <p>
                    <b>Answer : </b>To get the requirement details to perform experiemtns please go
                    to requirement details page by <a href="RequireDetails.aspx">Clicking Here</a>.</p>
                <br />
                <p>
                    <b>Question : Which electrochemical instruments can I operate remotely?</b></p>
                <p>
                    <b>Answer : </b>ECO-CHEMIE Potentiostat PGSTAT302N (Metrohm Autolab)
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PINE
                    WAVENOW</p>
                <br />
                <p>
                    <b>Question : How many person can operate the same instrument?</b></p>
                <p>
                    <b>Answer : </b>Only one person at a time can operate the instrument remotely.</p>
                <br />
                <p>
                    <b>Question : Can I perform experiments if I am from some different college other than
                        IITs</b></p>
                <p>
                    <b>Answer : </b>YES, you can perform.</p>
                     <br />
                <p>
                    <b>Question : Total number of Hit on this site?</b></p>
                <p>
                    <b>Answer : </b>
                    <asp:Label ID="countLBL" runat="server" Text="Label"></asp:Label>  </p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
            </div>
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="../images/footer-curve.jpg" width="1024" height="31" alt="" /><div class="copyright">
            Copyright &copy; 2010-2011</div>
        <br />
    </div>
    </form>
</body>
</html>

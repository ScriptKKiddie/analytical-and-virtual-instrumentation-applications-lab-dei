<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment7.setup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>
    <link href="../../../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../../../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../../../ddtabmenufiles/ddtabmenu.js">
    </script>

    <link rel="stylesheet" type="text/css" href="../../../ddtabmenufiles/glowtabs.css" />
<link rel="SHORTCUT ICON" href="../../../Images/logo.ico">
</head>
<%--Google Analytics code--%>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35958729-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<%--Google Analytics code--%>
<body bgcolor="#FFFFFF">
    <form id="form1" runat="server">
    <div id="header_main">
        <img src="../../../Images/logo.jpg" align="right" style="padding-right: 20px" height="100px"
            width="120px" alt="logo" />
    </div>
    <div id="no_print">
        <!-- start header -->
        <div id="header">
            <ul id="menuTop" style="font-size: x-small; font-weight: 700;">
                <li><a href="../../../Default.aspx" target="_self">Home</a></li>
                <li><a href="../../../Experiments/experiments.aspx" target="_self">Experiments</a></li>
                <li><a href="../../../loginschedule/login.aspx" target="_self" id="loginschedule" runat="server">Login & Schedule</a></li>
                <li><a href="../../../feedback/Feedbacks.aspx" target="_self">Feedback</a></li>
                <li><a href="../../../others/equipments.aspx" target="_self">Equipments</a></li>
                <li><a href="../../../others/faqs.aspx" target="_self">FAQs</a></li>
                <li><a href="../../../others/people.aspx" target="_self">People</a></li>
                <li><a href="../../../others/contactUs.aspx" target="_self">Contact Us</a></li>
                <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
                <li><a href="../../../others/OnlineSupports.aspx" target="_self">Online Support</a></li>
                <li><a id="logInMenuschedule" href="../../../loginschedule/Schedules.aspx" runat="server">Schedule</a></li>
                <li><a id="logOutMenuschedule" href="../../../loginschedule/viewSchedule.aspx" runat="server">View Schedule</a></li>
            </ul>
        </div>
        <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc">
            <br />
            <span class="title">Setup</span>
        </div>
        <div style="background-image: url(../../../images/content_bg.jpg); position: relative;
            margin: auto; width: 1024px; min-height: 400px;">
               <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;"><br />
               <asp:Label ID="lblUserName" runat="server" Text="Welcome User" Font-Bold="true" Font-Names="verdana" Font-Size="X-Small" ForeColor="Green"></asp:Label>
                <br />
                <div id="ddtabs2" class="glowingtabs">
                    <ul>
                        <li><a href="Introduction.aspx"><span>
                            <center>
                                <img src="../../../images/theory.jpg" border="0"><br />
                                Introduction</center>
                        </span></a></li>
                        <li><a href="Setup.aspx"><span>
                            <center>
                                <img src="../../../images/setup.png" border="0"><br />
                                Setup</center>
                        </span></a></li>
                        <li><a href="procedure.aspx"><span>
                            <center>
                                <img src="../../../images/procedure.jpg" border="0"><br />
                                Procedure</center>
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
                <div class="entry" style="line-height: 22px; font-size: small; padding: 0px 0px 10px 15px; font-family:Verdana;">
                    <p>
                        The experimental setup for the cyclic voltammetry consists out of the following
                        components:</p>
                    <br />
                    <h3>
                        Equipments</h3>
                    <div style="padding-left: 40px; font-family:Verdana; font-size:small;">
                        <ul>
                            <li>&#x3BC; Autolab III with FRA2
                            </li>
                            <li>Home Made</li>
                            <li>Dummy cell with the following circuit.</li><br />
                            <img id="rcCircuit" src="images/RCciruit.jpg" width="210" height="80" style="background-color:Maroon;" /><br />
                            <li>Circuit equivalant failed coating.</li>
                        </ul>
                    </div>
                    <h3>
                        Chemicals / Reagents</h3>
                    <div style="padding-left: 40px; font-family:Verdana; font-size:small;">
                        <ul type="1">
                            <li>Ferrous Ammonium Sulfate</span></li>
                            <li>Ferric Ammonium Sulfate</li>
                            <li>Perchloric Acid</li>
                        </ul>
                    </div>
                     <p style="text-align: center;">
                        <img src="Images\setup7.jpg" height="420px" width="600px" alt="Setup Image" />
                    </p>
                </div>
                <br />
            </div>
            <br />
            <br />
        </div>
    </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="../../../images/footer-curve.jpg" width="1024" height="31" alt=""><div
            class="copyright">
            Copyright &copy; 2009-2016</div>
        <br />
    </div>
    </form>
</body>
</html>

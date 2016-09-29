<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment7.sample" %>

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
            <span class="title">Sample Prepration</span>
        </div>
        <div id="no_print">
        </div>
        <div style="background-image: url(../../../images/content_bg.jpg); position: relative;
            margin: auto; width: 1024px; min-height: 400px;">
               <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;"><br />
               <asp:Label ID="lblUserName" runat="server" Text="Welcome User" Font-Bold="true" Font-Names="verdana" Font-Size="X-Small" ForeColor="Green"></asp:Label>
                <br />
                <div id="ddtabs2" class="glowingtabs">
                    <ul>
                        <li><a href="introduction.aspx"><span>
                            <center>
                                <img src="../../../images/theory.jpg" width="40px" border="0"><br />
                                Introduction</center>
                        </span></a></li>
                        <li><a href="setup.aspx"><span>
                            <center>
                                <img src="../../../images/setup.png" width="40px" border="0"><br />
                                Setup</center>
                        </span></a></li>
                        <li><a href="#"><span>
                            <center>
                                <img src="../../../images/sample.png" width="40px" border="0"><br />
                                Sample</center>
                        </span></a></li>
                        <li><a href="procedure.aspx"><span>
                            <center>
                                <img src="../../../images/procedure.jpg" width="40px" border="0"><br />
                                Procedure</center>
                        </span></a></li>
                        <li><a href="#"><span>
                            <center>
                                <img src="../../../images/sim.jpg" width="40px" border="0"><br />
                                Animate</center>
                        </span></a></li>
                        <li><a href="perform.aspx"><span>
                            <center>
                                <img src="../../../images/eval.jpg" width="40px" border="0"><br />
                                Perform</center>
                        </span></a></li>
                        <li><a href="#"><span>
                            <center>
                                <img src="../../../images/books.jpg" width="40px" border="0"><br />
                                Data Analysis</center>
                        </span></a></li>
                        <li><a href="#"><span>
                            <center>
                                <img src="../../../images/quiz.png" width="40px" border="0"><br />
                                Quiz</center>
                        </span></a></li>
                        <li><a href="video.aspx"><span>
                            <center>
                                <img src="../../../images/video.jpg" width="40px" border="0"><br />
                                Video</center>
                        </span></a></li>
                        <li><a href="livecam.aspx"><span>
                            <center>
                                <img src="../../../images/liveCam.png" width="40px" border="0"><br />
                                Live View</center>
                        </span></a></li>
                         <li><a href="reference.aspx"><span>
                            <center>
                                <img src="../../../Images/reference.gif" width="40px" border="0"><br />
                                References</center>
                        </span></a></li>
                    </ul>
                </div>
                <h1 class="title">
                    <a href="#"></a>
                </h1>
                <p class="meta">
                    <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>&nbsp;
                </p>
                <div class="entry" style="line-height: 22px; font-size: medium; padding: 0px 0px 10px 15px;">
                   <p class="meta">
                    <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>&nbsp;
                    <span lang="EN-US">Prepare 100 ml aqueous solution of 0.01 M Fe(NH<sub>4</sub>)<sub>2</sub>(SO<sub>4</sub>)<sub>2</sub> 
                    and 0.01 M Fe(NH<sub>4</sub>)(SO<sub>4</sub>)<sub>2 </sub>in <span>&nbsp;</span>1M 
                    HClO<sub>4 </sub>.</span></p>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perform.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment7.perform" CodeFile="~/Experiments/onlineExperiments/Experiment7/perform.aspx.cs"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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

    (function () {
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
            <span class="title">Step By step Procedure</span>
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
                        <li><a href="Perform.aspx"><span>
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
                <div class="entry" style="line-height: 22px; font-size: medium; padding: 0px 0px 10px 15px;">
                    <p class="meta">
                    <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>&nbsp;
                    <span lang="EN-US" style="font-family:Verdana; font-size:small";><b>Step by Step procedure for performing <span>&nbsp;</span>real time 
                    experiment.</b></span></p>
                    <p class="style1">
                        Step - 1. <a href="../../../loginschedule/Register.aspx">Register</a> to perform experiments. If already registered than keep yourself <a href="../../../loginschedule/login.aspx">login</a>.</p>
                    <p class="style1">
                        Step - 2. Make remote desktop connection with the help of ip address: 220.227.100.58:3340
                    <p class="style1">                        
                        Step - 3. Fetch our system remotely with the help of following credentials.
                     <p class="style1">                        
                         <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name:</b>remote
                     <b>Password:</b> remote
                     <p class="style1">
                        Step - 4. Click on the icon NOVA 1.8 to open Nova Software.&nbsp; software & instrument
                         images given below.</p>
                    <p class="style1">
                        Step – 5. Import the FRA file located on the Desktop, file name is ("FRA impedence experiment.nox").<p/>
                    
                    <center>
                    <p>
                    <img src="images/imgExp7Perform1.jpg" height="400" width="600"/></p>
                    <p><br />
                    <img src="images/imgExp7Perform2.jpg" height="300" width="750"/></p>
                    <p><br />
                    <img src="images/imgExp7Perform3.jpg" height="300" width="850"/>/></p>
                    </center>
                    
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


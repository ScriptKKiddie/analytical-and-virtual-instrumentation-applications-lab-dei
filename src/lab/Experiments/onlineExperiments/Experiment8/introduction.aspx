<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="introduction.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment8.introduction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>
    <link href="../../../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../../../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../../../ddtabmenufiles/ddtabmenu.js">
    </script>

    <link rel="stylesheet" type="text/css" href="../../../ddtabmenufiles/glowtabs.css" />
    <link rel="SHORTCUT ICON" href="../../../Images/logo.ico">

    <script language="javascript" type="text/javascript">
        // <!CDATA[

        function imageCDDummy_onclick() {

        }

        function Img8_onclick() {

        }

        // ]]>
    </script>
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
            <ul id="menuTop" runat="server">
                <li><a href="../../../Default.aspx" target="_self">Home</a></li>
                <li><a href="../../../Experiments/experiments.aspx" target="_self">Experiments</a></li>
                <li id="loginschedule" runat="server"><a href="../../../loginschedule/login.aspx"
                    target="_self">Login & Schedule</a></li>
                <li><a href="../../../feedback/Feedbacks.aspx" target="_self">Feedback</a></li>
                <li><a href="../../../others/equipments.aspx" target="_self">Equipments</a></li>
                <li><a href="../../../others/faqs.aspx" target="_self">FAQs</a></li>
                <li><a href="../../../others/people.aspx" target="_self">People</a></li>
                <li><a href="../../../others/contactUs.aspx" target="_self">Contact Us</a></li>
                <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
                <li><a href="../../../others/OnlineSupport.aspx" target="_self">Online Support</a></li>
                <li><a id="logInMenuschedule" href="../../../loginschedule/Schedules.aspx" runat="server">
                    Schedule</a></li>
                <li><a id="logOutMenuschedule" href="../../../loginschedule/viewSchedule.aspx" runat="server">
                    View Schedule</a></li>
            </ul>
        </div>
        <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc">
            <br />
            <span class="title">Introduction</span>
        </div>
        <div id="no_print">
        </div>
        <div style="background-image: url(../../../images/content_bg.jpg); position: relative;
            margin: auto; width: 1024px; min-height: 400px;">
            <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;"><br />
            <asp:Label ID="lblUserName" runat="server" Text="Welcome User" Font-Bold="true" Font-Names="verdana" Font-Size="X-Small" ForeColor="Green"></asp:Label>
                <br />
                <p class="meta">
                    <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>&nbsp;
                </p>
                <div class="entry" style="line-height: 22px; font-size: medium; padding: 0px 0px 10px 15px;">
                    <h1>
                        Electrode Preparation</h1>
                    <br />
                 <center><div style="padding-left: 40px;">
                        <ul type="1">
                            <li>Take mineral oil in water glass.<br/><br />
                                <img id="imageCDDummy" alt="loading..." src="images/1.jpg" height="350" width="300"/></li><br />
                            <li>Add modifier to it.<br/><br />
                                <img id="Img1" alt="loading..." src="images/2.jpg" height="350" width="300"/></li><br />
                            <li>Mix them well.<br/><br />
                                <img id="Img2" alt="loading..." src="images/3.jpg" height="350" width="300"/></li><br />
                            <li>Add grphite powder and again mix well.<br/><br />
                                <img id="Img3" alt="loading..." src="images/4.jpg" height="350" width="300"/></li><br />
                            <li>Homogenize using a mortar and pestle.<br/>
                                <img id="Img4" alt="loading..." src="images/5.jpg" height="350" width="300"/></li><br />
                            <li>Fill the paste in a glass tube.<br/><br />
                                <img id="Img5" alt="loading..." src="images/6.jpg" height="350" width="300"/></li><br />
                            <li>Insert a copper wire for contact from back side.<br/><br />
                                <img id="Img6" alt="loading..." src="images/7.jpg" height="350" width="300"/></li><br />
                                <img id="Img7" alt="loading..." src="images/7(1).jpg" height="350" width="300"/></li><br />
                            <li>Result & Analysis.<br/><br />
                                <img id="Img8" alt="loading..." src="images/Result 1.jpg" height="350" width="380"/> 
                                <span><img id="Img12" alt="loading..." src="images/Result 1(1).jpg" height="50" width="100"/></span>
                                <br/>
                                <img id="Img9" alt="loading..." src="images/Result 2.jpg" height="350" width="420"/><br/>
                                <img id="Img10" alt="loading..." src="images/Result 3.jpg" height="350" width="420"/><br/>
                                <img id="Img11" alt="loading..." src="images/Result 4.jpg" height="350" width="420"/><br/>
                        </ul>
                        <asp:Label ID="Label1" runat="server" Text="Enhancement of peak current with modified (BLACK RICE EXTRACT) CPE in comparison to bare CPE" Font-Names="Verdana" Font-Bold="true" Font-Size="Small"></asp:Label>
                        </center>
                    </div>
                    <br />
                    <br />
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


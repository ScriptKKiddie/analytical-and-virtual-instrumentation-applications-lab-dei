<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VirtualLab.Default"   %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <link href="css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="ddtabmenufiles/ddtabmenu.js">
    
    </script>

    <link rel="stylesheet" type="text/css" href="ddtabmenufiles/glowtabs.css" />
    <link rel="SHORTCUT ICON" href="images/logo.ico">
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
    })(); 897
</script>
<%--Google Analytics code--%>
<body id="Body1" bgcolor="#FFFFFF" runat="server">
    <form id="form1" runat="server">
    <div id="header_main">
        <img src="Images/logo.jpg" align="right" style="padding-right: 20px" height="100px"
            width="120px" alt="logo" />
    </div>
    <!-- <div id="no_print"
         start header -->
    <div id="header">
        <ul id="menuTop" style="font-size: x-small; font-weight: 700;">
            <li><a href="#" target="_self">Home</a></li>
            <li><a href="Experiments/experiments.aspx" target="_self">Experiments</a></li>
            <li><a id="loginschedule" href="loginschedule/login.aspx" target="_self" runat="server">Login & Schedule</a></li>
            <li><a href="feedback/feedbacks.aspx" target="_self">Feedback</a></li>
            <li><a href="others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="others/people.aspx" target="_self">People</a></li>
            <li><a href="others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
            <li><a id="onLineSupport" href="~/others/OnlineSupport.aspx" runat="server">Online Support</a></li>
            <li><a id="logInMenuschedule" href="~/loginschedule/viewSchedule.aspx" runat="server">View Schedule</a></li>
            <li><a id="logOutMenuschedule" href="loginschedule/viewSchedule.aspx" runat="server">View Schedule</a></li>
        </ul>
   
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc">
        <br />
        <span class="title">Analytical & Virtual Instrumentation Applications Lab</span>
    </div>
         
    <div id="no_print">
    </div>
    <div style="background-image: url(images/content_bg.jpg); position: relative; margin: auto;
        width: 1024px; min-height: 400px;">
      


        <div id="contentBox"  style="padding: 0px; padding-left: 50px; padding-right: 50px;"><br />
      <asp:Label ID="lblUserName" runat="server" Text="Welcome User" Font-Bold="true" Font-Names="verdana" Font-Size="Medium" ForeColor="Green"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblHits" runat="server" 
              Font-Bold="True" Font-Names="verdana" Font-Size="Medium" ForeColor="Green"></asp:Label>
           
            <br />
            <h2 class="title" align="center">
                An Introduction</h2>
            <p class="meta">
                <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>
            </p>
            <div style="padding: 10px 30px 5px 30px; font-size: 8; line-height: 22px;">
                <p>
                    Physical distances and the lack of resources make us unable to perform experiments,
                    especially when they involve sophisticated instruments. Also, good teachers are
                    always a scarce resource. Web-based and video-based courses address the issue of
                    teaching to some extent. Conducting joint experiments by two participating institutions
                    and also sharing costly resources has always been a challenge. With the present
                    day internet and computer technologies the above limitations can no more hamper
                    students and researchers in enhancing their skills and knowledge. Also, in a country
                    such as ours, costly instruments and equipment need to be shared with fellow researchers
                    to the extent possible.</p>
                <p>
                    With the concept of virtual labs we emphasize on sharing of costly scientific instruments,
                    which most of the students even don&#39;t know about it. Further it looks forward
                    to train those students who are interested in distance learning but they are unable
                    to do practicals because of high cost of instruments and other experimental constraints.</p>
                <br />
                <h3 style="color: Black;">
                    Objective</h3>
                <ul type="1">
                    <li style="line-height: 35px;">To learn the basic concepts related to Analytical Chemistry.</li>
                    <li>To share costly equipment and resources, which are otherwise available to limited
                        number of users due to constraints on time and geographical distances.</li>
                </ul>
            </div>
            <br />
            <br />
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="images/footer-curve.jpg" width="1024" height="31" alt="" /><div class="copyright">
            Copyright &copy; 2009-2016</div>
        <br />
    </div>
    </form>
</body>
</html>

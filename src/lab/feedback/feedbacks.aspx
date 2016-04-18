<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbacks.aspx.cs" Inherits="VirtualLab.feedback.feedbacks" %>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedbacks.aspx.cs" Inherits="feedback_Feedbacks" %>--%>
<%--<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<%@ Register assembly="MSCaptcha" namespace="MSCaptcha" tagprefix="cc2" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <script type="text/javascript" src="../js/allScripts.js" language="javascript"></script>

    <title>Feedback</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
       
    </script>
    <style type="text/css">
    .space
    {
        width:90px;
    }
        .style1
        {
            font-size:x-small ;
            font-family: Verdana;
            font-weight: bold;
        }
      
      
       .style2
        {
            font-family: Verdana;
        }
        .style3
        {
            width: 169px;
        }
        </style>
    <link rel="stylesheet" type="text/css" href="../ddtabmenufiles/glowtabs.css" />
<link rel="SHORTCUT ICON" href="../images/logo.ico">
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
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="header_main">
        <img src="../Images/logo.jpg" align="right" style="padding-right: 20px" height="100px"
            width="120px" alt="logo" />
    </div>
    <!-- <div id="no_print"
         start header -->
    <div id="header">
        <ul id="menuTop" style="font-size: x-small; font-weight: 700;">
            <li><a href="../Default.aspx" target="_self">Home</a></li>
            <li><a href="../Experiments/experiments.aspx" target="_self">Experiments</a></li>
            <li><a href="../loginschedule/login.aspx" target="_self" id="loginschedule" runat="server">Login & Schedule</a></li>
            <li><a href="#" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
            <li><a href="../others/OnlineSupports.aspx" target="_self">Online Support</a></li>
            <li><a id="logInMenuschedule" href="../loginschedule/Schedules.aspx" runat="server">Schedule</a></li>
            <li><a id="logOutMenuschedule" href="../loginschedule/viewSchedule.aspx" runat="server">View Schedule</a></li>

        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">Online Feedback</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;"><br />
        <asp:Label ID="lblUserName" runat="server" Text="Welcome User" Font-Bold="true" Font-Names="verdana" Font-Size="X-Small" ForeColor="Green"></asp:Label>
            <br />
           
            <div class="entry">
                <br /><center>
                <asp:Label ID="lblResult" runat="server" Text="" Font-Names="verdana" Font-Size="Medium" Enabled="false" Font-Bold="true"></asp:Label>
                
                </center>
                <br />
                <table cellpadding="10px">
                    <tr>
                        <td align="right" valign="top" class="style1" style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana">
                            Name of the Student/Faculty :
                        </td>
                        <td align="left" valign="top">
                            <asp:TextBox ID="txtnamestufac" runat="server"  Width="295px" Height="16"
                            Style="margin-left: 0px; font-family: Verdana; font-size:x-small;"></asp:TextBox>
                        </td>
                        <td></td><td class="style3"></td><td></td>
                    </tr>
                    <tr>
                       <td align="right" valign="top" class="style1" style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana">
                            Name of the Institute :
                        </td>
                        <td align="left" valign="top">
                            <asp:TextBox ID="txtnameinstitute" runat="server" Width="295px" Height="16"
                            Style="margin-left: 0px; font-family: Verdana; font-size:x-small;"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="right" valign="top" class="style1" style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana">
                            Name of the Virtual Lab :
                        </td>
                        <td align="left" valign="top">
                            <asp:TextBox ID="txtNameVlab" runat="server" Width="295px" Text="Analytical & Virtual Instrumentation Applications Lab"
                                Enabled="False" Style="margin-left: 0px; font-family: Verdana; font-size:x-small;" Height="16"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top" class="style1" style="FONT-SIZE: 8pt; FONT-FAMILY: Verdana">
                            Which experiment did you perform ? :
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlPerformExpmnt" runat="server"
                                Width="325px" Style="margin-left: 0px; FONT-SIZE: 7pt; font-family: Verdana" Height="18">
                                <asp:ListItem>Study of Electrochemical Technique, Cyclic Voltammetry</asp:ListItem>
                                <asp:ListItem>Differential Pulse Anodic Stripping Voltammetry</asp:ListItem>
                                <asp:ListItem>Electrochemical behaviour of Ascorbic Acid by CNT Electrode</asp:ListItem>
                                <asp:ListItem>Study of Acetaminophen in Paracetamol Tablet</asp:ListItem>
                                <asp:ListItem>Determination of Heavy Metals in Water Sample Using BDDE</asp:ListItem>
                                <asp:ListItem>Study of ferri/ferro system with MUX MULTI4 Module</asp:ListItem>
                                <asp:ListItem>Cyclic Voltammetry(Simulation)</asp:ListItem>
                                <asp:ListItem>Polarography (Simulation)</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <br />
                <table cellpadding="10px">
                    <tr>
                        <th align="left" style="FONT-SIZE: 10pt; color:#0E91E3; FONT-FAMILY: Verdana">
                            1) Please tell your rating with the following statements.
                        </th>
                        <th align="center" style="padding-left: 20px; color:#0E91E3; FONT-SIZE: 10pt; FONT-FAMILY: Verdana">
                            Excellent
                        </th>
                        <th align="center" style="padding-left: 20px; color:#0E91E3; FONT-SIZE: 10pt; FONT-FAMILY: Verdana">
                            Very Good
                        </th>
                        <th align="center" style="padding-left: 20px; color:#0E91E3; FONT-SIZE: 10pt; FONT-FAMILY: Verdana">
                            Good
                        </th>
                        <th align="center" style="padding-left: 20px; color:#0E91E3; FONT-SIZE: 10pt; FONT-FAMILY: Verdana">
                            Average
                        </th>
                        <th align="center" style="padding-left: 20px; color:#0E91E3; FONT-SIZE: 10pt; FONT-FAMILY: Verdana">
                            Poor
                        </th>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                                        
                    <tr align="center">
                   
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            a) To what degree was the actual lab environment<p> 
                                <span style="padding-left: 20px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">simulated ?</span></p>
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1aexcellent" runat="server" GroupName="third" 
                                Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1aVgood" runat="server" GroupName="third" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1aGood" runat="server" GroupName="third" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1aAverage" runat="server" GroupName="third" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1aPoor" runat="server" GroupName="third" />
                        </td>
                    </tr>
                    <tr>
                    <td class="style2">&nbsp;</td>
                    </tr>
                    <tr align="center">
                       <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            b) The manuals were found to be helpful.
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1bexcellent" runat="server" GroupName="fourth" 
                                Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1bVgood" runat="server" GroupName="fourth" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1bGood" runat="server" GroupName="fourth" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1bAverage" runat="server" GroupName="fourth" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1bPoor" runat="server" GroupName="fourth" />
                        </td>
                    </tr>
                    <tr>
                    <td class="style2">&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            c) The results of experiment were easily interpretable.
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1cexcellent" runat="server" GroupName="five" 
                                Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1cVgood" runat="server" GroupName="five" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1cGood" runat="server" GroupName="five" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1cAverage" runat="server" GroupName="five" />
                        </td>
                        <td>
                            <asp:RadioButton ID="rdo1cPoor" runat="server" GroupName="five" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <p style="FONT-SIZE: 10pt; color:#0E91E3; FONT-FAMILY: Verdana" class="style1">
                    2)&nbsp; How helpful you feel the system is ?</p>
                    <b><br /></b>
                <asp:TextBox ID="txtAnswer2" runat="server" Rows="5" Columns="60" 
                    TextMode="MultiLine"></asp:TextBox><br />
                <br />
                    <span style="FONT-SIZE: 10pt; color:#0E91E3; FONT-FAMILY: Verdana" class="style1"> 3) Please answer the following questions.</span><b>
                <p><br />
                    
                <table cellpadding="15px">
                    <tr>
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            a) Did you get the feel of "actual lab" while performing the experiments ?
                        </td>
                        <td align="left" style="padding-left: 10px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3aYes" runat="server" GroupName="nine" Checked="true"
                                Text="Yes" />
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3aNo" runat="server" GroupName="nine" Text="No" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            b) Did you go through the manual/step by step method before performing the experiments live ?
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3bYes" runat="server" GroupName="ten" Checked="true"
                                Text="Yes" />
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3bNo" runat="server" GroupName="ten" Text="No" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            c) Could you measure and analyze the data successfully ?
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3cYes" runat="server" GroupName="eleven" Checked="true"
                                Text="Yes" />
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3cNo" runat="server" GroupName="eleven" Text="No" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            d) Could you compare your results with the given typical results ?
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3dYes" runat="server" GroupName="twelve" Checked="true"
                                Text="Yes" />
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3dNo" runat="server" GroupName="twelve" Text="No" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            e) Do you think performing experiments through virtual labs are more challenging than the real lab experiements ?
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3eYes" runat="server" GroupName="thirteen" Checked="true"
                                Text="Yes" />
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3eNo" runat="server" GroupName="thirteen" Text="No" />
                        </td>
                    </tr>
                     <tr>
                        <td align="left" style="padding-left: 40px; FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            f) Do you think doing experiments through virtual lab gives scope for more innovative and creative research work ?
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3fYes" runat="server" GroupName="fourteen" Checked="true"
                                Text="Yes" />
                        </td>
                        <td align="left" style="padding-left: 10px;FONT-SIZE: 8pt; FONT-FAMILY: Verdana" class="style1">
                            <asp:RadioButton ID="rdo3fNo" runat="server" GroupName="fourteen" Text="No" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                
                <p>
                <span style="FONT-SIZE: 10pt; color:#0E91E3; FONT-FAMILY: Verdana" class="style1">4)&nbsp; Specify problemes/difficulites you faced while 
                    performing the experiments.</span><b><br /><br />
                    <asp:TextBox ID="txtAnswer4" runat="server" Rows="5" Columns="60" 
                        TextMode="MultiLine"></asp:TextBox>
                    <br /><br />
                </p>
                <br />
               
                
                <p>
                <span <span style="FONT-SIZE: 10pt; color:#0E91E3; FONT-FAMILY: Verdana" class="style1">5)&nbsp; Give most interesting thing about the experiments.</span><b><br /><br />
                    <asp:TextBox ID="txtAnswer5" runat="server" Rows="5" Columns="60" 
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                </p>
                <br />
                <br />
               <%-- <cc2:CaptchaControl ID="ccJoin" runat="server" 
                                            CaptchaBackgroundNoise="High" CaptchaLength="5" CaptchaHeight="60" 
                                            CaptchaWidth="200" CaptchaLineNoise="none" CaptchaMinTimeout="5" 
                                            CaptchaMaxTimeout="240" FontColor="Blue" /><br />
                    <asp:TextBox ID="txtCaptchFeedbacks" runat="server"></asp:TextBox>--%>
                <%--<recaptcha:RecaptchaControl ID="recaptcha" runat="server" 
                            PublicKey="6Ld0ocwSAAAAAFQzI8GTY0bexrsPUNGX8W-R1gHz"  
                            PrivateKey="6Ld0ocwSAAAAAKKz_IWQVtdZ49rXTm0A_CuVNShv" TabIndex="5" />--%>
                    <asp:Button ID="Button1" runat="server" Text="Submit" Height="29px" 
                        Width="115px" onclick="Button1_Click" OnClientClick="return confirm('Are you sure,Do You want to Add this Record ?');"/>
                <br />
               <%-- <asp:Label Visible=false ID="lblResult" runat="server" Font-Names="verdana" Font-Size="8"/>--%>
                <br />
                <p style="text-align: center">
                    &nbsp;</p>
            </div>
            <br />
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="../images/footer-curve.jpg" width="1024" height="31" alt="" /><div class="copyright">
            Copyright &copy; 2009-2012</div>
        <br />
    </div>
    </form>
</body>

</html>


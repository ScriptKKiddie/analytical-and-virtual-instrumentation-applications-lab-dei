<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs"
    Inherits="VirtualLab.login___schedule.forgotPassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>

    <script type="text/javascript" language="javascript">

        function delayRedirect(url) {
            var Timeout = setTimeout("window.location='" + url + "'", 10000);
        }
    </script>

    <style type="text/css">
        .style1
        {
            width: 98px;
            padding-left: 20px;
        }
    </style>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
    </script>

    <link rel="stylesheet" type="text/css" href="../ddtabmenufiles/glowtabs.css" />
</head>
<body id="Body1" bgcolor="#FFFFFF" runat="server">
    <form id="form1" runat="server">
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
            <li><a href="login.aspx" target="_self">Login & Schedule</a></li>
            <li><a href="../feedback/feedbacks.aspx" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc; top: 0px; left: 0px;">
        <br />
        <span class="title">Forgot Password</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
            <br />
           
            <h1 class="title">
                <a href="#"></a></h1>
            <p class="meta" 
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold; font-style: normal">
                <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>
                Please Enter the detials to recieve your password
            </p>
            <br />
            <br />
            <div class="entry" align="center">
                <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse;
                    background: #EFF3FB;">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="background-color: #D2E9F7; font-size: 1.5em;
                                        color: #000000;">
                                        Forgot Your Password?
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        Enter your User Name &amp; Email to receive your password.
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <asp:Label ID="UserNameLabel" runat="server">User Name: <font color="red">*</font></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                        <cc1:ValidatorCalloutExtender ID="UserNameRequired_ValidatorCalloutExtender" runat="server"
                                            Enabled="True" TargetControlID="UserNameRequired">
                                        </cc1:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <asp:Label ID="emailLabel" runat="server">Email Id: <font color="red">*</font></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="emailIdTB" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailIdTB"
                                            ErrorMessage="Email Id is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                        <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                                            runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                        </cc1:ValidatorCalloutExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False">                                    
                                        </asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery1"
                                            OnClick="SubmitButton_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtualabConnectionString %>"
                SelectCommand="SELECT [password] FROM [loginTable] WHERE (([login_id] = @login_id) AND ([mailID] = @mailID))">
                <SelectParameters>
                    <asp:Parameter Name="login_id" Type="String" />
                    <asp:Parameter Name="mailID" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="../images/footer-curve.jpg" width="1024" height="31" alt="" /><div class="copyright">
            Copyright &copy; 2009-2016</div>
        <br />
    </div>
    </form>
</body>
</html>

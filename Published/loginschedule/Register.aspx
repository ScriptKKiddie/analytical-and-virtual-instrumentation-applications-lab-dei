<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VirtualLab.login___schedule.Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Register</title>

    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
    </script> 

    <link rel="stylesheet" type="text/css" href="../ddtabmenufiles/glowtabs.css" />

    <script language="javascript" type="text/javascript">
        function checkusername(txt) {
            var valusername = txt;
            if (valusername != "") {
                PageMethods.checkUserName(valusername, OnSucceeded, OnFailed);
            }
        }
        function OnSucceeded(result, userContext, methodName) {
            var userarray = result;
            document.getElementById('Label1').innerHTML = userarray;
            if (result == "<font color='green'>UserName Available!</font>") {
                document.getElementById('inpHide').value = 'true';
            }
            else {
                document.getElementById('inpHide').value = 'false';
            }
        }
        function OnFailed(error, userContext, methodName) {
            alert("An Error Occured During Check Your UserName. Please Try After Some Time!!!");
        }

        function checkPassword(txt) {
            var password = txt;
            //alert(txt)
            var cnfrmPass = document.getElementById('passwordTB').value;
            //alert(cnfrmPass);
            if (txt != cnfrmPass) {
                alert('Password Mismatch');
                document.getElementById('passwordError').innerHTML = "<font color='red'>Mismatch</font>";
                document.getElementById('passwordTB').focus();
            }
        }   
    </script>

    <style type="text/css">
        .test
        {
            width: 200px;
            padding-left: 10px;
            text-align:left;
        }      
    </style>
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
            <li><a href="login.aspx" target="_self">Login & Schedule</a></li>
            <li><a href="../feedback/feedback.aspx" target="_self">Feedback</a></li>
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
        <span class="title">Register</span>
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
                Please enter the the details to register to Lab
            </p>
            <br />
            <br />
                                    <div class="entry" align="center">
                                        <input id="inpHide" type="hidden" value="false" runat="server" />
                                        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
                                        </asp:ScriptManager>
                                        <table border="1" cellpadding="2" cellspacing="0" style=" background:#EFF3FB; width: 50%;">
                                            <tr>
                                                <td align="center" colspan="2" style="background-color: #D2E9F7; font-size: 1.5em;
                                                    color: #000000;">
                                                    Register to Lab
                                                </td>
                                            </tr>
                                            <tr>
                                                <td rowspan="2">
                                                    <table border="0" cellpadding="2">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <strong>Name : <font color="red">*</font> </strong>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="nameTB" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTB"
                                                                        Display="None" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                                                                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                                                                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                                                    </cc1:ValidatorCalloutExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <strong>Username : <font color="red">*</font> </strong>
                                                                </td>
                                                                <td>
                                                                    <asp:UpdatePanel runat="server" ID="up1">
                                                                        <ContentTemplate>
                                                                            <asp:TextBox runat="server" ID="userNameTB" onblur="checkusername(this.value);" />
                                                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="userNameTB"
                                                                                Display="None" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
                                                                            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender"
                                                                                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
                                                                            </cc1:ValidatorCalloutExtender>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <strong>Password : <font color="red">*</font> </strong>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="passwordTB" runat="server" TextMode="Password"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTB"
                                                                        Display="None" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                                                                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender"
                                                                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
                                                                    </cc1:ValidatorCalloutExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <strong>Confirm Password : <font color="red">*</font> </strong>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="confrmTB" runat="server" TextMode="Password" onblur="checkPassword(this.value);"></asp:TextBox>
                                                                    <asp:Label ID="passwordError" runat="server" Text=""></asp:Label>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confrmTB"
                                                                        Display="None" ErrorMessage="Confirm password is required"></asp:RequiredFieldValidator>
                                                                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender"
                                                                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator4">
                                                                    </cc1:ValidatorCalloutExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="true">Email Id : <font color="red">*</font></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="emailTB" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="emailTB"
                                                                        Display="None" ErrorMessage="Email Id is required"></asp:RequiredFieldValidator>
                                                                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender"
                                                                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator5">
                                                                    </cc1:ValidatorCalloutExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <asp:Label ID="Label3" runat="server" Text="Intitution :" Font-Bold="true"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="instituteTB" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <asp:Label ID="Label4" runat="server" Text="Designation :" Font-Bold="true"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="desisnationTB" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <asp:Label ID="Label5" runat="server" Text="Mobile Number :" Font-Bold="true"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="phNumberTB" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center">
                                                                    <asp:Label ID="cnfrmLabel" runat="server" ForeColor="Red"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center" colspan="2">
                                                                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <br />
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" DataSourceMode="DataReader"
                                        ConnectionString="<%$ ConnectionStrings:LABConnectionString %>" DeleteCommand="DELETE FROM [loginTable] WHERE [login_id] = @login_id"
                                        InsertCommand="INSERT INTO [loginTable] ([login_id], [password], [name], [institution], [mailID], [designation], [phNumber]) VALUES (@login_id, @password, @name, @institution, @mailID, @designation, @phNumber)"
                                        SelectCommand="SELECT * FROM [loginTable]" UpdateCommand="UPDATE [loginTable] SET [password] = @password, [name] = @name, [institution] = @institution, [mailID] = @mailID, [designation] = @designation, [phNumber] = @phNumber WHERE [login_id] = @login_id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="login_id" Type="String" />
                                        </DeleteParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="password" Type="String" />
                                            <asp:Parameter Name="name" Type="String" />
                                            <asp:Parameter Name="institution" Type="String" />
                                            <asp:Parameter Name="mailID" Type="String" />
                                            <asp:Parameter Name="designation" Type="String" />
                                            <asp:Parameter Name="phNumber" Type="Decimal" />
                                            <asp:Parameter Name="login_id" Type="String" />
                                        </UpdateParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="login_id" Type="String" />
                                            <asp:Parameter Name="password" Type="String" />
                                            <asp:Parameter Name="name" Type="String" />
                                            <asp:Parameter Name="institution" Type="String" />
                                            <asp:Parameter Name="mailID" Type="String" />
                                            <asp:Parameter Name="designation" Type="String" />
                                            <asp:Parameter Name="phNumber" Type="Decimal" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>
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

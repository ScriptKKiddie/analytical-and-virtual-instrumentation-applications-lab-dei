<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateNewExperiments.aspx.cs" Inherits="VirtualLab.Experiments.CreateNewExperiments" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Create Experiments</title>

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
        .style1
        {
            height: 17px;
        }
        .style2
        {
            width: 458px;
        }
        .style3
        {
            width: 200px;
        }
    </style>
</head>
<body id="Body1" bgcolor="#FFFFFF" runat="server">
    <form id="Form2" runat="server">
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
        <span class="title">Create New experiments</span>
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
               
            </p>
            <br />
            <br />
                                    <div class="entry" align="center">
                                        <input id="inpHide" type="hidden" value="false" runat="server" />
                                        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
                                        </asp:ScriptManager>
                                        <table border="1" cellpadding="2" cellspacing="0" style=" width: 100%;" align="center">
                                            <tr>
                                                <td align="center" colspan="2" style="background-color: #D2E9F7; font-size: 1.5em;
                                                    color: #000000;" class="style2">
                                                   Enter The Detail To Create New Experiments for Lab
                                                </td>
                                            </tr>
                                            <tr>
                                                <td rowspan="2" class="style2" align="center" style="width:100%;">
                                                    <table border="0" cellpadding="2" width="700px">
                                                        <tbody>
                                                            <tr>
                                                                <td class="style3">
                                                                    <asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <strong>Experiment Name : <font color="red">*</font> </strong>
                                                                </td>
                                                                <td align="left">
                                                                    <asp:TextBox ID="txtname" runat="server" Width="400px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style1" colspan="2" align="right">
                                                                    
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                                                        Display="None" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                                                                    <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender"
                                                                        runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                                                                    </cc1:ValidatorCalloutExtender>
                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    <strong>Experiment Type : <font color="red">*</font> </strong>
                                                                </td>
                                                                <td align="left">
                                                                    
                                                                    <asp:UpdatePanel runat="server" ID="up1">
                                                                        <ContentTemplate>
                                                                         
                                                                         <%--<asp:TextBox ID="userNameTB" runat="server"></asp:TextBox>--%>
                                                                            <asp:RadioButtonList ID="rblexptyp" runat="server" 
                                                                                RepeatDirection="Horizontal" Font-Bold="True" Width="300px">
                                                                                <asp:ListItem>Through Web</asp:ListItem>
                                                                                <asp:ListItem>Through R.D.P.</asp:ListItem>
                                                                            </asp:RadioButtonList>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" align="center">
                                                                   
                                                                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    &nbsp;</td>
                                                                <td align="right">
                                                                    <asp:RequiredFieldValidator ID="rfvexptype" runat="server" 
                                                                        ControlToValidate="rblexptyp" ErrorMessage="Select Experiment Type"></asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" align="center">
                                                                    
                                                                    <asp:Label ID="cnfrmLabel" runat="server" ForeColor="Red"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test" align="right">
                                                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" ForeColor="Blue" 
                                                                        width="100px" onclick="btnsubmit_Click" />
                                                                </td>
                                                                <td align="left"> 
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                                    <asp:Button ID="btnclear" runat="server" Width="100px" Text="Clear" 
                                                                        ForeColor="Blue" CausesValidation="False" onclick="btnclear_Click" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style3">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test" colspan="2" align="center" width="700px">

                                                                <asp:Panel ID="grdpanel" runat="server" Width="600px" ScrollBars="Auto">
                            <asp:GridView ID="GridView1" Width="600px" runat="server" 
                                AutoGenerateColumns="False" 
                                onselectedindexchanged="grdlnkbtnedit" AllowPaging="True" 
                                onpageindexchanging="GridView1_PageIndexChanging" CellPadding="4" EnableModelValidation="True" AllowSorting="True" 
                                                                        BackColor="White" BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px">
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" HorizontalAlign="Center" ForeColor="#003399"/>
                                <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle Font-Bold="True" BackColor="#003399" Font-Names="Times New Roman"
                                    Font-Size="15px" ForeColor="#CCCCFF" />
                                <AlternatingRowStyle HorizontalAlign="Center" />
                                <Columns>
                                 <%--<asp:TemplateField HeaderText="SR.No" ItemStyle-Width="10px">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="10px" />
                                        </asp:TemplateField>--%>
                                        <asp:BoundField DataField="EXPID" HeaderText="Exp ID" ItemStyle-Width="200px" Visible="true">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                        <asp:BoundField DataField="EXP_NAME" HeaderText="Experiment Name" ItemStyle-Width="150px">
                                    <ItemStyle Width="300px" />
                                    </asp:BoundField>
                                        <asp:BoundField DataField="EXP_TYPE" HeaderText="Experiment Type" ItemStyle-Width="150px">
                                    <ItemStyle Width="150px" />
                                    </asp:BoundField>
                                        <asp:TemplateField HeaderText="Action" ItemStyle-Width="100px">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="grdlnkbtnedit" CausesValidation="false" runat="server" Text="Edit" OnClick="grdlnkbtnedit"></asp:LinkButton>
                                                </ItemTemplate>
                                                <ItemStyle Width="90px" />
                                            </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <table width="360px" cellpadding="0" cellspacing="0" border="0" style="font-family: Times New Roman;
                                        font-size: 14px; color: White;">
                                        <tr style="background-color: Red">
                                        <th style="width:10px"></th>
                                            <th style="width: 200px;">
                                                ExpID
                                            </th>
                                            <th>
                                                Experiment Name
                                            </th>
                                            <th>
                                                Experiment Type
                                            </th>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="13" style="color: Black;">
                                                <b>DATA NOT AVIALABLE</b>
                                            </td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                            </asp:GridView>                             
                        </asp:Panel>     
                          </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                                                                          
                                                           
                                                            
                                                           
                                                            
                                                            <tr>
                                                                <td style="text-align: center" colspan="2">
                                                                    &nbsp;</td>
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
                                        ConnectionString="<%$ ConnectionStrings:LABConnectionString %>"
                                        SelectCommand="SELECT * FROM [CREATE_EXP]">
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

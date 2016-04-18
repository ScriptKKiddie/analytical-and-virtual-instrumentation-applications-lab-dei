<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Schedule/CreateSchedule.aspx.cs" Inherits="VirtualLab.Schedule.CreateSchedule" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Create Schedule</title>

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
        .style4
        {
            width: 200px;
            padding-left: 10px;
            text-align: left;
            height: 19px;
        }
        .style5
        {
            height: 15px;
        }
        .style7
        {
            width: 200px;
            padding-left: 10px;
            text-align: left;
            height: 17px;
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
            <li><a href="../loginschedule/login.aspx" target="_self">Login & Schedule</a></li>
            <li><a href="../feedback/feedbacks.aspx" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
                <%--<li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>--%>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc; top: 0px; left: 0px;">
        <br />
        <span class="title">Create Schedule</span>
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
                                        <table border="0" cellpadding="0" cellspacing="0" 
                                            style=" background:#FFFFFF; width: 100%;">
                                            <tr>
                                                <td align="left" colspan="2" style="font-size: 1.5em;
                                                    color: #FF0000;">
                                                    Read instructions before scheduling:   
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" style="color: #008080; font-size: medium;">
                                                    1. We are providing only 30 minutes to perform a experiment.
                                                    </td>
                                                    
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" style="color: #008080; font-size: medium;">
                                                    2. Please select the day you want to perform experiment.
                                                    </td>
                                                    
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" style="color: #008080; font-size: medium;">
                                                    3. Please select starting time of experiment.
                                                    </td>
                                                    
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" style="color: #008080; font-size: medium;">
                                                    4. Please select your experiment which you want to be perform.
                                                    </td>
                                                    
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" style="color: #008080; font-size: medium;">
                                                    5. Now press submit button for be scheduled for experiment.
                                                    </td>
                                                    
                                            </tr>
                                            <tr>
                                               <td class="4" align="left" style="color: #008080; font-size: medium;">
                                               6. Out of 30 minutes you will be provided only 20 minutes to interect with the equipment.
</td>
                                            </tr>
                                            <tr>
                                                <td rowspan="2">
                                                    <table border="0" cellpadding="2">
                                                        <tbody>
                                                            <tr>
                                                                <td colspan="2">
                                                                    
                                                                </td> <td colspan="2"></td>
                                                            </tr>
                                                             <tr>
                                                                <td colspan="2">
                                                                    
                                                                </td> <td colspan="2"></td>
                                                            </tr>
                                                             <tr>
                                                                <td colspan="2">
                                                                    
                                                                </td> <td colspan="2"></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="4" align="center" style="color: #FF0000; font-size: large">
                                                                Please Enter the the details to Create Schedule:    
                                                                </td> 
                                                            </tr>
                                                             <tr>
                                                                <td colspan="2">
                                                                    
                                                                </td> <td colspan="2"></td>
                                                            </tr>
                                                             <tr>
                                                                <td >
                                                                    
                                                                </td> 
                                                                <td class="test">
                                                                    <strong>Select date: <font color="red">*</font> </strong>
                                                                </td>
                                                                                                                    <td align="left">
                                                                    <asp:TextBox ID="txtdate" runat="server" Width="150px"></asp:TextBox>
                                                                    <cc1:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
            Enabled="True" TargetControlID="txtdate" Format="dd/MM/yyyy">
            
        </cc1:CalendarExtender>
                                                                                                                    </td>
<td>
                                                                    <asp:RequiredFieldValidator ID="rfvdate" runat="server" ControlToValidate="txtdate"
                                                                        Display="None" ErrorMessage="Select Date" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                    <cc1:ValidatorCalloutExtender ID="rfvdate_ValidatorCalloutExtender"
                                                                        runat="server" Enabled="True" TargetControlID="rfvdate">
                                                                    </cc1:ValidatorCalloutExtender>
                                                                                                                    </td>                                                            </tr>
                                                            <tr>
                                                                <td colspan="4"> 
                                                                    
                                                                    &nbsp;</td> 
                                                            </tr>

                                                            <tr>
                                                            <td></td>
                                                                <td class="test">
                                                                    <strong>Select Experiment Type : <font color="red">*</font>  </strong>
                                                                </td>
                                                                <td align="left">
                                                                    <asp:RadioButtonList ID="RBLEXPTYPE" runat="server" 
                                                                        RepeatDirection="Horizontal" AutoPostBack="True" Font-Bold="True" 
                                                                        ontextchanged="RBLEXPTYPE_TextChanged" CausesValidation="True">
                                                                    <asp:ListItem>Through Web</asp:ListItem>
                                                                    <asp:ListItem>Through R.D.P.</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                                </td>

                                                                 <td>
                                                                    <asp:RequiredFieldValidator ID="rfvexptype" runat="server" ControlToValidate="RBLEXPTYPE"
                                                                        Display="None" ErrorMessage="Select Experiment Type"></asp:RequiredFieldValidator>
                                                                    <cc1:ValidatorCalloutExtender ID="rfvexptype_ValidatorCalloutExtender"
                                                                        runat="server" Enabled="True" TargetControlID="rfvexptype">
                                                                    </cc1:ValidatorCalloutExtender>
                                                                </td>
                                                                
                                                            </tr>
                                                            <tr>
                                                               
                                                                <td colspan="4"> 
                                                                    
                                                                    &nbsp;</td> 
                                                            </tr>
                                                           
                                                            <tr>
                                                            <td></td>
                                                                <td class="test">
                                                                    <strong>Select Experiment Name :<font color="red">*</font>  </strong>
                                                                      </td>
                                                                <td align="left">
                                                                    
                                                                                                                                             
                                                                         
                                                                    <asp:DropDownList ID="ddlexperiments" runat="server" Width="400px">
                                                                    </asp:DropDownList>
                                                                   
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr><td></td><td>&nbsp;</td> </td><td></td><td></td></tr>
                                                                                                                <tr><td></td>
                                                                <td class="test">
                                                                    <strong>Start Time: <font color="red">*</font> </strong>
                                                                </td>
                                                                                                                    <td align="left">
                                                                    
                                                                                                                                         
                                                                            <asp:DropDownList ID="ddlstarttime" runat="server" AutoPostBack="True" 
                                                                                onselectedindexchanged="ddlstarttime_SelectedIndexChanged" 
                                                                        Width="150px" CausesValidation="True">
                                                                                <asp:ListItem>---Select---</asp:ListItem>
                                                                                <asp:ListItem>10:00AM</asp:ListItem>
                                                                                <asp:ListItem>10:30AM</asp:ListItem>
                                                                                <asp:ListItem>11:00AM</asp:ListItem>
                                                                                <asp:ListItem>11:30AM</asp:ListItem>
                                                                                <asp:ListItem>12:00PM</asp:ListItem>
                                                                                <asp:ListItem>12:30PM</asp:ListItem>
                                                                                <asp:ListItem>1:00PM</asp:ListItem>
                                                                                <asp:ListItem>1:30PM</asp:ListItem>
                                                                                <asp:ListItem>2:00PM</asp:ListItem>
                                                                                <asp:ListItem>2:30PM</asp:ListItem>
                                                                                <asp:ListItem>3:00PM</asp:ListItem>
                                                                                <asp:ListItem>3:30PM</asp:ListItem>
                                                                                <asp:ListItem>4:00PM</asp:ListItem>
                                                                                <asp:ListItem>4:30PM</asp:ListItem>
                                                                            </asp:DropDownList> 
                                                                                                                                                                                                                            </td><td>
                                                                              &nbsp;</td></tr>                                                                                                                                                   <tr><td colspan="2">
                                                                                                        
                                                                                                                                                                        &nbsp;</td> <td colspan="2" align="left">
                                                                                                                                           
                                                                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                                                                                                                                                        </td></tr>
                                                                                                                                                                                                                        <tr><td></td> 
                                                                <td class="test">
                                                                    <strong>End Time : <font color="red">*</font>  </strong>
                                                                </td>
                                                                        <td align="left">
                                                                    
                                                                                                                                         
                                                                            <asp:DropDownList ID="ddlendtime" runat="server" AutoPostBack="True" 
                                                                                onselectedindexchanged="ddlEndtime_SelectedIndexChanged1" 
                                                                        Width="150px" CausesValidation="True" Enabled="False">
                                                                                <asp:ListItem>---Select--- </asp:ListItem>
                                                                                <asp:ListItem>10:30AM</asp:ListItem>
                                                                                <asp:ListItem>11:00PM</asp:ListItem>
                                                                                <asp:ListItem>11:30PM</asp:ListItem>
                                                                                <asp:ListItem>12:00PM</asp:ListItem>
                                                                                <asp:ListItem>12:30PM</asp:ListItem>
                                                                                <asp:ListItem>1:00PM</asp:ListItem>
                                                                                <asp:ListItem>1:30PM</asp:ListItem>
                                                                                <asp:ListItem>2:00PM</asp:ListItem>
                                                                                <asp:ListItem>2:30PM</asp:ListItem>
                                                                                <asp:ListItem>3:00PM</asp:ListItem>
                                                                                <asp:ListItem>3:30PM</asp:ListItem>
                                                                                <asp:ListItem>4:00PM</asp:ListItem>
                                                                                <asp:ListItem>4:30PM</asp:ListItem>
                                                                                <asp:ListItem>5:00PM</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                                                                                                                                                                                                                                         </td><td>
                                                                                                                                           
                                                                                                                                                                                                                                &nbsp;</td></tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                                                                                           
                                                                            </td>
                                                            </tr>
                                                            <tr><td></td>
                                                                <td class="test">
                                                                    &nbsp;</td>
                                                                <td align="left">
                                                                           
                                                                            &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="4" align="center">
                                                                    
                                                                                                                                    
                                                                    <asp:Label ID="cnfrmLabel" runat="server" ForeColor="Red"></asp:Label>
                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr><td></td>
                                                                <td class="test" align="right">
                                                                    
                                                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" ForeColor="Blue" 
                                                                        width="100px" onclick="btnsubmit_Click1" />
                                                                    
                                                                </td>
                                                                <td align="left">
                                                                    
                                                                    <asp:Button ID="btnclear" runat="server" Width="100px" Text="Clear" 
                                                                        ForeColor="Blue" CausesValidation="False" onclick="btnclear_Click1" />
                                                                    
                                                                </td><td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="test">
                                                                    &nbsp;</td><td class="test">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td><td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    
                                                                </td> 
                                                                <td class="test">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    
                                                                                                                                             
                                                                         
                                                                            &nbsp;</td> <td>
                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style7">
                                                                    </td>
                                                                <td align="left" class="style1">
                                                                    <asp:Label ID="lblid" runat="server"></asp:Label>
                                                                    </td>
                                                                     <td class="style1">
                                                                    
                                                                         &nbsp;</td>
                                                                 <td class="style1">
                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style5">
                                                                    &nbsp;
                                                                </td> <td class="style5">
                                                                    
                                                                    &nbsp;</td> <td class="style5">
                                                                    
                                                                    &nbsp;</td> <td class="style5">
                                                                    
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style4">
                                                                    </td>
                                                                <td align="left">
                                                                    </td><td align="left">
                                                                    </td><td align="left">
                                                                    </td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td colspan="4" align="center">

                                                                <asp:Panel ID="grdpanel" runat="server" Width="800px" ScrollBars="Auto">
                            <asp:GridView ID="GridView1" Width="800px" runat="server" 
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
                                        <asp:BoundField DataField="cs.SCHEDULE_ID" HeaderText="Sr No." ItemStyle-Width="200px" Visible="true">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                     <asp:BoundField DataField="cs.login_id" HeaderText="User Name" ItemStyle-Width="150px">
                                    <ItemStyle Width="100px" />
                                    
                                    </asp:BoundField>

                                    <asp:BoundField DataField="cs.SCHEDULE_DATE" HeaderText="Date" ItemStyle-Width="150px">
                                    <ItemStyle Width="100px" />                                    
                                    </asp:BoundField>
                                        <asp:BoundField DataField="ce.EXP_NAME" HeaderText="Experiment Name" ItemStyle-Width="300px">
                                    <ItemStyle Width="300px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cs.START_TIME" HeaderText="Start Time" ItemStyle-Width="100px">
                                    <ItemStyle Width="100px" />                                    
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cs.END_TIME" HeaderText="End Time" ItemStyle-Width="100px">
                                    <ItemStyle Width="100px" />                                    
                                    </asp:BoundField>
                                        <asp:BoundField DataField="cs.EXP_TYPE" HeaderText="Exp. Type" ItemStyle-Width="100px">
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cs.SCHEDULE_STATUS" HeaderText="Exp. Status" ItemStyle-Width="100px">
                                    <ItemStyle Width="100px" />
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
                                                Sr.No
                                            </th>
                                            <th>
                                                User Name
                                            </th>
                                            <th>
                                                Date
                                            </th>
                                            <th>
                                                Experiment Name
                                            </th>
                                            <th>
                                                Start Time
                                            </th>
                                            <th>
                                                End Time
                                            </th>
                                            <th>
                                                Exp.Type
                                            </th>
                                            <th>
                                                Exp. Status
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
                                                                <td colspan="4">
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
            Virtual Environmental Application Lab Sponsored by N.M.E.I.C.T.,M.H.R.D.,Govt of India Copyright @2009 to 2016</div>
        <br />
    </div>
    </form>
</body>
</html>

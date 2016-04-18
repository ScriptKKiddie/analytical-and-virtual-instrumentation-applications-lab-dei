<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="VirtualLab.loginschedule.Schedules" %>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Schedules.aspx.cs" Inherits="loginschedule_Schedules" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>

    <script type="text/javascript" language="javascript">
    </script>

    <link rel="stylesheet" type="text/css" href="../css/GridViewCss/ChromeBlackGridView.css" />
    <style type="text/css">
        .style1
        {
            width: 58%;
            height: 140px;
        }
        .style21
        {
            width: 427px;
            height: 21px;
        }
        .style3
        {
            width: 427px;
            height: 108px;
        }
        .style4
        {
            height: 108px;
        }
        .style5
        {
            height: 21px;
        }
        .style25
        {
            width: 403px;
        }
    </style>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
    </script>

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
<body id="Body1" bgcolor="#FFFFFF" runat="server">
    <form id="form2" runat="server">
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
            <li><a href="login.aspx" target="_self" id="loginschedule" runat="server">Login & Schedule</a></li>
            <li><a href="../feedback/Feedbacks.aspx" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
            <li><a id="onLineSupport" href="~/others/OnlineSupport.aspx" runat="server">Online
                Support</a></li>
            <li><a id="logInMenuschedule" href="#" runat="server">Schedule</a></li>
            <li><a id="logOutMenuschedule" href="../loginschedule/viewSchedule.aspx" runat="server">
                View Schedule</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">Schedule</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
        <asp:Label ID="lblUserName" runat="server" Text="Welcome User" Font-Bold="true" Font-Names="verdana" Font-Size="X-Small" ForeColor="Green"></asp:Label>
            <br />
            <table>
                <tr>
                    <td align="left" valign="top" style="font-family: Verdana; font-size: medium; color: Maroon;">
                        <asp:Label ID="lblInstructions" Text="Read instructions before scheduling." runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" valign="top" style="font-family: Verdana; font-size: xx-small; color: #0F92E5;">
                        <asp:Label ID="Label7" Text="1. We are providing only 30 minutes to perform a experiment."
                            runat="server"></asp:Label>
                    </td>
                    <br />
                </tr>
                <tr>
                    <td align="left" valign="top" style="font-family: Verdana; font-size: xx-small; color: #0F92E5;">
                        <asp:Label ID="Label3" Text="2. Please select the day you want to perform experiment."
                            runat="server"></asp:Label>
                    </td>
                    <br />
                </tr>
                <tr>
                    <td align="left" valign="top" style="font-family: Verdana; font-size: xx-small; color: #0F92E5;">
                        <asp:Label ID="Label4" Text="3. Please select starting time of experiment." runat="server"></asp:Label>
                    </td>
                    <br />
                </tr>
                <tr>
                    <td align="left" valign="top" style="font-family: Verdana; font-size: xx-small; color: #0F92E5;">
                        <asp:Label ID="Label5" Text="4. Please select your experiment which you want to perform."
                            runat="server"></asp:Label>
                    </td>
                    <br />
                </tr>
                <tr>
                    <td align="left" valign="top" style="font-family: Verdana; font-size: xx-small; color: #0F92E5;">
                        <asp:Label ID="Label6" Text="5. Now press submit button for getting scheduled for experiment."
                            runat="server"></asp:Label>
                    </td>
                    <br />
                </tr>
                <tr>
                    <td align="left" valign="top" style="font-family: Verdana; font-size: xx-small; color: #0F92E5;">
                        <asp:Label ID="Label8" Text="6. Out of 30 minutes you will be provided only 20 minutes to interect with the equipment."
                            runat="server"></asp:Label>
                    </td>
                    <br />
                </tr>
            </table>
            <center>
                <table>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lblError" runat="server" Visible="false" Style="font-size: x-small;
                                font-family: Verdana; color: #FF0000; font-weight: 700;"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td align="left" valign="top">
                            <asp:Label ID="Label2" runat="server" Text="Select Date" Style="font-size: xx-small;
                                font-family: Verdana; font-weight: 700;"></asp:Label>
                        </td>
                        <td align="center" valign="top">
                            <asp:Label ID="lblStartTime" runat="server" Text="Start Time" Style="font-size: xx-small;
                                font-family: Verdana; font-weight: 700;"></asp:Label>
                        </td>
                        <td align="center" valign="top">
                            <asp:Label ID="Label1" runat="server" Text="End Time" Style="font-size: xx-small;
                                font-family: Verdana; font-weight: 700;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top">
                            <asp:TextBox ID="txtCalander" runat="server" Height="15px" Width="84px" Text="Select Date"
                                Style="font-size: xx-small; font-family: Verdana" OnTextChanged="txtCalander_TextChanged"
                                AutoPostBack="true"></asp:TextBox>
                            <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" TargetControlID="txtCalander"
                                Format="dd/MM/yyyy">
                            </cc1:CalendarExtender>
                        </td>
                        <td align="left" valign="top">
                            <asp:DropDownList ID="ddlStartTime" runat="server" Height="16px" AutoPostBack="true"
                                Enabled="false" Style="font-size: xx-small; font-family: Verdana" Width="82px"
                                OnSelectedIndexChanged="ddlStartTime_SelectedIndexChanged">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>10:00 AM</asp:ListItem>
                                <asp:ListItem>10:30 AM</asp:ListItem>
                                <asp:ListItem>11:00 AM</asp:ListItem>
                                <asp:ListItem>11:30 AM</asp:ListItem>
                                <asp:ListItem>12:00 PM</asp:ListItem>
                                <asp:ListItem>12:30 PM</asp:ListItem>
                                <asp:ListItem>01:00 PM</asp:ListItem>
                                <asp:ListItem>01:30 PM</asp:ListItem>
                                <asp:ListItem>02:00 PM</asp:ListItem>
                                <asp:ListItem>03:00 PM</asp:ListItem>
                                <asp:ListItem>03:30 PM</asp:ListItem>
                                <asp:ListItem>04:00 PM</asp:ListItem>
                                <asp:ListItem>04:30 PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="left" valign="top">
                            <asp:DropDownList ID="ddlEndTime" runat="server" Height="16px" Enabled="false" Style="font-size: xx-small;
                                font-family: Verdana" Width="84px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>10:30 AM</asp:ListItem>
                                <asp:ListItem>11:00 AM</asp:ListItem>
                                <asp:ListItem>11:30 AM</asp:ListItem>
                                <asp:ListItem>12:00 PM</asp:ListItem>
                                <asp:ListItem>12:30 PM</asp:ListItem>
                                <asp:ListItem>01:00 PM</asp:ListItem>
                                <asp:ListItem>01:30 PM</asp:ListItem>
                                <asp:ListItem>02:00 PM</asp:ListItem>
                                <asp:ListItem>02:30 PM</asp:ListItem>
                                <asp:ListItem>03:00 PM</asp:ListItem>
                                <asp:ListItem>03:30 PM</asp:ListItem>
                                <asp:ListItem>04:00 PM</asp:ListItem>
                                <asp:ListItem>04:30 PM</asp:ListItem>
                                <asp:ListItem>05:00 PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </center>
            <br />
            <center>
                <table class="style1">
                    <tr>
                        <td align="left" class="style21" valign="top">
                            <asp:Label ID="lblMonday" Text="Monday, Tuesday and Wednesday experiments."
                                runat="server" Font-Bold="true" Font-Size="XX-Small" Font-Names="verdana" ForeColor="#0F92E5"></asp:Label>
                        </td>
                        <td align="left" valign="top" class="style5">
                            <asp:Label ID="lblTuesdayHeading" Text="Thursday, Friday and Saturday experiments."
                                runat="server" Font-Bold="true" Font-Size="XX-Small" Font-Names="verdana" ForeColor="#0F92E5"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" valign="top" align="left">
                            <asp:Panel ID="panalMonday" runat="server" Height="70px" Width="410px" Enabled="false"
                                BackColor="#CCCCCC" BorderStyle="Groove" ForeColor="Black">
                                <table>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:RadioButton ID="chk0" runat="server" Style="font-size: xx-small; font-family: Verdana"
                                                Text="Introduction to Electrochemical Technique-Cyclic Voltammetry." GroupName="1" />
                                            <%--<asp:CheckBox ID="chk0" runat="server" Style="font-size: xx-small; font-family: Verdana" 
                                            Text="Study of Electrochemical Technique, Cyclic Voltammetry." ValidationGroup="experimets" />--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:RadioButton ID="chk1" runat="server" Style="font-size: xx-small; font-family: Verdana"
                                                Text="Differential Pulse Anodic Stripping Voltammetry." GroupName="1" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:RadioButton ID="chk2" runat="server" Style="font-size: xx-small; font-family: Verdana"
                                                Text="Study of Electrochemical behaviour of Ascorbic Acid by CNT Electrode."
                                                GroupName="1" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td class="style4" valign="top" align="left">
                            <asp:Panel ID="panalWednesday" runat="server" Height="120px" Width="420px" Enabled="false"
                                BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Groove" ForeColor="Black"
                                Font-Bold="False">
                                <table style="width: auto;">
                                    <tr>
                                        <td align="left" valign="top" class="style25">
                                            <asp:RadioButton ID="chk3" runat="server" Style="font-size: xx-small; font-family: Verdana"
                                                Text="Electrochemical study of Acetaminophen in Paracetamol Tablet." GroupName="2" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:RadioButton ID="chk4" runat="server" Style="font-size: xx-small; font-family: Verdana"
                                                Width="420" Text="Simultaneous Determination of heavy Metals in Water Samples Using Boron Doped Diamond 
                                        Electrode." GroupName="2" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:RadioButton ID="chk5" runat="server" Style="font-size: xx-small; font-family: Verdana"
                                                Text="Electrochemical Study of ferri/ferro system with MUX MULTI4 Module." GroupName="2" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top">
                                            <asp:RadioButton ID="chk6" runat="server" Style="font-size: xx-small; font-family: Verdana"
                                                Text="Measurment of electrode impedance by Eletrochemical impedance Spectroscopy."
                                                GroupName="2" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                    </tr>
                    </td> </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" Text="Submit" Font-Bold="true" Font-Names="verdana" Font-Size="XX-Small"
                                runat="server" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                </table>
            </center>
            <center>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <br />
                <table>
                    <tr>
                        <td style="color: #0F92E5; font-family: Verdana; font-size: medium; font-weight: bold;">
                            <asp:Label ID="lblSuccess" runat="server" Text="Label" Visible="false"></asp:Label>
                        </td>
                    </tr>
                </table>
                <%--<asp:CheckBox ID="chkUserDetails" runat="server" Font-Names="Verdana" AutoPostBack="true"
                    TextAlign="Right" Font-Size="Small" OnCheckedChanged="chkUserDetails_CheckedChanged"
                    Text="Check your Schudules Only" />--%>
                <br />
                <table>
                    <tr>
                        <td align="left">
                            <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">--%>
                            <asp:GridView ID="grdViewSchedule" runat="server" BackColor="White" Font-Names="verdana"
                                Font-Size="X-Small" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
                                CellPadding="3" GridLines="None" AutoGenerateColumns="False" CellSpacing="3"
                                AllowSorting="True" CaptionAlign="Top" AllowPaging="True" EnableViewState="False"
                                OnPageIndexChanging="grdViewSchedule_PageIndexChanging" OnSorting="grdViewSchedule_Sorting"
                                HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" OnSelectedIndexChanged="grdViewSchedule_SelectedIndexChanged">
                                <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" ShowHeader="True" SelectText="►">
                                        <HeaderStyle BorderStyle="Double" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="login_id" HeaderText="User Name" ReadOnly="True" SortExpression="▼" />
                                    <asp:BoundField DataField="experiment" HeaderText="Experiment Name" />
                                    <asp:BoundField DataField="startTime" HeaderText="Start Time" />
                                    <asp:BoundField DataField="endTime" HeaderText="End Time" />
                                    <asp:BoundField DataField="dates" HeaderText="Perform Date" />
                                </Columns>
                                <FooterStyle CssClass="FooterStyle" />
                                <PagerStyle CssClass="PagerStyle" />
                                <SelectedRowStyle CssClass="SelectedRowStyle" />
                                <HeaderStyle CssClass="HeaderStyle" />
                            </asp:GridView>
                            <div id="allSchdulesHeaderFooter" runat="server" >
                                <b><i>You are viewing page
                                    <%=grdViewSchedule.PageIndex + 1%>
                                    of
                                    <%=grdViewSchedule.PageCount%>
                                </i></b>
                            </div>
                        <%--    <asp:GridView ID="grdUserOnlySchedules" Visible="False" BackColor="White" 
                                Font-Names="verdana" Font-Size="X-Small" BorderColor="White" BorderStyle="Ridge"
                                BorderWidth="2px" CellPadding="3" Grid`Lines="Horizontal" AutoGenerateColumns="False"
                                CellSpacing="3" AllowSorting="True" CaptionAlign="Top" AllowPaging="True" EnableViewState="False"
                                OnPageIndexChanging="grdViewSchedule_PageIndexChanging" OnSorting="grdViewSchedule_Sorting"
                                HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" DataSourceID="SqlDataSource2"
                                OnSelectedIndexChanged="grdUserOnlySchedules_SelectedIndexChanged" runat="server">
                                <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <Columns>
                                <asp:CommandField ShowSelectButton="True" ButtonType="Button" ShowHeader="True" SelectText="►">
                                        <HeaderStyle BorderStyle="Double" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="login_id" HeaderText="Login Id" SortExpression="login_id"/>
                                    <asp:BoundField DataField="experiment" HeaderText="Experiment Name" SortExpression="experiment"/>
                                    <asp:BoundField DataField="startTime" HeaderText="Start Time" SortExpression="startTime"/>
                                    <asp:BoundField DataField="endTime" HeaderText="End Time" SortExpression="endTime"/>
                                    <asp:BoundField DataField="dates" HeaderText="Perform Date" SortExpression="dates"/>
                                </Columns>
                                <FooterStyle CssClass="FooterStyle" />
                                <PagerStyle CssClass="PagerStyle" />
                                <SelectedRowStyle CssClass="SelectedRowStyle" />
                                <HeaderStyle CssClass="HeaderStyle" />
                            </asp:GridView>--%>
                            <div id="userScheduleHeaderFooter" runat="server" visible="false">
                                <b><i>You are viewing page
                                    <%=grdViewSchedule.PageIndex + 1%>
                                    of
                                    <%=grdViewSchedule.PageCount%>
                                </i></b>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:virtualabConnectionString %>"
                                SelectCommand="SELECT login_id, experiment, startTime, endTime, dates FROM schedu WHERE (login_id = @login_id)">
                                <%--SelectCommand="SELECT [login_id], [experiment], replace(substring(convert(varchar(50),startTime,9),13,5), replace(substring(convert(varchar(50),endTime,9),13,5), convert(varchar(11),dates,103) FROM schedu WHERE login_id = @login_id">--%>
                                <SelectParameters>
                                    <asp:SessionParameter Name="login_id" SessionField="UserName" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </center>
            <br />
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0" />
    <img src="../images/footer-curve.jpg" width="1024" height="31" alt="" />
    <div class="copyright">
        Copyright &copy; 2009-2016</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewSchedule.aspx.cs" Inherits="VirtualLab.loginschedule.viewSchedule" %>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewSchedule.aspx.cs" Inherits="loginschedule_viewSchedule" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>

    <script type="text/javascript" language="javascript">
    </script>

    <link rel="stylesheet" type="text/css" href="../css/GridViewCss/ChromeBlackGridView.css" />
    <style type="text/css">
        .style22
        {
            width: 455px;
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
    <form id="form1" runat="server">
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
            <li><a href="../feedback/feedbacks.aspx" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
            <li><a id="onLineSupport" href="~/others/OnlineSupport.aspx" runat="server">Online
                Support</a></li>
            <li><a id="logInMenuschedule" href="../loginschedule/Schedules.aspx" runat="server">
                Schedule</a></li>
            <li><a id="logOutMenuschedule" href="#" runat="server">View Schedule</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">User Scheduled List</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;"><br />
        <asp:Label ID="lblUserName" runat="server" Text="Welcome User" Font-Bold="true" Font-Names="verdana" Font-Size="X-Small" ForeColor="Green"></asp:Label>
            <div>
                <br />
                <center>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <table>
                        <tr>
                            <td align="center">
                                <asp:GridView ID="grdViewSchedule" runat="server" BackColor="White" Font-Names="verdana"
                                    Font-Size="X-Small" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px"
                                    CellPadding="3" GridLines="None" AutoGenerateColumns="False" CellSpacing="3"
                                    AllowSorting="True" CaptionAlign="Top" AllowPaging="True" EnableViewState="False"
                                    OnPageIndexChanging="grdViewSchedule_PageIndexChanging" OnSorting="grdViewSchedule_Sorting"
                                    HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                                    <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom" />
                                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" ShowCancelButton="False"
                                            ShowHeader="True" SelectText="►">
                                            <HeaderStyle BorderStyle="Double" />
                                        </asp:CommandField>
                                        <asp:BoundField DataField="login_id" HeaderText="User Name" ReadOnly="True" SortExpression="▼" />
                                        <asp:BoundField DataField="experiment" HeaderText="Experiment" />
                                        <asp:BoundField DataField="startTime" HeaderText="Start Time" />
                                        <asp:BoundField DataField="endTime" HeaderText="End Time" />
                                        <asp:BoundField DataField="dates" HeaderText="Perform Date" />
                                    </Columns>
                                    <FooterStyle CssClass="FooterStyle" />
                                    <%--<FooterStyle BackColor="#C6C3C6" ForeColor="Black" CssClass="FooterStyle"/>--%>
                                    <PagerStyle CssClass="PagerStyle" />
                                    <%--<PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center"
                                    BorderColor="#3399FF" Font-Bold="True" />--%>
                                    <SelectedRowStyle CssClass="SelectedRowStyle" />
                                    <%--<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" BorderStyle="Solid"
                                    Font-Overline="True" CssClass="SelectedRowStyle"/>--%>
                                    <HeaderStyle CssClass="HeaderStyle" />
                                    <%--<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Font-Size="X-Small"
                                    HorizontalAlign="Justify" VerticalAlign="Middle" Wrap="True" Height="24px" Width="30" />--%>
                                </asp:GridView>
                                <b><i>You are viewing page
                            <%=grdViewSchedule.PageIndex + 1%>
                            of
                            <%=grdViewSchedule.PageCount%>
                            </i></b>
                            </td>
                        </tr>
                    </table>
                </center>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtualabConnectionString %>"
                    SelectCommand="SELECT * FROM [schedu]"></asp:SqlDataSource>
                <br />
            </div>
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

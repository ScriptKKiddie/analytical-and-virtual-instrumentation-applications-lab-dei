<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="poorfeedback.aspx.cs" Inherits="VirtualLab.feedback.feedback" %>

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
    </style>
    <link rel="stylesheet" type="text/css" href="../ddtabmenufiles/glowtabs.css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:virtualabConnectionString %>"
        DeleteCommand="DELETE FROM [feedback] WHERE [sno] = @sno" 
        InsertCommand="INSERT INTO [feedback] ([name], [expname], [ques1a], [ques1b], [ques1c], [ques1d], [ques1e], [ques1f], [ques1g], [ques1h], [coment], [ques2], [ques3], [ques4], [ques5], [ques6], [mail], [userId]) VALUES (@name, @expname, @ques1a, @ques1b, @ques1c, @ques1d, @ques1e, @ques1f, @ques1g, @ques1h, @coment, @ques2, @ques3, @ques4, @ques5, @ques6, @mail, @userId)"
        SelectCommand="SELECT * FROM [feedback]" 
        UpdateCommand="UPDATE [feedback] SET [name] = @name, [expname] = @expname, [ques1a] = @ques1a, [ques1b] = @ques1b, [ques1c] = @ques1c, [ques1d] = @ques1d, [ques1e] = @ques1e, [ques1f] = @ques1f, [ques1g] = @ques1g, [ques1h] = @ques1h, [coment] = @coment, [ques2] = @ques2, [ques3] = @ques3, [ques4] = @ques4, [ques5] = @ques5, [ques6] = @ques6, [mail] = @mail, [userId] = @userId WHERE [sno] = @sno">
        <DeleteParameters>
            <asp:Parameter Name="sno" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="expname" Type="String" />
            <asp:Parameter Name="ques1a" Type="String" />
            <asp:Parameter Name="ques1b" Type="String" />
            <asp:Parameter Name="ques1c" Type="String" />
            <asp:Parameter Name="ques1d" Type="String" />
            <asp:Parameter Name="ques1e" Type="String" />
            <asp:Parameter Name="ques1f" Type="String" />
            <asp:Parameter Name="ques1g" Type="String" />
            <asp:Parameter Name="ques1h" Type="String" />
            <asp:Parameter Name="coment" Type="String" />
            <asp:Parameter Name="ques2" Type="String" />
            <asp:Parameter Name="ques3" Type="String" />
            <asp:Parameter Name="ques4" Type="String" />
            <asp:Parameter Name="ques5" Type="String" />
            <asp:Parameter Name="ques6" Type="String" />
            <asp:Parameter Name="mail" Type="String" />
            <asp:Parameter Name="userId" Type="String" />
            <asp:Parameter Name="sno" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="expname" Type="String" />
            <asp:Parameter Name="ques1a" Type="String" />
            <asp:Parameter Name="ques1b" Type="String" />
            <asp:Parameter Name="ques1c" Type="String" />
            <asp:Parameter Name="ques1d" Type="String" />
            <asp:Parameter Name="ques1e" Type="String" />
            <asp:Parameter Name="ques1f" Type="String" />
            <asp:Parameter Name="ques1g" Type="String" />
            <asp:Parameter Name="ques1h" Type="String" />
            <asp:Parameter Name="coment" Type="String" />
            <asp:Parameter Name="ques2" Type="String" />
            <asp:Parameter Name="ques3" Type="String" />
            <asp:Parameter Name="ques4" Type="String" />
            <asp:Parameter Name="ques5" Type="String" />
            <asp:Parameter Name="ques6" Type="String" />
            <asp:Parameter Name="mail" Type="String" />
            <asp:Parameter Name="userId" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
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
            <li><a href="#" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">Feedback</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
            <br />
            <h1 class="title">
                <a href="#"></a>
            </h1>
            <p class="meta" style="font-size: 1.2em;
                font-weight:normal; font-style: normal">What is the shortest
                word in the English language that contains the letters: abcdef?
                <br /><br />
                Answer: &nbsp;<b>FEEDBACK</b>,&nbsp; Don&#39;t forget that <b>feedback</b> is one
                of the essential elements of good communication, which will help in further improvement
                of the Lab.
            </p>
            <br />
            <div class="entry">
                <br />
                <br />
                <table cellpadding="10px">
                    <tr>
                        <td style="width: 300px;">
                            Name of the Student/Deptt.
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="400px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 300px;">
                            Email ID
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="400px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 300px;">
                            Type of Virtual Lab
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="400px" Text="Analytical & Virtual Instrumentation Applications Lab"
                                Enabled="False" Style="margin-left: 0px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 300px">
                            Which Experiment did you perform?
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="400px">
                                <asp:ListItem>1.Introduction to Electrochemical Technique, Cyclic Voltammetry of Ferricyanide System.</asp:ListItem>
                                <asp:ListItem>2.Determination of Heavy Metals in Yamuna River Water by Differential Pulse Anodic Stripping Voltammetry.</asp:ListItem>
                                <asp:ListItem>3.Study of Electrochemical behaviour of Ascorbic Acid by CNT Electrode.</asp:ListItem>
                                <asp:ListItem>4.Electrochemical Study of Acetaminophen in Paracetamol Tablet.</asp:ListItem>
                                <asp:ListItem>5.Simultaneous Determination Of Heavy Metals In Water Samples Using Boron Doped Diamond Electrode.</asp:ListItem>
                                <asp:ListItem>6.Electrochemical study of ferri/ferro system with MUX MULTI4 Module.</asp:ListItem>
                                <asp:ListItem>7.Measurement of electrode impedance by Electrochemical Impedance Spectroscopy.</asp:ListItem>
                                <asp:ListItem>8.Fabrication of Plant modified Electrodes. (Not experimental).</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <br />
                <table cellpadding="10px">
                    <tr>
                        <th align="left">
                            1) Please tell your rating with the following statements
                        </th>
                        <th class="space">
                            Excellent
                        </th>
                        <th class="space">
                            Very Good
                        </th>
                        <th class="space">
                            Good
                        </th>
                        <th class="space">
                            Average
                        </th>
                        <th class="space">
                            Poor
                        </th>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            a) How do you rate the online performance of the experiment
                        </td>
                        <td class="space">
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="first" 
                                Checked="True" />
                        </td>
                        <td class="space">
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="first" />
                        </td>
                        <td class="space">
                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="first" />
                        </td>
                        <td class="space">
                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="first" />
                        </td>
                        <td class="space">
                            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="first" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            b) To what extent did you have control over interactions?
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton6" runat="server" GroupName="second" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton7" runat="server" GroupName="second" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton8" runat="server" GroupName="second" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton9" runat="server" GroupName="second" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton10" runat="server" GroupName="second" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            c) To what degree was the actual lab environment simulated?
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton11" runat="server" GroupName="third" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton12" runat="server" GroupName="third" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton13" runat="server" GroupName="third" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton14" runat="server" GroupName="third" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton15" runat="server" GroupName="third" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            d) The manuals were found to be helpful
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton16" runat="server" GroupName="fourth" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton17" runat="server" GroupName="fourth" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton18" runat="server" GroupName="fourth" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton19" runat="server" GroupName="fourth" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton20" runat="server" GroupName="fourth" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            e) The results of experiment were easily interpretable
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton21" runat="server" GroupName="five" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton22" runat="server" GroupName="five" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton23" runat="server" GroupName="five" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton24" runat="server" GroupName="five" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton25" runat="server" GroupName="five" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            f) The measurement and analysis of data was found to be easy
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton26" runat="server" GroupName="six" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton27" runat="server" GroupName="six" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton28" runat="server" GroupName="six" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton29" runat="server" GroupName="six" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton30" runat="server" GroupName="six" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            g) The links provided were consistent with the objectives of the experiment?
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton31" runat="server" GroupName="seven" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton32" runat="server" GroupName="seven" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton33" runat="server" GroupName="seven" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton34" runat="server" GroupName="seven" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton35" runat="server" GroupName="seven" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr align="center">
                        <td align="left" style="padding-left: 40px;">
                            h) A clear understanding of the experiment and related topics was gained?
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton36" runat="server" GroupName="eight" Checked="true" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton37" runat="server" GroupName="eight" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton38" runat="server" GroupName="eight" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton39" runat="server" GroupName="eight" />
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton40" runat="server" GroupName="eight" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <p>
                    2)&nbsp; How helpful you feel the system is?</p><br />
                <asp:TextBox ID="TextBox5" runat="server" Rows="5" Columns="60" TextMode="MultiLine"></asp:TextBox><br />
                <br />
                <p><br />
                    3)&nbsp; Did you experience any problem?</p><br />
                <asp:TextBox ID="TextBox6" runat="server" Rows="5" Columns="60" TextMode="MultiLine"></asp:TextBox><br />
                <br />
                <table cellpadding="15px">
                    <tr>
                        <td style="padding-left: 0px;">
                            4) Did you feel confident enough while performing the experiment?
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton41" runat="server" GroupName="nine" Checked="true"
                                Text="Yes" />
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton42" runat="server" GroupName="nine" Text="No" />
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton43" runat="server" GroupName="nine" Text="Can't Say" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding-left: 0px;">
                            5) Was the experiment/process motivating enough?
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton44" runat="server" GroupName="ten" Checked="true"
                                Text="Yes" />
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton45" runat="server" GroupName="ten" Text="No" />
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton46" runat="server" GroupName="ten" Text="Can't Say" />
                        </td>
                    </tr>
                    <tr>
                    <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding-left: 0px;">
                            6) Did you go through the manual/step by step method before performing the live
                            experiments ?
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton47" runat="server" GroupName="eleven" Checked="true"
                                Text="Yes" />
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton48" runat="server" GroupName="eleven" Text="No" />
                        </td>
                        <td style="padding-left: 40px;">
                            <asp:RadioButton ID="RadioButton49" runat="server" GroupName="eleven" Text="Can't Say" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Comments & Suggestions" Font-Bold="True"
                    Font-Size="15"></asp:Label><br />
                <p>
                    <asp:TextBox ID="TextBox4" runat="server" Rows="10" Columns="50" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </p>
                <br />
                <p style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Height="29px" Width="115px"
                        OnClick="Button1_Click" />
                </p>
            </div>
            <br />
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

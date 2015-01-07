<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="experiments.aspx.cs" Inherits="VirtualLab.Experiments.experiments" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
    </script>

    <style type="text/css">
        .MyTabStyle .ajax__tab_header
        {
            height: 50px;
        }
        .MyTabStyle .ajax__tab_body
        {
            padding: 50px 10px 10px 10px;
            font-size: medium;
            line-height: 22px;
        }
        .HEADER
        {
            background-color: Transparent;
            color: Black;
            font-size: medium;
        }
    </style>
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
            <li><a href="#" target="_self">Experiments</a></li>
            <li><a href="../loginschedule/login.aspx" target="_self">Login & Schedule</a></li>
            <li><a href="../feedback/feedback.aspx" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc">
        <br />
        <span class="title">List of Experiments</span>
    </div>
    <div id="no_print">
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
            <br />
            <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" CssClass="MyTabStyle">
                <cc1:TabPanel runat="server" ID="TabPanel1">
                    <HeaderTemplate>
                        <div id="div2" class="glowingtabs">
                            <ul>
                                <li><a href="#"><span style="text-align: center;">
                                    <img src="../Images/procedure.jpg" border="0" alt="Online Experiments" />
                                    Online Experiments </span></a></li>
                            </ul>
                        </div>
                    </HeaderTemplate>
                    <ContentTemplate>
                        <div>
                            <p>
                                Online Experiments are real experiments which can be executed through the internet.
                                A user at a location A is allowed to conduct an experiment at a distant location
                                B via his or her computer through Internet. Controlling the experiment is enabled
                                by accessing an interface and a server.</p>
                            <center>
                                <img src="../Images/setup.jpg" alt="Lab Setup" height="350" width="650" /></center>
                            <br />
                            <p>
                                The figure above explain the setup of our Lab at <strong>University Science &amp; Instrumentation
                                    Center (USIC) </strong>at Dayalbagh Educational Institute, Agra<br />
                                In this section those softwares are hosted online which control a particular analytical
                                device and help to view the data from that device. The method implemented here uses
                                server utility where users can control a software and hardware with installing very
                                minimal client side program on their pc&#39;s and then directly connect to our server
                                to make use of these apps.</p>
                            <br />
                            <h3 style="color: #000000">
                                List of Experiments</h3>
                            <br />
                            <ul type="1">
                                <li style="line-height: 40px;">
                                    <asp:HyperLink ID="exp1" NavigateUrl="onlineExperiments/Experiment1/introduction.aspx"
                                        runat="server" Text="Introduction to Electrochemical Technique, Cyclic Voltammetry."
                                        Font-Bold="True"></asp:HyperLink></li>
                                <li style="line-height: 40px;">
                                    <asp:HyperLink ID="exp2" NavigateUrl="onlineExperiments/Experiment2/introduction.aspx"
                                        runat="server" Text="Differential Pulse Anodic Stripping Voltammetry." 
                                        Font-Bold="True"></asp:HyperLink></li>
                                <li style="line-height: 40px;">
                                    <asp:HyperLink ID="exp3" NavigateUrl="onlineExperiments/Experiment3/introduction.aspx"
                                        runat="server" Text="Study of Electrochemical behaviour of Ascorbic Acid by CNT Electrode."
                                        Font-Bold="True"></asp:HyperLink></li>
                                <li style="line-height: 40px;">
                                    <asp:HyperLink ID="exp4" NavigateUrl="onlineExperiments/Experiment4/introduction.aspx"
                                        runat="server" Text="Electrochemical Study of Acetaminophen in Paracetamol Tablet."
                                        Font-Bold="True"></asp:HyperLink></li>
                                <li style="line-height: 40px;">
                                    <asp:HyperLink ID="exp5" NavigateUrl="onlineExperiments/Experiment5/introduction.aspx"
                                        runat="server" Text="Simultaneous Determination Of Heavy Metals In Water Samples Using Boron Doped Diamond Electrode." 
                                        Font-Bold="True"></asp:HyperLink></li>
                                <li style="line-height: 40px;">
                                    <asp:HyperLink ID="exp6" NavigateUrl="onlineExperiments/Experiment6/introduction.aspx"
                                        runat="server" Text="Electrochemical study of ferri/ferro system with MUX MULTI4 Module."
                                        Font-Bold="True"></asp:HyperLink></li>
                            </ul>                           
                        </div>
                        <br />
                    </ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel runat="server" ID="TabPanel2">
                    <HeaderTemplate>
                        <div id="div1" class="glowingtabs">
                            <ul>
                                <li><a href="#"><span style="text-align: center;">
                                    <img src="../Images/sim.jpg" border="0" alt="Simulations & Animations" />
                                    Animations & Simulations </span></a></li>
                            </ul>
                        </div>
                    </HeaderTemplate>
                    <ContentTemplate>
                        <div>
                            <p>
                                Simulation is the imitation of some real thing, state of affairs, or process. The
                                act of simulating something generally entails representing certain key characteristics
                                or behaviours of a selected physical or abstract system.</p>
                            <p>
                                In this section we have added simulations for already performed experiments which
                                users can view to have a basic idea on how experiments show their ouput. For various
                                experiments like Cyclic Voltammetry, colorimeter etc, how the output is observed,
                                can be easily viewed in this section.</p>
                        </div>
                        <br />
                        <h3 style="color: #000000">
                            Various Simulations & Animations</h3>
                        <br />
                        <cc1:Accordion ID="Accordion1" runat="server" SelectedIndex="0" FadeTransitions="true"
                            FramesPerSecond="30" TransitionDuration="250" AutoSize="None" ContentCssClass="ContentAccordion"
                            HeaderCssClass="HEADER">
                            <Panes>
                                <cc1:AccordionPane ID="AccordionPane2" runat="server">
                                    <Header>
                                        <a href="" onclick="return false;" style="font-size: large;">Cyclic Voltammetry</a>
                                    </Header>
                                    <Content>
                                        <br />
                                        <div style="padding-bottom: 20px; font-size: medium; line-height: 22px;">
                                            <p>
                                                Simulation of Cyclic Voltammetry discribe the exprimental setup using Pine PotentioStat</p>
                                            <center>
                                                <img src="SimulationData/Images/CVGraph.JPG" height="270px" alt="Cyclic Voltammetry Graph" /></center>
                                            <br />
                                            <p>
                                                Figure above illustrates the expected response of a reversible redox couple during
                                                a single potential cycle. Here it is assumed that only the oxidized form O is present
                                                initially. Thus, a negative-going potential scan is chosen for the first half cycle,
                                                starting from a value where no reduction occurs. As the applied potential approaches
                                                the characteristic E° for the redox process, a cathodic current begins to increase,
                                                until a peak is reached. After traversing the potential region in which the reduction
                                                process takes place, the direction of the potential sweep is reversed</p>
                                            <br />
                                            To View Amination <a href="#" onclick="window.open('SimulationData/CV/cv.htm' ,'','toolbar=0,location=0,status=0,menubar=0,resizable=0,scrollbars=1,height=690,width=805,top=20,left=20')">
                                                Click Here</a>
                                        </div>
                                    </Content>
                                </cc1:AccordionPane>
                                <cc1:AccordionPane ID="AccordionPane1" runat="server">
                                    <Header>
                                        <br />
                                        <a href="" onclick="return false;" style="font-size: large;">Polarography</a>
                                        <br />
                                    </Header>
                                    <Content>
                                        <br />
                                        <div style="padding-bottom: 20px; font-size: medium; line-height: 22px;">
                                            <p>
                                                Simulation of <b>Polorography </b>discribe the experimental setup with our the Instrument
                                                at Lab</p>
                                            <center>
                                                <img src="SimulationData/Images/polograph.jpg" height="270px" alt="Polorographic Curve" /></center>
                                            <br />
                                            <p>
                                                Simple principle of polarography is the study of solutions or of electrode processes
                                                by means of electrolysis with two electrodes, one polarizable and one unpolarizable,
                                                the former formed by mercury regularly dropping from a capillary tube. An objective
                                                document of polarographic study is the polarographic curve, that is, a curve visualizing
                                                the processes occurring in the course of electrolytic polarization of the dropping
                                                mercury electrode. In the case of the common voltage-controlled (or, with three-electrode
                                                systems, potential-controlled, or "potentiostatic") electrolysis, the polarographic
                                                curve is a current-voltage (or current-potential) curve showing the dependence of
                                                the current, passing through the system, on the voltage applied to the electrodes,
                                                or on the electrode potential of the dropping electrode. In the case of the current-controlled
                                                ("galvanostatic") electrolysis, it is the time-change of potential of the dropping
                                                electrode, which is displayed by the curve. The dropping mercury electrode keeps
                                                the interface always fresh between its constantly renewed surface and the solution,
                                                independent of the processes that were taking place at previous drops, and thereby
                                                the measurements taken with it are perfectly reproducible.</p>
                                            <br />
                                            To View Amination <a href="#" onclick="window.open('SimulationData/Polarography/polorography.html','','toolbar=0,location=0,status=0,menubar=0,resizable=0,scrollbars=1,height=700,width=1050,top=20,left=20')">
                                                Click Here</a>
                                        </div>
                                    </Content>
                                </cc1:AccordionPane>
                            </Panes>
                        </cc1:Accordion>
                    </ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
            <h1 class="title">
                <a href="#"></a>
            </h1>
            <p class="meta">
                <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>
            </p>
            <div class="entry">
            </div>
            <br />
            <br />
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

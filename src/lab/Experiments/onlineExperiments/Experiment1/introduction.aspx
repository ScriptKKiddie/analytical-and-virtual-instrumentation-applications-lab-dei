<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="introduction.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment1.introduction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>Analytical & Virtual Instrumentation Applications Lab</title>
    <link href="../../../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../../../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../../../ddtabmenufiles/ddtabmenu.js">
    </script>

    <link rel="stylesheet" type="text/css" href="../../../ddtabmenufiles/glowtabs.css" />
</head>
<body bgcolor="#FFFFFF">
<form id="form1" runat="server">
    <div id="header_main">
        <img src="../../../Images/logo.jpg" align="right" style="padding-right: 20px" height="100px"
            width="120px" alt="logo" />
    </div>
    <div id="no_print">
        <!-- start header -->
        <div id="header">
            <ul id="menuTop">
                <li><a href="../../../Default.aspx" target="_self">Home</a></li>
                <li><a href="../../../Experiments/experiments.aspx" target="_self">Experiments</a></li>
                <li><a href="../../../loginschedule/login.aspx" target="_self">Login & Schedule</a></li>
                <li><a href="../../../feedback/feedback.aspx" target="_self">Feedback</a></li>
                <li><a href="../../../others/equipments.aspx" target="_self">Equipments</a></li>
                <li><a href="../../../others/faqs.aspx" target="_self">FAQs</a></li>
                <li><a href="../../../others/people.aspx" target="_self">People</a></li>
                <li><a href="../../../others/contactUs.aspx" target="_self">Contact Us</a></li>
                <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
            </ul>
        </div>
        <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc">
            <br />
            <span class="title">Introduction</span>
        </div>
        <div id="no_print">
        </div>
        <div style="background-image: url(../../../images/content_bg.jpg); position: relative;
            margin: auto; width: 1024px; min-height: 400px;">
            <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
                <br />
                <div id="ddtabs2" class="glowingtabs">
                    <ul>
                        <li><a href="#"><span>
                            <center>
                                <img src="../../../images/theory.jpg" border="0"><br />
                                Introduction</center>
                        </span></a></li>
                        <li><a href="setup.aspx"><span>
                            <center>
                                <img src="../../../images/setup.png" border="0"><br />
                                Setup</center>
                        </span></a></li>
                        <li><a href="sample.aspx"><span>
                            <center>
                                <img src="../../../images/sample.png" border="0"><br />
                                Sample</center>
                        </span></a></li>
                        <li><a href="procedure.aspx"><span>
                            <center>
                                <img src="../../../images/procedure.jpg" border="0"><br />
                                Procedure</center>
                        </span></a></li>
                        <li><a href="animate.aspx"><span>
                            <center>
                                <img src="../../../images/sim.jpg" border="0"><br />
                                Animate</center>
                        </span></a></li>
                        <li><a href="perform.aspx"><span>
                            <center>
                                <img src="../../../images/eval.jpg" border="0"><br />
                                Perform</center>
                        </span></a></li>
                        <li><a href="DataAnalysis.aspx"><span>
                            <center>
                                <img src="../../../images/books.jpg" border="0"><br />
                                Data Analysis</center>
                        </span></a></li>
                        <li><a href="Quiz.aspx"><span>
                            <center>
                                <img src="../../../images/quiz.png" border="0"><br />
                                Quiz</center>
                        </span></a></li>
                        <li><a href="video.aspx"><span>
                            <center>
                                <img src="../../../images/video.jpg" border="0"><br />
                                Video</center>
                        </span></a></li>
                        <li><a href="livecam.aspx"><span>
                            <center>
                                <img src="../../../images/liveCam.png" border="0"><br />
                                Live View</center>
                        </span></a></li>
                    </ul>
                </div>
                <h1 class="title">
                    <a href="#"></a>
                </h1>
                <p class="meta">
                    <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>&nbsp;
                </p>
                <div class="entry" style="line-height: 22px; font-size: medium; padding: 0px 0px 10px 15px;">
                    <h1>
                        Objective</h1><br />
                    <p>
                        Introduction to electrochemical technique, Cyclic Voltammery, i.e., to study the
                        ferri-ferrocyanide system by the Cyclic voltammetry.</p><br />
                    <h1>
                        Introduction</h1><br />
                    <p>
                        The goal of this experiment is to get familiar with:
                        <br />
                        </p>
                        <div style="padding-left:40px;">
                        <ul type="a">
                            <li>To test the potentiostat using a dummy cell.</li>
                            <li>Using a modern electrochemical potentiostat to observe the reduction- oxidation
                                of iron (III) to iron (II) and vice versa under the given potential range.</li>
                            <li>To measure the diffusion coefficient for iron (III).</li>
                        </ul>
                        </div><br />
                        <p>
                        
                        It illustrates the effect of concentration and sweep rate on the current measured
                        in a cyclic voltammetry.</p><br />
                    
                    <br />
                    <h1>
                        Theory</h1><br /><br />
                   <p>
                        Cyclic voltammetry is the most widely used technique for acquiring qualitative information
                        about electrochemical reactions. The power of cyclic voltammetry results from its
                        ability to rapidly provide considerable information on the thermodynamics of redox
                        processes and the kinetics of heterogeneous electron-transfer reactions and on coupled
                        chemical reactions or adsorption processes. Cyclic voltammetry is often the first
                        experiment performed in an electroanalytical study. In particular, it offers a rapid
                        location of redox potentials of the electroactive species and convenient evaluation
                        of the effect of media upon the redox process.
                    </p>
                    <br />
                    <p>
                        In typical cyclic voltammetry, a solution component is electrolyzed (oxidized or
                        reduced) by placing the solution in contact with an electrode surface and then making
                        that surface sufficiently positive or negative in voltage to force electron transfer.
                        In simple cases, the surface is started at a particular voltage with respect to
                        a reference half-cell such as calomel or Ag/AgCl, the electrode voltage is changed
                        to a higher or lower voltage at a linear rate and finally, the voltage is changed
                        back to the original value at the same linear rate. When the surface becomes sufficiently
                        negative or positive, a solution species may gain electrons from the surface or
                        transfer electrons to the surface. This results in a measurable current in the electrode
                        circuitry. The result of cyclic voltammetry obtained in form of cycle between current
                        and potential, potential on X axis and voltage on Y axis.
                    </p>
                    <br />
                    <p align="center">
                        Figure 1.1 shows a generic voltammogram. A voltammogram explains the reversibility
                        of the redox couple.
                        <br />
                        <br />
                        <img id="Img1" alt="Graph" src="Images/Graph.jpg" runat="server" />
                    </p><br />
                    <p>
                        Epc= Peak cathodic potential; Ipc= Peak cathodic current; Epa= Peak anodic potential;
                        Ipa=Peak anodic current</p><br />
                    <p>
                        The peak potential of the anodic sweep, Epa and the peak potential for cathodic
                        peak, Epc, can be directly read from the program, and the difference between them,
                        ∆Epeak, can be calculated. If redox couple is reversible, then the relationship,
                    </p><br />
                    <p align="center">
                        <b>n ∆ Epeak= 59mV &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1.1)</b>
                    </p><br />
                    <p>
                        In addition, the ratio of the anodic peak current to the cathodic peak current is
                        given by:
                    </p><br />
                    <p align="center">
                        <b>ipa / ipc = 1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1.2)</b>
                    </p><br />
                    <p>
                        The formal potential E<sub>o</sub>, for a reversible redox couple is easily determined as the
                        average of the two peak potentials as follows.</p><br />
                    <p align="center">
                        <b>E<sub>o</sub>=(Epa+Epc) / 2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1.3)</b>
                    </p><br />
                    <p>
                        Quantitative information regarding analyte concentration can be obtained from the
                        voltammogram using Randles- Sevcik equation. This equation specifies the peak current,
                        ip (anodic and cathodic), in terms of analyte concentration ,C.</p><br />
                    <p align="center">
                        <b>ip= 0.4463 n FAC (n F v D/ R T)<sup>1/2</sup> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1.4)</b>
                    </p><br />
                    <p>
                        where, n=no. of electrons appearing in the half-reaction for the redox couple v=rate
                        at which potential is swept</p><br />
                    <p align="center">
                        F=Faradays constant (96485 C/mol),<br />
                        A=electrode area (cm<sup>2</sup>)<br />
                        R=universal gas constant (8.314 J/mol K)<br />
                        T=absolute temperature (K)<br />
                        D= analyte’s diffusion coefficient (cm<sup>2</sup>/sec)
                    </p>
                    <p>
                        If temperature is assumed to be 25<sup>0</sup>C (298.15 K), the eqn. can be written as:
                    </p><br />
                    <p align="center">
                        <b>Ip = (2.687 x 10<sup>5</sup>) n<sup>3/2</sup> v<sup>1/2</sup> D<sup>1/2</sup> A C</b>
                    </p><br />
                    <p>
                        where the constant is understood to have units (i.e., 2.687 x 10<sup>5</sup> C mol<sup>-1</sup>
                        V<sup>-1/2</sup>).</p><br />
                    <p>
                        During the forward scan the Fe(III) get reduced as :
                    </p><br />
                    <table align="center">
                        <tr>
                            <td>
                                Fe (III) + e<sup>-</sup>
                            </td>
                            <td>
                                <img alt="reduction" src="Images/reduction.JPG" />
                            </td>
                            <td>
                                Fe(II)
                            </td>
                        </tr>
                    </table><br />
                    <p>
                        Similarly during the reverse potential the oxidation of the Fe (II) takes place
                        to (III) which can be shown as:
                    </p><br />
                    <table align="center">
                        <tr>
                            <td>
                                Fe (III) <sup>-</sup>
                            </td>
                            <td>
                                <img alt="reduction" src="Images/oxidation.JPG" />
                            </td>
                            <td>
                                Fe(II) + e<sup>-</sup>
                            </td>
                        </tr>
                    </table><br />
                    <p>
                        The redox reaction therefore can be used as an indication of major analytical tool
                        for the determination of trace elements which are electro active in nature.
                    </p>
                </div>
                <br />
                <br />
            </div>
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="../../../images/footer-curve.jpg" width="1024" height="31" alt=""><div
            class="copyright">
            Copyright &copy; 2009-2010</div>
        <br />
    </div>
    </form>
</body>
</html>
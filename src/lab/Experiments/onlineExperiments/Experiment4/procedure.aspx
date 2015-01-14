<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="procedure.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment4.procedure" %>

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
            <span class="title">Procedure</span>
        </div>
        <div style="background-image: url(../../../images/content_bg.jpg); position: relative;
            margin: auto; width: 1024px; min-height: 400px;">
            <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
                <br />
                <div id="ddtabs2" class="glowingtabs">
                    <ul>
                        <li><a href="introduction.aspx"><span>
                            <center>
                                <img src="../../../images/theory.jpg" border="0"><br />
                                Indtroduction</center>
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
                        <li><a href="#"><span>
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
                    <br />
                    <p>A 30 μg ml<sup>-1</sup> drug solution in 0.1 mol L<sup>-1</sup> phosphate buffer pH 7.0 was made for analysis. The solution was stirred using solvent-saturated nitrogen for 180 seconds. Differential pulse voltammograms were recorded by coating a drop on the three electrode CNT system and screen printed carbon electrode, using the following parameters for both DROPSENS and PINE Instrument. </p>
                    <br />
                    <br />                   
                    <h3>
                        Parameters</h3>
                    <br />
                    <table align="center" border="1">
                        <tr>
                            <td>
                                E1
                            </td>
                            <td>
                                &nbsp;&nbsp; = &nbsp;
                            </td>
                            <td>
                                -0.1V
                            </td>
                        </tr>
                        <tr>
                            <td>
                                E2
                            </td>
                            <td>
                                &nbsp;&nbsp; = &nbsp;
                            </td>
                            <td>
                                +0.6V
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Step Potential
                            </td>
                            <td>
                                &nbsp;&nbsp; = &nbsp;
                            </td>
                            <td>
                                0.002
                            </td>
                        </tr>
                          <tr>
                            <td>
                                Modulation Amplitude
                            </td>
                            <td>
                                &nbsp;&nbsp; = &nbsp;
                            </td>
                            <td>
                                0.05V
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Scan rate 
                            </td>
                            <td>
                                &nbsp;&nbsp; = &nbsp;
                            </td>
                            <td>
                                0.1 V/s
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <p>
                        Standard solutions of different concentrations of acetaminophen were made e.g.,
                        5, 10, 30, 60, 90 µg ml<sup>-1</sup>. For PINE Instrument, standard solutions were of concentrations
                        5, 10, 15, 20, 25, 30 µg ml<sup>-1</sup>. A direct calibration curve method and the standard
                        addition method were used to evaluate the acetaminophen contents of commercial samples
                        of crocin tablets.
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
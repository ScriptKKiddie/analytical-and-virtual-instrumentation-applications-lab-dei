﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perform.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment2.perform" %>

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
                <li><a href="../../../feedback/feedbacks.aspx" target="_self">Feedback</a></li>
                <li><a href="../../../others/equipments.aspx" target="_self">Equipments</a></li>
                <li><a href="../../../others/faqs.aspx" target="_self">FAQs</a></li>
                <li><a href="../../../others/people.aspx" target="_self">People</a></li>
                <li><a href="../../../others/contactUs.aspx" target="_self">Contact Us</a></li>
                <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
            </ul>
        </div>
        <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc">
            <br />
            <span class="title">Step By step Procedure</span>
        </div>
        <div id="no_print">
        </div>
        <div style="background-image: url(../../../images/content_bg.jpg); position: relative;
            margin: auto; width: 1024px; min-height: 400px;">
            <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
                <br />
                <div id="ddtabs2" class="glowingtabs">
                   <ul>
                        <li><a href="introduction.aspx"><span>
                            <center>
                                <img src="../../../images/theory.jpg" width="40px" border="0"><br />
                                Introduction</center>
                        </span></a></li>
                        <li><a href="setup.aspx"><span>
                            <center>
                                <img src="../../../images/setup.png" width="40px" border="0"><br />
                                Setup</center>
                        </span></a></li>
                        <li><a href="sample.aspx"><span>
                            <center>
                                <img src="../../../images/sample.png" width="40px" border="0"><br />
                                Sample</center>
                        </span></a></li>
                        <li><a href="procedure.aspx"><span>
                            <center>
                                <img src="../../../images/procedure.jpg" width="40px" border="0"><br />
                                Procedure</center>
                        </span></a></li>
                        <li><a href="animate.aspx"><span>
                            <center>
                                <img src="../../../images/sim.jpg" width="40px" border="0"><br />
                                Animate</center>
                        </span></a></li>
                        <li><a href="perform.aspx"><span>
                            <center>
                                <img src="../../../images/eval.jpg" width="40px" border="0"><br />
                                Perform</center>
                        </span></a></li>
                        <li><a href="DataAnalysis.aspx"><span>
                            <center>
                                <img src="../../../images/books.jpg" width="40px" border="0"><br />
                                Data Analysis</center>
                        </span></a></li>
                        <li><a href="Quiz.aspx"><span>
                            <center>
                                <img src="../../../images/quiz.png" width="40px" border="0"><br />
                                Quiz</center>
                        </span></a></li>
                        <li><a href="video.aspx"><span>
                            <center>
                                <img src="../../../images/books.jpg" width="40px" border="0"><br />
                                Video</center>
                        </span></a></li>
                        <li><a href="livecam.aspx"><span>
                            <center>
                                <img src="../../../images/liveCam.png" width="40px" border="0"><br />
                                Live View</center>
                        </span></a></li>
                         <li><a href="reference.aspx"><span>
                            <center>
                                <img src="../../../Images/reference.gif" width="40px" border="0"><br />
                                References</center>
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
                        Step By step Procedure of the Real Time Experiment</h1>
                    <br /><br />
                    <p>
                        <b>Step -1.</b> Open GPES or NOVA - Software. Click On the icon given below.</p>
                    <center>
                        <a href="Nova.zip">
                            <img src="Images/Step1a.jpg" alt="Icon" /></a> OR <a href="Nova.zip">
                                <img src="Images/Step1b.jpg" alt="Icon" /></a>
                    </center>
                    <br /><br />
                    <p>
                        <b>Step -2.</b> Establish the connection with SERVER</p>
                    <center>
                        <img src="Images/Step2.jpg" alt="Step2" /></center>
                    <br />
                    <p>
                        <b>Step -3</b> Give User Name = Adminsitrator & Password = usic.mhrd.012</p>
                    <center>
                        <img src="Images/Step3.jpg" alt="Step3" /></center>
                    <br /><br />
                    <p>
                        <b>Step -4</b></p>
                    <br />
                    <center>
                        <img src="Images/Step4.jpg" alt="Step4" /></center>
                    <br /><br />
                    <p>
                        <b>Step -5</b></p>
                    <center>
                        <table>
                            <tr>
                                <td>
                                    Methods
                                </td>
                                <td>
                                    <img src="Images/arrow.jpg" alt="Next" />
                                </td>
                                <td>
                                    Voltammetric Analysis
                                </td>
                                <td>
                                    <img src="Images/arrow.jpg" alt="Next" />
                                </td>
                                <td>
                                    Differential Pulse
                                </td>
                            </tr>
                        </table>
                    </center>
                    <br />
                    <center>
                        <img src="Images/Step5.jpg" alt="Step5" /></center>
                    <br /><br />
                    <p>
                        <b>Step -6</b> Fill the appropriate voltammogram parameters in the window “EDIT
                        PROCEDURE”.</p><br />
                    <center>
                        <img src="Images/Step6.jpg" alt="Step6" /></center>
                    <br /><br />
                    <p>
                        <b>Step -7</b> CLICK the START button and observe the peaks in “DATA PRESENTATION”
                        window.</p><br />
                    <center>
                        <img src="Images/Step7.jpg" alt="Step7" /></center>
                    <br />
                    <br />
                    <p>
                        <b>Step -8</b> Data Presentation Window</p><br />
                    <center>
                        <table style="text-align: left;">
                            <tr>
                                <td>
                                    Plot
                                </td>
                                <td>
                                    <img src="Images/arrow.jpg" alt="Next" />
                                </td>
                                <td>
                                    Enter Text
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Analysis
                                </td>
                                <td>
                                    <img src="Images/arrow.jpg" alt="Next" />
                                </td>
                                <td>
                                    Peak Search
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    File
                                </td>
                                <td>
                                    <img src="Images/arrow.jpg" alt="Next" />
                                </td>
                                <td>
                                    Save the work Data
                                </td>
                            </tr>
                        </table>
                    </center>
                </div>
                <br />
                <br />
            </div>
        </div>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
        <img src="../../../images/footer-curve.jpg" width="1024" height="31" alt=""><div
            class="copyright">
            Copyright &copy; 2009-2016</div>
        <br />
    </div>
    </form>
</body>
</html>

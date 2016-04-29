<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment2.setup" %>

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
            <span class="title">Setup</span>
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
                                <img src="../../../images/theory.jpg" border="0"><br />
                                Introduction</center>
                        </span></a></li>
                        <li><a href="#"><span>
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
                    <p>
                       The experimental setup for the differential pulse anodic stripping voltammetry consists out of the following components:</p>
                    <br />
                    <h3>
                        Equipments</h3>
                    <br />
                    <div style="padding-left: 40px;">
                        <ul>
                            <li>Computer controlled potantiostat with an appropriate data acquisition equipment
                            </li>
                            <li>Three Electrodes System and Electrochemical cell</li>
                            <li>Ag/AgCl as a reference electrode</li>
                            <li>Carbon as a counter electrode</li>
                            <li>HMDE as a working electrode</li>
                            <li>0.1 M KNO<sub>3</sub> as Supporting Electrolyte</li>
                        </ul>
                    </div>
                    <br />
                    <p style="text-align: center;">
                        <img src="Images/setup.JPG" height="420px" width="600px" alt="Setup Image" />
                    </p>
                    <br />
                    <h3>
                        Chemicals / Reagents</h3>
                    <br />
                    <div style="padding-left: 40px;">
                        <ul type="1">
                            <li>Conc HNO<sub>3</sub></li>
                            <li>Conc HClO<sub>4</sub></li>
                            <li>Zn(NO<sub>3</sub>)<sub>2</sub></li>
                            <li>Pb(NO<sub>3</sub>)<sub>2</sub></li>
                            <li>Cd(NO<sub>3</sub>)<sub>2</sub></li>
                            <li>Cu(NO<sub>3</sub>)<sub>2</sub></li>
                            <li>KNO<sub>3</sub></li>
                            <li>Purified Water</li>
                            <li>Standard Solutions of pH 4.2 & 7.0.</li>
                            <li>Water Sample for Metal Analysis</li>
                        </ul>
                    </div>
                    <br />
                    <h3>
                        Materials</h3>
                    <br />
                    <div style="padding-left: 40px;">
                        <ul>
                            <li>Nitrogen Gas Cylinder</li>
                            <li>Analytical Balance</li>
                            <li>Micro Pipettes (20-200 µl)</li>
                            <li>Potantiostat equipped with PC & software</li>
                            <li>1 Conical flask</li>
                            <li>Measuring Cylinder</li>
                            <li>pH meter</li>
                            <li>Magnetic Stirrer</li>
                            <li>Hot Plate</li>
                            <li>10 Volumetric flasks (100 ml)</li>
                            <li>Whatman Paper No 42 (125 mm)</li>
                            <li>Tissue Papers</li>	
                        </ul>
                    </div>
                    <br />
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

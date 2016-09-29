<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment2.sample" %>

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
            <span class="title">Sample Prepration</span>
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
                    <p>
                        Acid digestion of all the samples was done using HNO3 for minimizing the interference
                        by organic matter prior to estimation of the heavy metals. Acid digestion for water
                        is carried out in following way:</p>
                    <br />
                    <div style="padding-left: 40px;">
                        <ul>
                            <li>20 ml of water sample + 2 ml of Conc HNO<sub>3</sub></li>
                            <li>The acid digested sample is heated on hot plate at 80<sup>o</sup> C up to 1 - 2
                                hrs </li>
                            <li>Some amount of double distilled water is added and filtered through Whatman Paper
                                42</li>
                            <li>Final volume is made 50 ml with double distilled water</li>
                        </ul>
                    </div>
                    <br />
                    <h3>
                        Standards</h3>
                    <br />
                    <div style="padding-left: 40px;">
                        <ul>
                            <li>Prepare 2.5, 5, 10, 20 50 ppm standard solutions of Pb(NO<sub>3</sub>)<sub>2</sub>, Cd(NO<sub>3</sub>)<sub>2</sub>, Cu(NO<sub>3</sub>)<sub>2</sub>
                                and Zn(NO<sub>3</sub>)<sub>2</sub> individually with double distilled water or other
                                high purity water.</li>
                            <li>Prepare a background solution containing 0.1 M KNO<sub>3</sub>, 50 mM HNO<sub>3</sub></li>
                        </ul>
                    </div>
                    <br />
                    <p><strong>Note:</strong> It is important that glassware is cleaned thoroughly, rinsed several times with pure water and then dried prior to use. You should look at the bottle labels of chemicals to note the amount of heavy metal impurities, if any are present. High purity reagents, absent of heavy metal impurities, can be purchased. Discuss this issue with the laboratory instructor. Calibration using the method of standard addition can correct for impurity if it is the same as the sought for metal.</p>
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

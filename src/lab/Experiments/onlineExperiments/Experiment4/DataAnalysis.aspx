<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataAnalysis.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment4.DataAnalysis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
            <span class="title">Data Analysis</span>
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
                        <li><a href="#"><span>
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
                    <h3>
                        Peak Height Measurements</h3>
                        <div style="padding-left:40px;">
                    <ul type="A">
                        <li>The first step in analysing the results is to obtain the peak height data from the
                            voltammograms. The peak height is proportional to the acetaminophen concentration,
                            and thus will be used to construct the calibration curve. </li>
                        <li>The DROPSENS software provides an easy way to measure the height of peaks in a
                            differential pulse voltammogram (DPV). By placing a special Peak Height tool on
                            each voltammogram, we can measure the peak current for each of the five standard
                            solutions.</li>
                        <li>Using the Peak Height tool, measure all peak currents for all of the standard solutions
                            and also measure the peak current for the voltammogram obtained using the crocin
                            test solution. Record all of these results in the notebook.</li>
                        <li>The same steps were followed in case of PINE WAVENOW Instrument.</li>
                    </ul>
                    </div>
                    <br />
                    <h3>
                        Calibration Curve</h3>
                        <div style="padding-left:40px;">
                    <ul>
                        <li>Using the peak height data, prepare the calibration curve of peak current versus
                            acetaminophen concentration. This can be done using a piece of graph paper, or more
                            preferably, a spreadsheet program such as Microsoft Excel.</li>
                        <li>Use the linear least squares method to fit a straight line to the data on the calibration
                            curve. Calculate the slop and the intercept of best straight line that fits the
                            data, and write down the equation that correlates the peak current with the acetaminophen
                            concentration.</li>
                    </ul>
                    </div>
                    <br />
                    <center>
                        <img src="images/DA_Graph1.jpg" width="800px" alt="Data Analysis 1" />
                        <br />
                        <br />
                        <p>
                            Calibration curve for DROPSENS Instrument</p>
                    </center>
                    <br />
                    <center>
                        <img src="images/DA_Graph2.jpg" width="800px" alt="Data Analysis 2" />
                        <br />
                        <br />
                        <p>
                            Calibration curve for PINE WAVENOW Instrument</p>
                    </center>
                    <br />
                    <div style="padding-left:40px;">
                    <ul>
                        <li>Using the equation for the best fit line, compute the acetaminophen concentration
                            in the test crocin sample solution.</li>
                        <li>After taking different dilutions into account, compute the acetaminophen concentration
                            in the original solution.</li>
                        <li>A concentration range of 5 to 30 µg ml<sup>-1</sup> of acetaminophen was chosen for calibration
                            curve preparation because in this range the correlation coefficient was almost unity.</li>
                        <li>Since 10 tablets = 6.06 g ; 1 tablet = 0.6 g = 600mg<br />
                            600 mg = 500 mg (mentioned on tablet)<br />
                            Hence, 1 mg = 0.84 mg </li>
                        <li>The concentration of acetaminophen in a crocin tablet was found approximately
                            97% of mentioned concentration by screen printed carbon electrode and more than
                            98.5 % by MWCNT screen printed electrode.</li>
                    </ul>
                    </div>
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

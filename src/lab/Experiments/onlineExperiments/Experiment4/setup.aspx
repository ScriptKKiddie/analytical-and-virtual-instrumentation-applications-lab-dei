<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment4.setup" %>

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
            <span class="title">Setup</span>
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
                        The experimental setup consists of the following components:</p>
                    <br />
                    <h3>
                        Apparatus</h3>
                    <br />
                    <p>
                        All electrochemical experiments were done using a DROPSENS potentiostat (µStat 400
                        – ref. DRP – STAT400).A conventional three electrodes potentiostatic system is used
                        in order to perform the electrochemical measurements. The three electrodes are integrated
                        in the screen – printed carbon nano tube (CNT) electrode, where working and counter
                        electrodes are based on a carbon ink and a silver pseudo-reference electrode is
                        used.
                    </p>
                    <br />
                    <br />
                    <table align="center">
                        <tr>
                            <td>
                                <img src="Images/electrode.JPG" align="center" height="200px" width="250px" alt="Electrodes Image" />
                            </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <img src="images/potentiostate.jpg" align="center" height="200px" width="250px" alt="Potentiostat" />
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                                Screen Printed Electrode
                            </td>
                            <td>
                            </td>
                            <td>
                                DROPSENS Potentiostat
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <p>
                        Another Potentiostat is PINE WAVENOW within its three electrodes system. The screen
                        printed Electrodes are carbon as working, Ag/AgCl as reference and Pt as counter electrode.
                    </p>
                    <br />
                    <br />
                    <table align="center">
                        <tr>
                            <td>
                                <img src="Images/pineelectrode.JPG" align="center" height="250px" width="150px" alt="Electrodes Image" />
                            </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <img src="images/pinepotentiostate.jpg" align="center" height="200px" width="250px"
                                    alt="Potentiostat" />
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                                Screen Printed Electrode
                            </td>
                            <td>
                            </td>
                            <td>
                                PINE WAVENOW Potentiostat
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <h3>
                        Chemicals / Reagents</h3>
                    <br />
                    <p>
                        All reagents were of analytical reagent grade and ultra pure water was used throughout.
                        Acetaminophen standard solution 1000 µg ml<sup>-1</sup> was prepared freshly, by
                        dissolving 0.10 g of acetaminophen (ALDRICH) in 100.00 ml of warm water. More dilute
                        solutions were prepared by dilution with 0.10 mol L<sup>-1</sup> phosphate buffer
                        solution (PBS) pH 7.0, as required. The solutions were stored in a cool, light protected
                        cool location.</p>
                    <br />
                    <h3>
                        Experimental</h3>
                    <br />
                    <p>
                        A conventional three-electrodes potentiostatic system is used in order to carry
                        out the electrochemical measurements. The reference is of Ag/AgCl and the working,
                        counter electrodes are of carbon ink.
                    </p>
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

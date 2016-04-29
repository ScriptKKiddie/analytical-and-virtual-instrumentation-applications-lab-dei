<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="introduction.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment2.introduction" %>

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
            <span class="title">Introduction</span>
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
                        Objective</h1>
                    <br />
                    <p>
                        Determination of Heavy Metals in Yamuna Water by Differential Pulse Anodic Stripping
                        Voltammetry.</p>
                    <br />
                    <h1>
                        Introduction</h1>
                    <br />
                    <p>
                        Anodic stripping voltammetry or ASV is one of the most sensitive, convenient, and
                        cost effective analytical methods for detection and determination of metal ion contaminants,
                        such as lead, in water whether from rivers, lakes, process streams or drinking sources.
                        With ASV, it is possible to analyze simultaneously very low levels of several metals
                        such as Pb, Cu, Cd and Zn. ASV can detect levels in the range of part-per-million
                        (ppm) or even part-per-billion (ppb) (i.e., ~10<sup>-10</sup> M).
                        <br />
                    </p>
                    <br />
                    <p style="text-align: center;">
                        <img alt="Jaroslav Heyrovsky" src="Images/scientist.jpg" align="center" />
                        <br />
                        Jaroslav Heyrovsky
                        <br />
                        (1890 -1967)
                    </p>
                    <br />
                    <h1>
                        Theory</h1>
                    <br />
                    <br />
                    <p>
                        Heavy metal poisoning has become an increasingly major health problem, especially
                        since the industrial revolution. Heavy metals are in the water we drink, the foods
                        we eat, the air we breathe, our daily household cleaners, our cookware and our other
                        daily tools. A heavy metal has a density at least 5 times that of water and cannot
                        be metabolized by the body, therefore accumulating in the body. Heavy metal toxicity
                        can cause our mental functions, energy, nervous system, kidneys, lungs and other
                        organ functions to decline. Learning where these metals can be found and decreasing
                        one’s exposure is vital to staying healthy. For the person who wonders if they have
                        heavy metal poisoning, testing is essential. If a person has heavy metal toxicity
                        then interventional natural medicine procedures need to be performed.
                    </p><br />
                    <p>
                        Rapid industrial development in the last few decades has added huge loads of pollutants
                        to our rivers (CPCB, New Delhi, 2004). Out of these pollutants, heavy metals are
                        of major concern because of their persistent and bio-accumulative nature. These
                        heavy metals may be of geological origin entering into the river system by weathering
                        and erosion (Zhang & Haung, 1993) or anthropogenic due to mining, industrial processing,
                        agricultural run-off and sewage disposal (Abbasi et al, 1998). In the aquatic system
                        a rapid removal of these heavy metals from the water to sediments may occur by settling
                        particles while some of these pollutants can be mobilized by getting accumulated
                        into the biota from the sediments sink (Lo et al, 1992).</p><br />
                    <p style="text-align: center">
                        <img src="Images/theoryGraph.jpg" alt="Graph" />
                        <br />
                        A: Cleaning step, B: Electroplating step, C: Equilibration step, D: Stripping step
                    </p><br />
                    <p>
                        ASV involves a deposition step (often called pre-concentration) at an applied negative
                        potential for a specified period of time. The metals, as ions in solution, are concentrated
                        by plating them onto the electrode in their metallic form. Then the electrode is
                        scanned linearly toward positive potentials so that the metals, one at a time, are
                        stripped from the electrode and re-oxidized at a potential characteristic of each
                        metal. The resulting current-voltage peaks can be compared with those in a calibration
                        curve done with standard solutions of known quantities of metal ions. Besides determining
                        which metals are present, the quantity of each metal can be correlated to the peak
                        height of the current or the integrated charge under the peak.</p><br />
                    <p>
                        ASV was originally developed with a hanging mercury drop electrode (HMDE) where
                        the metals often form an amalgam. However, to limit the quantity of toxic Hg used,
                        thin Hg films can be pre-deposited onto an electrode such as glassy carbon or co-deposited
                        simultaneously with the analyte metal ions. The amount of Hg deposited is very little
                        and can be readily removed at potentials less negative than those of the analyte
                        metals, such as Pb, Cd and Cu.</p>
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

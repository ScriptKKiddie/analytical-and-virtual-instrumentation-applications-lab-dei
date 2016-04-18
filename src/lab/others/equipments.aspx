<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="equipments.aspx.cs" Inherits="VirtualLab.others.equipments" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Analytical & Virtual Instrumentation Applications Lab</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
    </script>

    <link rel="stylesheet" type="text/css" href="../ddtabmenufiles/glowtabs.css" />
</head>
<body id="Body1" bgcolor="#FFFFFF" runat="server">
    <form id="Form1" runat="server">
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
            <li><a href="../feedback/feedbacks.aspx" target="_self">Feedback</a></li>
            <li><a href="livecam.aspx" target="_self">Live View</a></li>
            <li><a href="#" target="_self">Equipments</a></li>
            <li><a href="faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="people.aspx" target="_self">People</a></li>
            <li><a href="contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">Labs Equipments</span>
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
            <table>
                <tbody>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <b>FRA 2 AUTOLAB PGSTAT 302N</b>
                        </td>
                        <td>
                            <a href="http://www.metrohm-autolab.com/Products/Echem/PGSTAT302N.html" target="_blank">
                                <img src="../Images/Metrohm_Autolab_Potentiostats_Galvanostats_302Nangle.jpg" alt="Autolab"
                                    height="150px" width="250px" /></a>
                        </td>
                        <td>
                            AUTOLAB with its User interface NOVA (version 1.6) is a boon in all the electrochemical
                            and voltammetric studies. Very high sensitivity, Electrolytic and non-electrolytic
                            system analysis, Interpretations, ECD module-ability to measure low currents (nA,
                            pA), Comparative studies, Low detection limit, Working with the accessories (MUX)
                            etc. are some of its characteristics which determines the need and importance of
                            the instrument for electrochemical measurements.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <b>PINE Wavenow</b>
                        </td>
                        <td>
                            <a href="http://www.pineinst.com/echem/viewproduct.asp?ID=47071" target="_blank">
                                <img src="../Images/wavenow_001.jpg" alt="Pine Wavenow" height="150px" width="250px" /></a>
                        </td>
                        <td>
                            The PINE Wavenow with its interface Aftermath helps in electrochemical analysis
                            of Redox systems using the three electrode system. The portability and high sensivity
                            makes the PINE potentiostat to the most in the virtual instrumentation and the remote
                            studies.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <b>Dropsens µSTAT 400</b>
                        </td>
                        <td>
                            <a href="http://www.dropsens.com/en/potentiostats_pag.html" target="_blank">
                                <img src="../Images/dropsens.jpg" alt="Dropsens" height="150px" width="250px" /></a>
                        </td>
                        <td>
                            The ability to determine the low concentration of the solution systems and the use
                            of Screen Printed Modified Electrodes (Prussian blue, MWCNT) is the forte of the
                            instrument. DROPSENS is the portable instrument and works on the three electrode
                            system.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <b>MUX System</b>
                        </td>
                        <td>
                            <a href="http://www.metrohm-autolab.com/export/Homepages/Autolab/Products/Echem/MUX.html"
                                target="_blank">
                                <img src="../Images/Mux.PNG" alt="Mux System" height="150px" width="250px" /></a>
                        </td>
                        <td>
                            MUX module enables the user to work with more than one electrochemical system at
                            a time in tandem with the AUTOLAB potentiostat. The system allows the comparative
                            redox studies and enables the analysis of four electrochemical cells with auto switching
                            from one to another.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <b>FRA 2 μ AUTOLAB TYPE III</b>
                        </td>
                        <td>
                            <a href="http://www.metrohm-autolab.com/Products/Echem/uAUTIIIFRA2.html" target="_blank">
                                <img src="../Images/uAUT_FRA2.jpg" alt="Autolan Type III" height="150px" width="250px" /></a>
                        </td>
                        <td>
                            The µAutolab Type III/FRA2 is an ideal choice for those who are looking for a low
                            cost and compact but high performance electrochemical impedance analyzer. Its current
                            ranges from 10 mA to 10 nA. The interaction with the potentiostat can be achieved
                            by the use of NOVA (version 1.6/1.5).
                        </td>
                    </tr>
                </tbody>
            </table>
            <p class="meta" style="font-family: 'Courier New', Courier, monospace; font-size: large;
                font-weight: bold; font-style: normal">
            </p>
            <br />
            <br />
            <div class="entry" align="center">
            </div>
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

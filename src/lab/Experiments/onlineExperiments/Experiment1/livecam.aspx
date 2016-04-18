<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="livecam.aspx.cs" Inherits="VirtualLab.Experiments.onlineExperiments.Experiment1.livecam" %>

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
            <span class="title">Live Cameras</span>
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
                <div class="entry" style="padding: 10px 0px 10px 15px; text-align: center;">
                    <br />

         <script type="text/javascript">
             var height_array = new Array();
             var width_array = new Array();
             width_array[1] = 640;
             height_array[1] = 480;
</script>
<img src="http://220.227.100.58:8080/loading.jpg" class="webcam" id="webcam1" onmousedown="PTZMouseDown1(event)" width="640" height="480" alt="Live Stream" />
<script type="text/javascript">
<!--
    currentCamera1 = 1;
    errorimg1 = 0;
    document.images.webcam1.onload = DoIt1;
    document.images.webcam1.onerror = ErrorImage1;
    function LoadImage1() {
        uniq1 = Math.random();
        document.images.webcam1.src = "http://220.227.100.58:8080/cam_" + currentCamera1 + ".jpg?uniq=" + uniq1;
        document.images.webcam1.onload = DoIt1;
    }
    function PTZMouseDown1(e) {
        var IE = document.all ? true : false;
        var x, y;
        var myx, myy;
        var myifr = document.getElementById("_iframe-ptz");
        tp = getElPos1();
        myx = tp[0];
        myy = tp[1];
        if (IE) {
            var scrollX = document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft;
            var scrollY = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop;
            x = event.clientX - myx + scrollX;
            y = event.clientY - myy + scrollY;
        } else {
            x = e.pageX - myx;
            y = e.pageY - myy;
        }
        if ((width_array[currentCamera1] != null) && (width_array[currentCamera1] > 0)) x = Math.round((x * 400) / width_array[currentCamera1]);
        if ((height_array[currentCamera1] != null) && (height_array[currentCamera1] > 0)) y = Math.round((y * 300) / height_array[currentCamera1]);
        if (x > 400) x = 400;
        if (y > 300) y = 300;
        if (myifr != null) myifr.src = "http://220.227.100.58:8080/ptz?src=" + currentCamera1 + "&moveto_x=" + x + "&moveto_y=" + y + "";
        return true;
    }
    function getElPos1() {
        el = document.images.webcam1;
        x = el.offsetLeft;
        y = el.offsetTop;
        elp = el.offsetParent;
        while (elp != null) {
            x += elp.offsetLeft;
            y += elp.offsetTop;
            elp = elp.offsetParent;
        }
        return new Array(x, y);
    }
    function ErrorImage1() {
        errorimg1++;
        if (errorimg1 > 3) {
            document.images.webcam1.onload = "";
            document.images.webcam1.onerror = "";
            document.images.webcam1.src = "offline.jpg";
        } else {
            uniq1 = Math.random();
            document.images.webcam1.src = "http://220.227.100.58:8080/cam_" + currentCamera1 + ".jpg?uniq=" + uniq1;
        }
    }
    function DoIt1() {
        errorimg1 = 0;
        window.setTimeout("LoadImage1();", 40);
    }
//-->
</script>  
<br />
<br />
<br />                  

                
<script type="text/javascript">
    var height_array = new Array();
    var width_array = new Array();
    width_array[2] = 640;
    height_array[2] = 480;
</script>
<img src="http://220.227.100.58:8080/loading.jpg" class="webcam" id="webcam2" onmousedown="PTZMouseDown2(event)" width="640" height="480" alt="Live Stream" />
<script type="text/javascript">
<!--
    currentCamera2 = 2;
    errorimg2 = 0;
    document.images.webcam2.onload = DoIt2;
    document.images.webcam2.onerror = ErrorImage2;
    function LoadImage2() {
        uniq2 = Math.random();
        document.images.webcam2.src = "http://220.227.100.58:8080/cam_" + currentCamera2 + ".jpg?uniq=" + uniq2;
        document.images.webcam2.onload = DoIt2;
    }
    function PTZMouseDown2(e) {
        var IE = document.all ? true : false;
        var x, y;
        var myx, myy;
        var myifr = document.getElementById("_iframe-ptz");
        tp = getElPos2();
        myx = tp[0];
        myy = tp[1];
        if (IE) {
            var scrollX = document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft;
            var scrollY = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop;
            x = event.clientX - myx + scrollX;
            y = event.clientY - myy + scrollY;
        } else {
            x = e.pageX - myx;
            y = e.pageY - myy;
        }
        if ((width_array[currentCamera2] != null) && (width_array[currentCamera2] > 0)) x = Math.round((x * 400) / width_array[currentCamera2]);
        if ((height_array[currentCamera2] != null) && (height_array[currentCamera2] > 0)) y = Math.round((y * 300) / height_array[currentCamera2]);
        if (x > 400) x = 400;
        if (y > 300) y = 300;
        if (myifr != null) myifr.src = "http://220.227.100.58:8080/ptz?src=" + currentCamera2 + "&moveto_x=" + x + "&moveto_y=" + y + "";
        return true;
    }
    function getElPos2() {
        el = document.images.webcam2;
        x = el.offsetLeft;
        y = el.offsetTop;
        elp = el.offsetParent;
        while (elp != null) {
            x += elp.offsetLeft;
            y += elp.offsetTop;
            elp = elp.offsetParent;
        }
        return new Array(x, y);
    }
    function ErrorImage2() {
        errorimg2++;
        if (errorimg2 > 3) {
            document.images.webcam2.onload = "";
            document.images.webcam2.onerror = "";
            document.images.webcam2.src = "offline.jpg";
        } else {
            uniq2 = Math.random();
            document.images.webcam2.src = "http://220.227.100.58:8080/cam_" + currentCamera2 + ".jpg?uniq=" + uniq2;
        }
    }
    function DoIt2() {
        errorimg2 = 0;
        window.setTimeout("LoadImage2();", 40);
    }
//-->
</script>

<br />
<br />
<br />
<script type="text/javascript">
    var height_array = new Array();
    var width_array = new Array();
    width_array[3] = 640;
    height_array[3] = 480;
</script>
<img src="http://220.227.100.58:8080/loading.jpg" class="webcam" id="webcam3" onmousedown="PTZMouseDown3(event)" width="640" height="480" alt="Live Stream" />
<script type="text/javascript">
<!--
    currentCamera3 = 3;
    errorimg3 = 0;
    document.images.webcam3.onload = DoIt3;
    document.images.webcam3.onerror = ErrorImage3;
    function LoadImage3() {
        uniq3 = Math.random();
        document.images.webcam3.src = "http://220.227.100.58:8080/cam_" + currentCamera3 + ".jpg?uniq=" + uniq3;
        document.images.webcam3.onload = DoIt3;
    }
    function PTZMouseDown3(e) {
        var IE = document.all ? true : false;
        var x, y;
        var myx, myy;
        var myifr = document.getElementById("_iframe-ptz");
        tp = getElPos3();
        myx = tp[0];
        myy = tp[1];
        if (IE) {
            var scrollX = document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft;
            var scrollY = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop;
            x = event.clientX - myx + scrollX;
            y = event.clientY - myy + scrollY;
        } else {
            x = e.pageX - myx;
            y = e.pageY - myy;
        }
        if ((width_array[currentCamera3] != null) && (width_array[currentCamera3] > 0)) x = Math.round((x * 400) / width_array[currentCamera3]);
        if ((height_array[currentCamera3] != null) && (height_array[currentCamera3] > 0)) y = Math.round((y * 300) / height_array[currentCamera3]);
        if (x > 400) x = 400;
        if (y > 300) y = 300;
        if (myifr != null) myifr.src = "http://220.227.100.58:8080/ptz?src=" + currentCamera3 + "&moveto_x=" + x + "&moveto_y=" + y + "";
        return true;
    }
    function getElPos3() {
        el = document.images.webcam3;
        x = el.offsetLeft;
        y = el.offsetTop;
        elp = el.offsetParent;
        while (elp != null) {
            x += elp.offsetLeft;
            y += elp.offsetTop;
            elp = elp.offsetParent;
        }
        return new Array(x, y);
    }
    function ErrorImage3() {
        errorimg3++;
        if (errorimg3 > 3) {
            document.images.webcam3.onload = "";
            document.images.webcam3.onerror = "";
            document.images.webcam3.src = "offline.jpg";
        } else {
            uniq3 = Math.random();
            document.images.webcam3.src = "http://220.227.100.58:8080/cam_" + currentCamera3 + ".jpg?uniq=" + uniq3;
        }
    }
    function DoIt3() {
        errorimg3 = 0;
        window.setTimeout("LoadImage3();", 40);
    }
//-->
</script>


<br />
<br />
<br />
<script type="text/javascript">
    var height_array = new Array();
    var width_array = new Array();
    width_array[4] = 640;
    height_array[4] = 480;
</script>
<img src="http://220.227.100.58:8080/loading.jpg" class="webcam" id="webcam4" onmousedown="PTZMouseDown4(event)" width="640" height="480" alt="Live Stream" />
<script type="text/javascript">
<!--
    currentCamera4 = 4;
    errorimg4 = 0;
    document.images.webcam4.onload = DoIt4;
    document.images.webcam4.onerror = ErrorImage4;
    function LoadImage4() {
        uniq4 = Math.random();
        document.images.webcam4.src = "http://220.227.100.58:8080/cam_" + currentCamera4 + ".jpg?uniq=" + uniq4;
        document.images.webcam4.onload = DoIt4;
    }
    function PTZMouseDown4(e) {
        var IE = document.all ? true : false;
        var x, y;
        var myx, myy;
        var myifr = document.getElementById("_iframe-ptz");
        tp = getElPos4();
        myx = tp[0];
        myy = tp[1];
        if (IE) {
            var scrollX = document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft;
            var scrollY = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop;
            x = event.clientX - myx + scrollX;
            y = event.clientY - myy + scrollY;
        } else {
            x = e.pageX - myx;
            y = e.pageY - myy;
        }
        if ((width_array[currentCamera4] != null) && (width_array[currentCamera4] > 0)) x = Math.round((x * 400) / width_array[currentCamera4]);
        if ((height_array[currentCamera4] != null) && (height_array[currentCamera4] > 0)) y = Math.round((y * 300) / height_array[currentCamera4]);
        if (x > 400) x = 400;
        if (y > 300) y = 300;
        if (myifr != null) myifr.src = "http://220.227.100.58:8080/ptz?src=" + currentCamera4 + "&moveto_x=" + x + "&moveto_y=" + y + "";
        return true;
    }
    function getElPos4() {
        el = document.images.webcam4;
        x = el.offsetLeft;
        y = el.offsetTop;
        elp = el.offsetParent;
        while (elp != null) {
            x += elp.offsetLeft;
            y += elp.offsetTop;
            elp = elp.offsetParent;
        }
        return new Array(x, y);
    }
    function ErrorImage4() {
        errorimg4++;
        if (errorimg4 > 3) {
            document.images.webcam4.onload = "";
            document.images.webcam4.onerror = "";
            document.images.webcam4.src = "offline.jpg";
        } else {
            uniq4 = Math.random();
            document.images.webcam4.src = "http://220.227.100.58:8080/cam_" + currentCamera4 + ".jpg?uniq=" + uniq4;
        }
    }
    function DoIt4() {
        errorimg4 = 0;
        window.setTimeout("LoadImage4();", 40);
    }
//-->
</script>

                    
                </div>
                <br />
                <br />
                <a href="http://220.227.100.58:1050/main.htm" target="_blank">Complete Instrument View</a>
            </div>
            <br />
            <br />
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

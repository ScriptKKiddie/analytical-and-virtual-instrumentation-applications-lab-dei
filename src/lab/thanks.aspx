<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thanks.aspx.cs" Inherits="VirtualLab.thanks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
    <div style="position: relative; text-align: center; margin: auto; width: 1024px;
        background-color: #e3f2fc; top: 0px; left: 0px;">
        <br />
        <h2>VITAL LABS (<u>V</u>irtual <u>T</u>eaching <u>a</u>nd <u>L</u>earning Labs)</h2>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
            <br />
            <h1 class="title">
                <a href="#">Thank You</a>
            </h1>
            <p class="meta" style="font-family: 'Courier New', Courier, monospace; font-size: large;
                font-weight: bold; font-style: normal">
                <a href="#"></a>&nbsp;&nbsp; <a href="#" class="comments"></a>
            </p>
            <p style="text-align:center;">
            <asp:Label ID="name" runat="server" Font-Bold="True" ForeColor="#990000"></asp:Label>
            </p>
            <br />
            <br />
            
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

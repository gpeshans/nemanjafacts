<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NemanjasFacts.aspx.cs"
    Inherits="NemanjasFacts.NemanjasFacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nemanja's Facts</title>
    <!-- Title icon -->
    <link rel="SHORTCUT ICON" href="~/img/troll_icon.jpg" type="image/x-icon" />
    <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <style>
        body
        {
            font-family: Helvetica, sans-serif;
            font-size: 22px;
            line-height: 20px;
            font-weight: normal;
            color: #fff;
            background: url(../img/troll.jpg) top center ;
            background-size: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" width:100%; margin: 0 auto;">
        <div style="margin: 0 auto; padding: 50px 0 30px 45%;">
            <asp:Button ID="btnFact" runat="server" Text="Generate Fact" CssClass="btn btn-primary btn-large" /></div>
        <div style="margin: 0 auto; text-align:center; padding:0 200px;" id="fact" runat="server">
        </div>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Practical6.ChangeStyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link id="lnkCSS" runat="server" href = "Stadard.css" rel="stylesheet" type="text/css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divMain">
            <asp:Label ID="lblHello" runat="server" Text="<%  %>"/>
            <asp:Label ID="lblName" runat="server"></asp:Label>
            &nbsp;from
            <asp:Label ID="lblProgramme" runat="server"></asp:Label>
            <br />
            <br />
            Welcome to BAIT2113 Web Application Development.&nbsp;</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Practical6.Global" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%= (string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            You are visitors :
            <asp:Label ID="lblVisitorCount" runat="server"></asp:Label>
            <br />
            You access this site on <asp:Label ID="lblVisitDateTime" runat="server"></asp:Label>
            <br />
            <br />
            Choose a theme:
            <asp:DropDownList ID="ddlTheme" runat="server">
                <asp:ListItem Value="Standard.css">Standard</asp:ListItem>
                <asp:ListItem Value="Special.css">Special</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:Button ID="btnApply" runat="server" Text="Apply" OnClick="btnApply_Click" />
            <br />
            <asp:CheckBox ID="chkRemember" runat="server" Text="Remember my preference" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NextPage.aspx">Next Page</asp:HyperLink>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NextPage.aspx.cs" Inherits="Practical6.NextPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%= (string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name :&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            Programme :&nbsp;<asp:RadioButtonList ID="rblProgramme" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>RDS</asp:ListItem>
                <asp:ListItem>REI</asp:ListItem>
                <asp:ListItem>RIS</asp:ListItem>
                <asp:ListItem>RSD</asp:ListItem>
                <asp:ListItem>RST</asp:ListItem>
                <asp:ListItem>RSW</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;Language:
            <asp:DropDownList ID="ddlLanguage" runat="server">
                <asp:ListItem Value="ms-MY">Malay</asp:ListItem>
                <asp:ListItem Value="en-US">English</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:LinkButton ID="lbtGo" runat="server" OnClick="lbtGo_Click">Go</asp:LinkButton>
        </div>
    </form>
</body>
</html>

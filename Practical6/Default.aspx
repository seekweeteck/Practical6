<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practical6.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Input:
            <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Input" />
&nbsp;<asp:Button ID="btnJustSubmit" runat="server" Text="Just Submit" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Value of the string held in the MEMBER VARIABLE: "></asp:Label>
            <asp:Label ID="lblShowString" runat="server"></asp:Label>
            <br />
            <br />
            Value of the string held in the SESSION STATE:
            <asp:Label ID="lblShowStringAsSessionState" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

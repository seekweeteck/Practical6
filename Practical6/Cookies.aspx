<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="Practical6.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblLanguage" runat="server"></asp:Label>
&nbsp;<br />
            <asp:Button ID="btnShowLanguageCode" runat="server" Text="Show Language Code" OnClick="btnShowLanguageCode_Click" />
        </div>
    </form>
</body>
</html>

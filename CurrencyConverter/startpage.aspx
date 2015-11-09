<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startpage.aspx.cs" Inherits="CurrencyConverter.startpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Convert page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>        

        <h1>Convert something hgdhgkghkdjhgkdgh </h1>

        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <!-- when the button is clicked it will redirect to convertpage.aspx -->
        <br />
        <asp:Button ID="ConvertButton" runat="server" Text="Convert" OnClick="ConvertButton_Click" />
    </div>
    </form>
</body>
</html>

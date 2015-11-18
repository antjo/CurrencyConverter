<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="convertpage.aspx.cs" Inherits="CurrencyConverter.convertpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Convert page</title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
        <center>
        <h1 style="text-align:center">Convert Page</h1>

        
        <br />
        <asp:Label runat="server" Text="Amount" Font-Size="Large" ID="AmountText"></asp:Label>
        <br />
        <asp:Label ID="ToFromText" runat="server" Text="Label" ></asp:Label>        
        <br />
        <asp:Label ID="FromToText" runat="server" Text="Label" ></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Convert Again" OnClick="Button1_Click" />
    </center>
    </div>
    
    </form>
</body>
</html>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startpage.aspx.cs" Inherits="CurrencyConverter.startpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Convert page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>        
        <h1>Convert something diffrent another time again ggggg</h1>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <!-- when the button is clicked it will redirect to convertpage.aspx -->
        <br />
        <asp:Button ID="ConvertButton" runat="server" Text="Convert" OnClick="ConvertButton_Click" />
    </div>
    </form>
</body>
</html>

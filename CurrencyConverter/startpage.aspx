<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startpage.aspx.cs" Inherits="CurrencyConverter.startpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Convert page</title>
    <style type="text/css">
        .auto-style2 {
            width: 181px;
        }
        .auto-style4 {
            width: 76%;
            margin-left: 98px;
        }
        .auto-style5 {
            width: 6px;
        }
        .auto-style6 {
            width: 40px;
        }
        .auto-style7 {
            width: 180px;
        }
        .auto-style8 {
            height: 375px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div class="auto-style8">        

        <h1 style="height: 92px; text-align: center">&nbsp;</h1>
        <h1 style="height: 92px; text-align: center">Shadow Corp Currency Converter</h1>

    
    
    
            
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;




    &nbsp;
    &nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
        <br />
        <!-- when the button is clicked it will redirect to convertpage.aspx -->
        <br />

            <table class="auto-style4">
                <tr>
                    <td class="auto-style7">
            

                        Amount of money</td>
                    <td class="auto-style2">From</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">To</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">

    
    
    
            
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">




    <asp:DropDownList ID="DropDownList3" runat="server" Height="27px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="198px">
    </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
    <asp:Button ID="Button2" runat="server" height="27px" Text="Swap" width="63px" />
                    </td>
                    <td class="auto-style6">
    <asp:DropDownList ID="DropDownList4" runat="server" Height="27px" Width="197px">
    </asp:DropDownList>
                    </td>
                    <td>
    <asp:Button ID="ConvertButton0" runat="server" height="27px" OnClick="ConvertButton_Click" Text="Convert" />
                    </td>
                </tr>
                </table>
    </div>

        </center>
    </form>
</body>
</html>

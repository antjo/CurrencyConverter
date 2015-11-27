<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startpage.aspx.cs" Inherits="CurrencyConverter.startpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Convert page</title>
    <style type="text/css">
        .auto-style7 {
            width: 180px;
        }

        .auto-style8 {
            height: 375px;
        }

        .auto-style10 {
            width: 231px;
            text-align: left;
        }

        .auto-style11 {
            width: 105px;
        }

        .auto-style12 {
            width: 214px;
        }

        .auto-style13 {
            width: 193px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

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

            <div style="text-align: center;">
                <%-- <div style="margin: 0 auto; text-align:left;" class="auto-style9">--%>
                <center>
            <table  >
                <tr>
                    <td class="auto-style7" style="width: 110px;">
            

                        Amount of money</td>
                    <td class="auto-style13" style="width: 20px">From</td>
                    <td class="auto-style11" style="width: 40px">&nbsp;</td>
                    <td class="auto-style12" style="width: 110px">To</td>
                    <td class="auto-style10" style="width: 60px;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7" style="width: 110px" >

    
    
    
            
                        <asp:TextBox ID="money_text_box" runat="server" Width="131px" Height="20px" MaxLength="0" ></asp:TextBox>
                    </td>
                    <td class="auto-style13" style="width: 20px" >


     

    <asp:DropDownList ID="ddlfrom" runat="server" Height="27px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="198px">
        
    </asp:DropDownList>
                    </td>
                    <td class="auto-style11" style="width: 40px" >
    <asp:Button ID="Button2" runat="server" height="29px" Text="Swap" width="63px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style12" style="width: 110px" >
    <asp:DropDownList ID="ddlto" runat="server" Height="27px" Width="197px" OnSelectedIndexChanged="ddlto_SelectedIndexChanged">
        
    </asp:DropDownList>
                    </td>
                    <td class="auto-style10" style="width: 60px;">
    <asp:Button ID="ConvertButton0" runat="server" height="29px" OnClick="ConvertButton_Click" Text="Convert" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
                </center>
            </div>
        </div>
        <br />





    </form>
</body>

</html>

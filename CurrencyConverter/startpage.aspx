<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startpage.aspx.cs" Inherits="CurrencyConverter.startpage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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





            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>





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

    
    
    
            
                        <asp:TextBox ID="money_text_box" runat="server" Width="131px" Height="20px"></asp:TextBox>
                    </td>
                    <td class="auto-style13" style="width: 20px" >




    <asp:DropDownList ID="ddlfrom" runat="server" Height="27px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="198px">
    <asp:ListItem Value="USD" Selected = "true" Text="United States Dollars $"></asp:ListItem>
    <asp:ListItem Value="EUR" Text="Euro €"></asp:ListItem>
    <asp:ListItem Value="GBP" Text="United Kingdom Pounds £"></asp:ListItem>
    <asp:ListItem Value="JPY" Text="Japan Yen ¥"></asp:ListItem>
    <asp:ListItem Value="AFN" Text="Afghanistan Afghanis ؋"></asp:ListItem>
    <asp:ListItem Value="ALL" Text="Albania Leke Lek"></asp:ListItem>
    <asp:ListItem Value="DZD" Text="Algeria Dinars DA"></asp:ListItem>
    <asp:ListItem Value="ARS" Text="Argentina Pesos $"></asp:ListItem>
    <asp:ListItem Value="AUD" Text="Australia Dollars $"></asp:ListItem>
    <asp:ListItem Value="BSD" Text="Bahamas Dollars $"></asp:ListItem>
    <asp:ListItem Value="BHD" Text="Bahrain Dinars BD"></asp:ListItem>
    <asp:ListItem Value="BDT" Text="Bangladesh Taka Tk"></asp:ListItem>
    <asp:ListItem Value="BBD" Text="Barbados Dollars $"></asp:ListItem>
    <asp:ListItem Value="BMD" Text="Bermuda Dollars $"></asp:ListItem>
    <asp:ListItem Value="BRL" Text="Brazil Reais R$"></asp:ListItem>
    <asp:ListItem Value="BGN" Text="Bulgaria Leva лв"></asp:ListItem>
    <asp:ListItem Value="CAD" Text="Canada Dollars $"></asp:ListItem>
    <asp:ListItem Value="XOF" Text="CFA Francs BCEAO CFAF"></asp:ListItem>
    <asp:ListItem Value="XAF" Text="CFA Francs BEAC CFAF"></asp:ListItem>
    <asp:ListItem Value="XPF" Text="CFP Francs "></asp:ListItem>
    <asp:ListItem Value="CLP" Text="Chile Pesos $"></asp:ListItem>
    <asp:ListItem Value="CNY" Text="China Yuan Renminbi 元"></asp:ListItem>
    <asp:ListItem Value="COP" Text="Colombia Pesos $"></asp:ListItem>
    <asp:ListItem Value="CRC" Text="Costa Rica Colones ₡"></asp:ListItem>
    <asp:ListItem Value="HRK" Text="Croatia Kuna kn"></asp:ListItem>
    <asp:ListItem Value="CYP" Text="Cyprus Pounds £"></asp:ListItem>
    <asp:ListItem Value="CZK" Text="Czech Republic Koruny Kč"></asp:ListItem>
    <asp:ListItem Value="DKK" Text="Denmark Kroner kr"></asp:ListItem>
    <asp:ListItem Value="DOP" Text="Dominican Republic Pesos RD$"></asp:ListItem>
    <asp:ListItem Value="XCD" Text="East Caribbean Dollars $"></asp:ListItem>
    <asp:ListItem Value="EGP" Text="Egypt Pounds £"></asp:ListItem>
    <asp:ListItem Value="EEK" Text="Estonia Krooni kr"></asp:ListItem>
    <asp:ListItem Value="FJD" Text="Fiji Dollars $"></asp:ListItem>
    <asp:ListItem Value="HKD" Text="Hong Kong Dollars 元"></asp:ListItem>
    <asp:ListItem Value="HUF" Text="Hungary Forint Ft"></asp:ListItem>
    <asp:ListItem Value="ISK" Text="Iceland Kronur kr"></asp:ListItem>
    <asp:ListItem Value="XDR" Text="IMF Special Drawing Rights "></asp:ListItem>
    <asp:ListItem Value="INR" Text="India Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="IDR" Text="Indonesia Rupiahs Rp"></asp:ListItem>
    <asp:ListItem Value="IRR" Text="Iran Rials ﷼"></asp:ListItem>
    <asp:ListItem Value="IQD" Text="Iraq Dinars ID"></asp:ListItem>
    <asp:ListItem Value="ILS" Text="Israel New Shekels ₪"></asp:ListItem>
    <asp:ListItem Value="JMD" Text="Jamaica Dollars J$"></asp:ListItem>
    <asp:ListItem Value="JOD" Text="Jordan Dinars JD"></asp:ListItem>
    <asp:ListItem Value="KZT" Text="Kazakhstan Tenge лв"></asp:ListItem>
    <asp:ListItem Value="KES" Text="Kenya Shillings K Sh"></asp:ListItem>
    <asp:ListItem Value="KWD" Text="Kuwait Dinars KD"></asp:ListItem>
    <asp:ListItem Value="LBP" Text="Lebanon Pounds £"></asp:ListItem>
    <asp:ListItem Value="LYD" Text="Libyan Dinar LD"></asp:ListItem>
    <asp:ListItem Value="MYR" Text="Malaysia Ringgits RM"></asp:ListItem>
    <asp:ListItem Value="MTL" Text="Malta Liri Lm"></asp:ListItem>
    <asp:ListItem Value="MUR" Text="Mauritius Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="MXN" Text="Mexico Pesos $"></asp:ListItem>
    <asp:ListItem Value="MAD" Text="Morocco Dirhams DH"></asp:ListItem>
    <asp:ListItem Value="NZD" Text="New Zealand Dollars $"></asp:ListItem>
    <asp:ListItem Value="NGN" Text="Nigeria Nairas ₦"></asp:ListItem>
    <asp:ListItem Value="NOK" Text="Norway Kroner kr"></asp:ListItem>
    <asp:ListItem Value="OMR" Text="Oman Rials ﷼"></asp:ListItem>
    <asp:ListItem Value="PKR" Text="Pakistan Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="XPD" Text="Palladium Ounces "></asp:ListItem>
    <asp:ListItem Value="PEN" Text="Peru Nuevos Soles S/."></asp:ListItem>
    <asp:ListItem Value="PHP" Text="Philippines Pesos Php"></asp:ListItem>
    <asp:ListItem Value="PLN" Text="Poland Zlotych zł"></asp:ListItem>
    <asp:ListItem Value="QAR" Text="Qatar Riyals ﷼"></asp:ListItem>
    <asp:ListItem Value="RON" Text="Romania New Lei lei"></asp:ListItem>
    <asp:ListItem Value="RUB" Text="Russia Rubles руб"></asp:ListItem>
    <asp:ListItem Value="SAR" Text="Saudi Arabia Riyals ﷼"></asp:ListItem>
    <asp:ListItem Value="XAG" Text="Silver Ounces "></asp:ListItem>
    <asp:ListItem Value="SGD" Text="Singapore Dollars $"></asp:ListItem>
    <asp:ListItem Value="ZAR" Text="South Africa Rand R"></asp:ListItem>
    <asp:ListItem Value="KRW" Text="South Korea Won ₩"></asp:ListItem>
    <asp:ListItem Value="LKR" Text="Sri Lanka Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="SDG" Text="Sudan Pounds "></asp:ListItem>
    <asp:ListItem Value="SEK" Text="Sweden Kronor kr"></asp:ListItem>
    <asp:ListItem Value="CHF" Text="Switzerland Francs CHF"></asp:ListItem>
    <asp:ListItem Value="TWD" Text="Taiwan New Dollars NT$"></asp:ListItem>
    <asp:ListItem Value="THB" Text="Thailand Baht ฿"></asp:ListItem>
    <asp:ListItem Value="TTD" Text="Trinidad and Tobago Dollars TT$"></asp:ListItem>
    <asp:ListItem Value="TND" Text="Tunisia Dinars TD"></asp:ListItem>
    <asp:ListItem Value="TRY" Text="Turkey Lira YTL"></asp:ListItem>
    <asp:ListItem Value="AED" Text="United Arab Emirates Dirhams Dh"></asp:ListItem>
    <asp:ListItem Value="VEF" Text="Venezuela Bolivares Fuertes "></asp:ListItem>
    <asp:ListItem Value="VND" Text="Vietnam Dong ₫"></asp:ListItem>
    <asp:ListItem Value="ZMK" Text="Zambia Kwacha ZK"></asp:ListItem>
    </asp:DropDownList>
                    </td>
                    <td class="auto-style11" style="width: 40px" >
    <asp:Button ID="Button2" runat="server" height="29px" Text="Swap" width="63px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style12" style="width: 110px" >
    <asp:DropDownList ID="ddlto" runat="server" Height="27px" Width="197px">
        <asp:ListItem Value="USD" Selected = "true" Text="United States Dollars $"></asp:ListItem>
    <asp:ListItem Value="EUR" Text="Euro €"></asp:ListItem>
    <asp:ListItem Value="GBP" Text="United Kingdom Pounds £"></asp:ListItem>
    <asp:ListItem Value="JPY" Text="Japan Yen ¥"></asp:ListItem>
    <asp:ListItem Value="AFN" Text="Afghanistan Afghanis ؋"></asp:ListItem>
    <asp:ListItem Value="ALL" Text="Albania Leke Lek"></asp:ListItem>
    <asp:ListItem Value="DZD" Text="Algeria Dinars DA"></asp:ListItem>
    <asp:ListItem Value="ARS" Text="Argentina Pesos $"></asp:ListItem>
    <asp:ListItem Value="AUD" Text="Australia Dollars $"></asp:ListItem>
    <asp:ListItem Value="BSD" Text="Bahamas Dollars $"></asp:ListItem>
    <asp:ListItem Value="BHD" Text="Bahrain Dinars BD"></asp:ListItem>
    <asp:ListItem Value="BDT" Text="Bangladesh Taka Tk"></asp:ListItem>
    <asp:ListItem Value="BBD" Text="Barbados Dollars $"></asp:ListItem>
    <asp:ListItem Value="BMD" Text="Bermuda Dollars $"></asp:ListItem>
    <asp:ListItem Value="BRL" Text="Brazil Reais R$"></asp:ListItem>
   <asp:ListItem Value="BGN" Text="Bulgaria Leva лв"></asp:ListItem>
    <asp:ListItem Value="CAD" Text="Canada Dollars $"></asp:ListItem>
    <asp:ListItem Value="XOF" Text="CFA Francs BCEAO CFAF"></asp:ListItem>
    <asp:ListItem Value="XAF" Text="CFA Francs BEAC CFAF"></asp:ListItem>
    <asp:ListItem Value="XPF" Text="CFP Francs "></asp:ListItem>
    <asp:ListItem Value="CLP" Text="Chile Pesos $"></asp:ListItem>
    <asp:ListItem Value="CNY" Text="China Yuan Renminbi 元"></asp:ListItem>
    <asp:ListItem Value="COP" Text="Colombia Pesos $"></asp:ListItem>
    <asp:ListItem Value="CRC" Text="Costa Rica Colones ₡"></asp:ListItem>
    <asp:ListItem Value="HRK" Text="Croatia Kuna kn"></asp:ListItem>
    <asp:ListItem Value="CYP" Text="Cyprus Pounds £"></asp:ListItem>
    <asp:ListItem Value="CZK" Text="Czech Republic Koruny Kč"></asp:ListItem>
    <asp:ListItem Value="DKK" Text="Denmark Kroner kr"></asp:ListItem>
    <asp:ListItem Value="DOP" Text="Dominican Republic Pesos RD$"></asp:ListItem>
    <asp:ListItem Value="XCD" Text="East Caribbean Dollars $"></asp:ListItem>
    <asp:ListItem Value="EGP" Text="Egypt Pounds £"></asp:ListItem>
    <asp:ListItem Value="EEK" Text="Estonia Krooni kr"></asp:ListItem>
    <asp:ListItem Value="FJD" Text="Fiji Dollars $"></asp:ListItem>
    <asp:ListItem Value="HKD" Text="Hong Kong Dollars 元"></asp:ListItem>
    <asp:ListItem Value="HUF" Text="Hungary Forint Ft"></asp:ListItem>
    <asp:ListItem Value="ISK" Text="Iceland Kronur kr"></asp:ListItem>
    <asp:ListItem Value="XDR" Text="IMF Special Drawing Rights "></asp:ListItem>
    <asp:ListItem Value="INR" Text="India Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="IDR" Text="Indonesia Rupiahs Rp"></asp:ListItem>
    <asp:ListItem Value="IRR" Text="Iran Rials ﷼"></asp:ListItem>
    <asp:ListItem Value="IQD" Text="Iraq Dinars ID"></asp:ListItem>
    <asp:ListItem Value="ILS" Text="Israel New Shekels ₪"></asp:ListItem>
    <asp:ListItem Value="JMD" Text="Jamaica Dollars J$"></asp:ListItem>
    <asp:ListItem Value="JOD" Text="Jordan Dinars JD"></asp:ListItem>
    <asp:ListItem Value="KZT" Text="Kazakhstan Tenge лв"></asp:ListItem>
    <asp:ListItem Value="KES" Text="Kenya Shillings K Sh"></asp:ListItem>
    <asp:ListItem Value="KWD" Text="Kuwait Dinars KD"></asp:ListItem>
    <asp:ListItem Value="LBP" Text="Lebanon Pounds £"></asp:ListItem>
    <asp:ListItem Value="LYD" Text="Libyan Dinar LD"></asp:ListItem>
    <asp:ListItem Value="MYR" Text="Malaysia Ringgits RM"></asp:ListItem>
    <asp:ListItem Value="MTL" Text="Malta Liri Lm"></asp:ListItem>
    <asp:ListItem Value="MUR" Text="Mauritius Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="MXN" Text="Mexico Pesos $"></asp:ListItem>
    <asp:ListItem Value="MAD" Text="Morocco Dirhams DH"></asp:ListItem>
    <asp:ListItem Value="NZD" Text="New Zealand Dollars $"></asp:ListItem>
    <asp:ListItem Value="NGN" Text="Nigeria Nairas ₦"></asp:ListItem>
    <asp:ListItem Value="NOK" Text="Norway Kroner kr"></asp:ListItem>
    <asp:ListItem Value="OMR" Text="Oman Rials ﷼"></asp:ListItem>
    <asp:ListItem Value="PKR" Text="Pakistan Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="XPD" Text="Palladium Ounces "></asp:ListItem>
    <asp:ListItem Value="PEN" Text="Peru Nuevos Soles S/."></asp:ListItem>
    <asp:ListItem Value="PHP" Text="Philippines Pesos Php"></asp:ListItem>
    <asp:ListItem Value="PLN" Text="Poland Zlotych zł"></asp:ListItem>
    <asp:ListItem Value="QAR" Text="Qatar Riyals ﷼"></asp:ListItem>
    <asp:ListItem Value="RON" Text="Romania New Lei lei"></asp:ListItem>
    <asp:ListItem Value="RUB" Text="Russia Rubles руб"></asp:ListItem>
    <asp:ListItem Value="SAR" Text="Saudi Arabia Riyals ﷼"></asp:ListItem>
    <asp:ListItem Value="XAG" Text="Silver Ounces "></asp:ListItem>
    <asp:ListItem Value="SGD" Text="Singapore Dollars $"></asp:ListItem>
    <asp:ListItem Value="ZAR" Text="South Africa Rand R"></asp:ListItem>
    <asp:ListItem Value="KRW" Text="South Korea Won ₩"></asp:ListItem>
    <asp:ListItem Value="LKR" Text="Sri Lanka Rupees ₨"></asp:ListItem>
    <asp:ListItem Value="SDG" Text="Sudan Pounds "></asp:ListItem>
    <asp:ListItem Value="SEK" Text="Sweden Kronor kr"></asp:ListItem>
    <asp:ListItem Value="CHF" Text="Switzerland Francs CHF"></asp:ListItem>
    <asp:ListItem Value="TWD" Text="Taiwan New Dollars NT$"></asp:ListItem>
    <asp:ListItem Value="THB" Text="Thailand Baht ฿"></asp:ListItem>
    <asp:ListItem Value="TTD" Text="Trinidad and Tobago Dollars TT$"></asp:ListItem>
    <asp:ListItem Value="TND" Text="Tunisia Dinars TD"></asp:ListItem>
    <asp:ListItem Value="TRY" Text="Turkey Lira YTL"></asp:ListItem>
    <asp:ListItem Value="AED" Text="United Arab Emirates Dirhams Dh"></asp:ListItem>
    <asp:ListItem Value="VEF" Text="Venezuela Bolivares Fuertes "></asp:ListItem>
    <asp:ListItem Value="VND" Text="Vietnam Dong ₫"></asp:ListItem>
    <asp:ListItem Value="ZMK" Text="Zambia Kwacha ZK"></asp:ListItem>
    </asp:DropDownList>
    </td>
    <td class="auto-style10" style="width: 60px;">
    <asp:Button ID="ConvertButton0" runat="server" height="29px" OnClick="ConvertButton_Click" Text="Convert" />
    </td>
    </tr>
    </table>
    </center>
    </div>
    </div>
    <br />

    </form>


    <div id="graph">

        <asp:Chart runat="server" ID="chart1">
            <Series></Series>
            <ChartAreas></ChartAreas>
        </asp:Chart>

    </div>


</body>

</html>

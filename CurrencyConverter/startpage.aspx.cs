using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Collections.Generic;

using System.Net;
using System.Web.Script.Serialization;


namespace CurrencyConverter
{
    public partial class startpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
                protected void ConvertButton_Click(object sender, EventArgs e)
        {

            // Response.RedirectPermanent("convertpage.aspx");
            decimal rate_from_api = 0;

            decimal amount_of_money = 1;

            rate_from_api = get_rate_from_api(amount_of_money, ddlfrom.SelectedValue, ddlto.SelectedValue);
            TextBox1.Text = System.Convert.ToString(rate_from_api * System.Convert.ToDecimal(money_text_box.Text));
        }

        private decimal get_rate_from_api(decimal amount_of_money, string from_curr_code, string to_curr_code)

        {

            try

            {
                //
                const string urlPattern = "http://finance.yahoo.com/d/quotes.csv?s={0}{1}=X&f=l1";

                string url = String.Format(urlPattern, from_curr_code, to_curr_code);

                string response = new WebClient().DownloadString(url);

                decimal exchangeRate = decimal.Parse(response, System.Globalization.CultureInfo.InvariantCulture);

                return exchangeRate;

            }

            catch (Exception ex)
            {

                return 0;

            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Int16 indx =  (Int16)ddlto.SelectedIndex ;

            ddlto.SelectedIndex = ddlfrom.SelectedIndex;
            ddlfrom.SelectedIndex = indx;
        }
    }
}
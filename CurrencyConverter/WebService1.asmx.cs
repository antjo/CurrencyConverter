using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services;



namespace CurrencyConverter
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string Curr_converter(string curr_from,string curr_to,decimal amount_of_money)
        {

               decimal rate_from_api = 0;

               string result_amount_of_money ;

               rate_from_api = get_rate_from_api(1, curr_from, curr_to);
               result_amount_of_money = System.Convert.ToString(rate_from_api * amount_of_money);
            return result_amount_of_money;
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
    }
}

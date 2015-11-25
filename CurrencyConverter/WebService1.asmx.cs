using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Services;
using CurrencyConverter.App_Data;
using System.IO;
using Newtonsoft.Json.Linq;

namespace CurrencyConverter
{
    //remove this class !
    public class DataObject
    {
        public string Name { get; set; }
    }


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
        public string Curr_converter(String curr_from,String curr_to,decimal amount_of_money)
        {

               decimal rate_from_api = 0;

               String result_amount_of_money ;

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


        //public CurrencyElement[] createChart(string from_curr_code, string to_curr_code)

        [WebMethod]
        public CurrencyElement[] createChart(string from_curr_code, string to_curr_code)
        {
            //current date in string format
            string date = System.DateTime.Now.Date.ToShortDateString();
            string dateYear = System.DateTime.Now.Date.Year.ToString();
            string dateMonth = System.DateTime.Now.Date.Month.ToString();
            string dateDay = System.DateTime.Now.Date.Day.ToString();

            //API for historical currency rates
            //to get the result formated
            //const string baseUrl = "http://apilayer.net/api/historical?access_key=8e1459e247373b5f72d2087dc42b9afa&format=1";
            //to get result in one line
            const string baseUrl = "http://apilayer.net/api/historical?access_key=8e1459e247373b5f72d2087dc42b9afa";
            string parameters = "&currencies=" + from_curr_code + "," + to_curr_code;

            //list to be returned
            CurrencyElement[] elements;   
            //if the current day would be past the first day of the month
            if (Int16.Parse(dateDay) > 1) elements = new CurrencyElement[13];
            else elements = new CurrencyElement[12];
            
            int arrayLength = elements.GetLength(0);          
            int monthIndex = Int16.Parse(dateMonth);
            
            for (int i = arrayLength-1 ; i >= 0;i-- )
            {
                //if the last calculated month was januari (01) we need to set the date to december the former year
                if (monthIndex <= 0)
                {
                    monthIndex = 12;
                    dateYear = (Int16.Parse(dateYear) - 1).ToString();
                }

                //create CurrencyElement to insert into the returning list.                
                CurrencyElement element = new CurrencyElement();
                //insert the date directly since it is known already.                
                element.AxisX = new DateTime(Int16.Parse(dateYear), monthIndex, Int16.Parse(dateDay));

                //this part aquires the rate to insert to element.AxisY
                //source
                //http://stackoverflow.com/questions/2246694/how-to-convert-json-object-to-custom-c-sharp-object


                string monthIndexString = getMonthIndexString(monthIndex);
                String targetDate = "&date=" + dateYear+ "-" + monthIndexString+"-"+dateDay;

                //set the date day to 1 for the remaining 12 loops
                if (Int16.Parse(dateDay) > 1) dateDay = "01";
                //request the answer from the web API and calculate the rate
                string response = new WebClient().DownloadString(baseUrl + parameters + targetDate);
                JObject jObj = JObject.Parse(response);
                JToken jTok = jObj["quotes"];
                double rate = calcRate((string)jTok["USD" + from_curr_code], (string)jTok["USD" + to_curr_code]);
                  
                //insert rate into the element object and insert the element into the elements list to return later on
                element.AxisY = rate;
                elements[i] = element;
                //switch to the former month
                monthIndex--;
            }

            return elements;
        }
            

        private double calcRate(string fromRate,string toRate)
        {
            //the API only allows USD-<currency> conversions...
            double curr1 = Double.Parse(fromRate, System.Globalization.NumberStyles.AllowDecimalPoint, System.Globalization.NumberFormatInfo.InvariantInfo);
            double curr2 = Double.Parse(toRate, System.Globalization.NumberStyles.AllowDecimalPoint, System.Globalization.NumberFormatInfo.InvariantInfo);
            return ( ( (double)1 ) / curr1 )*curr2;
        } 
            
        private string getMonthIndexString(int monthIndex){
            if(monthIndex < 10) return ("0"+monthIndex.ToString());
            else return (monthIndex.ToString());
        }

            
       
    }
}

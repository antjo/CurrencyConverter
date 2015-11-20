using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;


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



            localhost.WebService1 mywebService = new localhost.WebService1();
            TextBox1.Text = mywebService.Curr_converter(ddlfrom.SelectedValue, ddlto.SelectedValue, System.Convert.ToDecimal(money_text_box.Text));


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
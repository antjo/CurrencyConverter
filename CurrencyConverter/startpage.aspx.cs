using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

using CurrencyConverter.App_Data;
using System.Web.UI.DataVisualization.Charting;

using System.Net;
using System.Web.Script.Serialization;
using System.Drawing;


namespace CurrencyConverter
{
    public partial class startpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            FillWithISOCurrencySymbols(ddlfrom);
            FillWithISOCurrencySymbols(ddlto);
        }


        public static void FillWithISOCurrencySymbols(ListControl ctrl)
        {
            foreach (CultureInfo cultureInfo in CultureInfo.GetCultures(CultureTypes.SpecificCultures))
            {
                RegionInfo regionInfo = new RegionInfo(cultureInfo.LCID);
                if (ctrl.Items.FindByValue(regionInfo.ISOCurrencySymbol) == null)
                {
                    ctrl.Items.Add(new ListItem(regionInfo.CurrencyEnglishName, regionInfo.ISOCurrencySymbol));

                }
            }

        }


        protected void ConvertButton_Click(object sender, EventArgs e)
        {

            int temp = 0;
            if (!money_text_box.Text.Equals("") && Int32.TryParse(money_text_box.Text, out temp))
            {
                WebService1 mywebService = new WebService1();
                TextBox1.Text = mywebService.Curr_converter(ddlfrom.SelectedValue, ddlto.SelectedValue, System.Convert.ToDecimal(money_text_box.Text));
                TextBox2.Text = "1 " + ddlfrom.SelectedValue + " = " + mywebService.get_rate_from_api(1, ddlfrom.SelectedValue, ddlto.SelectedValue) + " " + ddlto.SelectedValue;
                TextBox3.Text = "1 " + ddlto.SelectedValue + " = " + mywebService.get_rate_from_api(1, ddlto.SelectedValue, ddlfrom.SelectedValue) + " " + ddlfrom.SelectedValue; ;
                if (ddlto.SelectedIndex != ddlfrom.SelectedIndex) addChart(ddlfrom.SelectedValue, ddlto.SelectedValue);
                else chart1.Visible = false;
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Swap_Click(object sender, EventArgs e)
        {
            int index = ddlfrom.SelectedIndex;
            ddlfrom.SelectedIndex = ddlto.SelectedIndex;
            ddlto.SelectedIndex = index;
        }


        private void addChart(string from, string to)
        {
            //clear all existing chart areas and series
            chart1.Series.Clear();
            chart1.ChartAreas.Clear();
            //add new chart area and series for the new graph
            chart1.Series.Add("Series1");
            chart1.Series["Series1"].ChartType = SeriesChartType.Line;
            chart1.ChartAreas.Add("ChartArea1");

            //use web service to get the results to plot
            WebService1 mywebService = new WebService1();
            CurrencyElement[] result = mywebService.createChart(from, to);

            //add each data point and label to the series
            foreach (CurrencyElement obj in result)
            {
                DateTime date = (DateTime)obj.AxisX;
                double rate = obj.AxisY;
                chart1.Series["Series1"].Points.AddXY(date.Date, rate);
            }

            //adjust the appearance of the graph plot
            chart1.ChartAreas["ChartArea1"].AxisX.Maximum = ((DateTime)result[result.GetLength(0) - 1].AxisX).ToOADate();
            chart1.ChartAreas["ChartArea1"].AxisX.Minimum = ((DateTime)result[0].AxisX).ToOADate();
            chart1.ChartAreas["ChartArea1"].AxisX.IntervalType = DateTimeIntervalType.Months;
            chart1.ChartAreas["ChartArea1"].AxisX.Interval = 1;



            chart1.Titles.Add(
                new Title(from + " to " + to + " currency changes over the past year",
                    Docking.Top,
                    new Font("Times New Roman", 12, FontStyle.Bold),
                    Color.Red)


                );

            //lastly make the graph visible for the user 
            chart1.Visible = true;
        }
    }


}

    



    
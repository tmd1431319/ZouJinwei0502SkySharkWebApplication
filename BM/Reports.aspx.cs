﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZouJinwei0502SkySharkWebApplication.BM
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String month, date, year;
            month = lstMonth.SelectedItem.Text.Trim();
            year = lstYear.SelectedItem.Text.Trim();
            date = month + "/01/" + year;
            String ConnectionSting = ConfigurationManager.ConnectionStrings["ARpDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionSting);
            conn.Open();
            string selectSql = "SELECT FltNo, SUM(Fare) AS fare from dtDepartedFlights " +
                "where (DataOfJourney>@date) group by FltNo";
            SqlCommand cmd = new SqlCommand(selectSql, conn);
            cmd.Parameter.AddWithValue("@date", date);
            SqlDateAdapter adapter = new SqlDateAdapter(cmd);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "fare");
            conn.Close();
            DataView source = new DataView(dataSet.Tables["fare"]);
            DataGrid1.DataSource = source;
            DataGrid1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String ConnectionSting = ConfigurationManager.ConnectionStrings["ARpDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionSting);
            conn.Open();
            string selectSql = "SELECT FltNO, DateOfJourney, SUM(Fare) AS Revenue from dtDepartedFlights " +
                "Group BY DateOfJourney, FltNo";
            SqlCommand cmd = new SqlCommand(selectSql, conn);
        
            SqlDateAdapter adapter = new SqlDateAdapter(cmd);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "Usage");
            conn.Close();
            DataView source = new DataView(dataSet.Tables["Usage"]);
            DataGrid1.DataSource = source;
            DataGrid1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String ConnectionSting = ConfigurationManager.ConnectionStrings["ARpDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionSting);
            conn.Open();
            string selectSql = "SELECT Top 100 Email, FareCollected,TotalTimesFlown from dtPassengerDetails order by TotalTimesFlown"; 
              
            SqlCommand cmd = new SqlCommand(selectSql, conn);

            SqlDateAdapter adapter = new SqlDateAdapter(cmd);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "FreqFl");
            conn.Close();
            DataView source = new DataView(dataSet.Tables["FreqFl"]);
            DataGrid1.DataSource = source;
            DataGrid1.DataBind();
        }
    }
}
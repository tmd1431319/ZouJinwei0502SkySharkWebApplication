using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZouJinwei0502SkySharkWebApplication.BM
{
    public partial class AddFl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
         
            String ConnectionSting = ConfigurationManager.ConnectionStrings["ARpDatabaseConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionSting);
            conn.Open();
            string selectSql = "SELECT FltNo FROM dtFltDetails";
            SqlCommand cmd = new SqlCommand(selectSql, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "FlightNo");
            conn.Close();
            foreach(DataRow row in dataset.Tables["FlightNo"],Rows)
                {
                if (row[0].ToString().Trim() == txtFlightNumber.Text.Trim())
                {
                    lblMessage.Text = "The Flight already exists. Please try another flight number ";
                    return;
                }
            }
            TimeSpan deptime, arrtime;
            try
            {
                deptime = Convert.ToDateTime(txtDepartureTime.Text).TimeOfDay;
                arrtime = Convert.ToDateTime(txtArrivalTime.Text).TimeOfDay;
                if(deptime >= arrtime)
                {
                    lblMessage.Text = "Departure Time cant be greater than or equal to arrival time";
                    return;
                }
            }
            catch
            {
                lblMessage.Text = "Invalid departure or arrival time";
                return;

            }
            try
            {
                conn.Open();
                string updateSql = "INSERT INFO [dtFlDetails] ([FltNo], [Origin], [Deptime], [Arrtime]," + "[AircraftType]," +
                    "[seatsExec], [SeatsBn], [FareExec], [FareBn], [LaunchDate])" +
                    "VALUE (@FltNo, @Origin, @Destination, @Deptime, @Arrtime, @AircraftType," +
                    "@SeatsExec, @SeatsBn, @FareExec, @FareBn, @LaunchDate)";
                SqlCommand cmd2 = new SqlCommand(updateSql, conn);
                cmd2.Parameters.AddwithValue("@FltNo", txtFlightNumber.Text.Trim());
                cmd2.Parameters.AddwithValue("@Origin", txtOriginPlace.Text.Trim());
                cmd2.Parameters.AddwithValue("@FltNo", txtDestination.Text.Trim());
                cmd2.Parameters.AddwithValue("@Deptime", deptime.ToString());
                cmd2.Parameters.AddwithValue("@Arrtime", arrtime.ToString());
                cmd2.Parameters.AddwithValue("@AircrafType", txtAircraftType.Text.Trim());
                cmd2.Parameters.AddwithValue("@SeatsExec", Convert.ToInt32(txtNoOfExecSeats.Text.Trim()));
                cmd2.Parameters.AddwithValue("@SeatsBn", Convert.ToInt32(txtNoOfBusiSeats.Text.Trim()));
                cmd2.Parameters.AddwithValue("@FareExec", Convert.ToInt32(txtExecFare.Text.Trim()));
                cmd2.Parameters.AddwithValue("@FareBn", Convert.ToInt32(txtBusiFare.Text.Trim()));
                cmd2.Parameters.AddwithValue("@LaunchDate", DateTime.Today.Date.ToShortDateString());
                int n = cmd2.ExecuteNonQuery();




            }catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
                conn.Close();
                return;
            }
            conn.Close();
            lblMessage.Text = "Flight add Successfully";
            txtFlightNumber.Text = "";
            txtOriginPlace.Text = "";
            txtAircraftType.Text = "";
            txtArrivalTime.Text = "";
            txtBusiFare.Text = "";
            txtDepartureTime.Text = "";
            txtDestination.Text = "";
            txtExecFare.Text = "";
            txtFlightNumber.Text = "";
            txtNoOfBusiSeats.Text = "";
            txtNoOfExecSeats.Text = "";
            txtOriginPlace.Text = "";

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtFlightNumber.Text = "";
            txtOriginPlace.Text = "";
            txtAircraftType.Text = "";
            txtArrivalTime.Text = "";
            txtBusiFare.Text = "";
            txtDepartureTime.Text = "";
            txtDestination.Text = "";
            txtExecFare.Text = "";
            txtFlightNumber.Text = "";
            txtNoOfBusiSeats.Text = "";
            txtNoOfExecSeats.Text = "";
            txtOriginPlace.Text = "";
        }
    }
}
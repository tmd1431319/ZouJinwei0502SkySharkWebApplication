using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZouJinwei0502SkySharkWebApplication.BM
{
    public partial class FreqFl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            if (txtFare.Text==""|| txtFare.Text == null)
            {
                lblMessage.Text = "Invalid parameter for fare collected.";
                return;
            }
            DataGrid1.DataSource = "";
            SqlCommand command1 = new SqlCommand("INSERT INFO dtFrequentFliers Select Email, Discount=" + lstDisc2.SelectedItem.Text +
                "from dtPassengerDetails where FareCollected > " + txtFare.Text, sqlConnection1);
            sqlConnection1.Open();
            Command1.ExecuteNonQuery();
            lblMessage.Text = "Done.";
            SqlDataAdapter DataAdapter = new SqlDataAdapter("SELECT * from dtFrequentFliers", sqlConnection1);
            DataSet ds = new DataSet();
            DataAdapter.Fill(ds);
            DataView source = new DataView(ds.Tables[0]);
            DataGrid1.DataSource = source;
            DataGrid1.DataBind();
            sqlConnection1.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            DataGrid1.DataSource = "";
            SqlCommand command1 = new SqlCommand("INSERT INFO dtFrequentFliers Select Email, Discount=" + lstDisc1.SelectedItem.Text +
                "from dtPassengerDetails where TotalTimesFlown > " + lstTimesFlown.SelectedItem.Text, sqlConnection1);
            sqlConnection1.Open();
            Command1.ExecuteNonQuery();
            lblMessage.Text = "Done.";
            SqlDataAdapter DataAdapter = new SqlDataAdapter("SELECT * from dtFrequentFliers", sqlConnection1);
            DataSet ds = new DataSet();
            DataAdapter.Fill(ds);
            DataView source = new DataView(ds.Tables[0]);
            DataGrid1.DataSource = source;
            DataGrid1.DataBind();
            sqlConnection1.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            SqlCommand Command1 = new SqlCommand("DELETE dtFrequentFliers", sqlConnection1);
            sqlConnection1.Open();
            Command1.ExecuteNonQuery();
            lblMessage.Text = "Done."
            sqlConnection1.Close();
        }
    }
}
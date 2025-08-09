using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_UpdateAccount : System.Web.UI.Page
{
    SqlConnection con;
    string sql, usql;
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");

        cidtxt.Text = Session["Uid"].ToString();

        if (!IsPostBack)
        {
            sql = "select firstname, lastname, address, email, city, state, country, phone, mobile FROM CUsert WHERE userid = '" + cidtxt.Text + "'";

            cmd = new SqlCommand(sql, con);

            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                fnametxt.Text = rdr.GetString(0);
                lnametxt.Text = rdr.GetString(1);
                addresstxt.Text = rdr.GetString(2);
                emailtxt.Text = rdr.GetString(3);
                citytxt.Text = rdr.GetString(4);
                statetxt.Text = rdr.GetString(5);
                contxt.Text = rdr.GetString(6);
                contacttxt.Text = rdr.GetString(7);
                mobiletxt.Text = rdr.GetString(8);

                rdr.Close();
            }
            finally
            {
                con.Close();
            }
        }
    }
    
    protected void updatebtn_Click(object sender, EventArgs e)
    {
        usql = "UPDATE CUsert SET address = '" + addresstxt.Text
                + "' , city = '" + citytxt.Text
                + "' , state = '" + statetxt.Text
                + "' , country = '" + contxt.Text
                + "' , phone = '" + contacttxt.Text
                + "' , mobile = '" + mobiletxt.Text
                + "' , email = '" + emailtxt.Text
                + "' where userid = '" + cidtxt.Text + "'";

        cmd = new SqlCommand(usql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Account " + cidtxt.Text + " Updated Successfully.";
        }
        catch (Exception excep)
        {
            msglbl.Text = "Not Succesfull." + excep.Message;
        }
        finally
        {
            con.Close();
        }
    }
}
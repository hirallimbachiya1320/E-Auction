using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_Winner : System.Web.UI.Page
{
    SqlConnection con;
    string sql, isql, aid;
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
        //pdatetxt.Text = DateTime.Now.ToString("dd-MMM-yyyy");
         aid = Request.QueryString["AUID"].ToString();
       
            sql = "select Auctiont.auctionid, Auctiont.productid, Auctiont.userid, Productt.productname, Productt.productimage, Auctiont.bidamount From Productt, Auctiont WHERE Productt.productid = Auctiont.productid AND Auctiont.auctionid = '" + aid + "' ORDER BY bidamount desc";
            cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                aidtxt.Text = rdr.GetString(0);
                pidtxt.Text = rdr.GetString(1);
                cidtxt.Text = rdr.GetString(2);
                pnamext.Text = rdr.GetString(3);
                pimg.ImageUrl = rdr.GetString(4);
                wbidxt.Text = rdr.GetDecimal(5).ToString();

                rdr.Close();
            }

            finally
            {
                con.Close();
            }

            isql = "Insert into Winner (userid, auctionid, bidamt) Values ('" + cidtxt.Text + "' , '" + aidtxt.Text + "' , " + wbidxt.Text + ")";

            cmd = new SqlCommand(isql, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                msglbl.Text = "Winnder Details Added.";

            }
            catch (Exception ex)
            {
                msglbl.Text = "Error : " + ex.Message;
            }
            finally
            {
                con.Close();
            }

    }
    
}
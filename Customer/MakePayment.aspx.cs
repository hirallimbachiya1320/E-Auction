using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_MakePayment : System.Web.UI.Page
{
    SqlConnection con;
    string sql, isql;
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
        pdatetxt.Text = DateTime.Now.ToString("dd-MMM-yyyy");

        if (!IsPostBack)
        {
            sql = "SELECT Winner.auctionid, Auctiont.productid, Winner.userid, Productt.productname, Productt.productimage, Winner.bidamt "
                    + "FROM Auctiont INNER JOIN Productt ON Auctiont.productid = Productt.productid INNER JOIN "
                    + "Winner ON Auctiont.auctionid = Winner.auctionid AND Auctiont.userid = Winner.userid "
                    + " WHERE Winner.userid = '" + Session["Uid"].ToString() + "' AND Winner.status IS NULL";

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
            catch (Exception ex)
            {
                Panel1.Visible = false;
                msglbl1.Text = "You have not won any bidding";
            }

            finally
            {
                con.Close();
            }
        }
    }
    protected void paybtn_Click(object sender, EventArgs e)
    {
   
        isql = "INSERT INTO paymentt (userid, auctionid, productid, paymentamount, paymentdate, paymentmode) VALUES ('"
                        + cidtxt.Text + "' , '"
                        + aidtxt.Text + "' , '"
                        + pidtxt.Text + "' , "
                        + wbidxt.Text + " , '"
                        + pdatetxt.Text + "' , '"
                        + pmodeddl.SelectedItem.Text + "'); "
                        + " UPDATE Winner SET status = 'PAID' WHERE auctionid = '" + aidtxt.Text + "' AND userid = '" + cidtxt.Text + "'";

        //Response.Write(isql);
        cmd = new SqlCommand(isql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Your Payment of " + wbidxt.Text + " Paid.";
        }
        catch (Exception ex)
        {
            msglbl.Text = "You have already paid for this Auction";
        }
        finally
        {
            con.Close();
        }
    }
    
}
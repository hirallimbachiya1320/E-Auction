using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_PlaceBid : System.Web.UI.Page
{
    SqlConnection con;
    string sql,isql, pid, aid;
    SqlCommand cmd;
    SqlDataReader rdr;


    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
        pid = Request.QueryString["PID"].ToString();

       
        if (!Page.IsPostBack)
        {
            sql = "select productid, productname, productimage, description, startdate, enddate, startbid, increment from Productt WHERE productid = '" + pid + "'";
            cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                pidlbl.Text = rdr.GetString(0);
                pnamelbl.Text = rdr.GetString(1);
                pimg.ImageUrl = rdr.GetString(2);
                pdesclbl.Text = rdr.GetString(3);
                psdatelbl.Text = rdr.GetDateTime(4).ToString();
                pedatelbl.Text = rdr.GetDateTime(5).ToString();
                psbidlbl.Text = rdr.GetDecimal(6).ToString();
                pincrlbl.Text = rdr.GetInt32(7).ToString();

                rdr.Close();
            }

            finally
            {
                con.Close();
            }


            aid = "Au-" + pidlbl.Text;
            sql = "select Top (1) bidamount from Auctiont WHERE Auctionid = '" + aid + "' AND productid = '" + pid + "' ORDER BY bidamount desc";
           
            cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                highestbidlbl.Text = rdr.GetDecimal(0).ToString();

                rdr.Close();
            }
            catch (Exception ex)
            {
                highestbidlbl.Text = "0";
            }

            finally
            {
                con.Close();
            }
           
            sql = "select count(userid) from Auctiont WHERE Auctionid = '" + aid + "' AND productid = '" + pid + "'";
            cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                bidderslbl.Text = rdr.GetSqlInt32(0).ToString();

                rdr.Close();
            }
            catch (Exception ex)
            {
                bidderslbl.Text = "0";
            }

            finally
            {
                con.Close();
            }

            
        }
        if ((Label1.Text.Equals("0")) && (Label2.Text.Equals("0")) && (Label3.Text.Equals("0")) && (Label4.Text.Equals("0")))
        {
            string auid = "Au-" + pidlbl.Text;
            Response.Redirect("~/Customer/Winner.aspx?AUID="+auid);
        }


    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        DateTime endDate = Convert.ToDateTime(pedatelbl.Text);
        DateTime dt = DateTime.Now;
        TimeSpan differ;
        //System.DateTime date1 = endDate;
        differ = endDate.Subtract(dt);
        double t = differ.TotalSeconds;

        if (t > 0)
        {
            double dy, h, m, s;
            dy = differ.Days;
            h = differ.Hours;
            m = differ.Minutes;
            s = differ.Seconds;
            Label1.Text = dy.ToString();// +" Days " + h + " Hours " + m + " Minutes " + s + " Seconds left for celebration";
            Label2.Text = h.ToString();
            Label3.Text = m.ToString();
            Label4.Text = s.ToString();
        }
        else
        {
            Timer1.Enabled = false;
            
        }
    }
    protected void addbtn_Click(object sender, EventArgs e)
    {
        string aid = "Au-" + pidlbl.Text;
        isql = "INSERT INTO Auctiont (auctionid, productid, bidamount, userid) VALUES ('"
                    + aid + "' , '"
                    + pidlbl.Text + "' , "
                    + yourbidtxt.Text + " , '"
                    + Session["Uid"].ToString() + "')";
        // Response.Write(isql);
        cmd = new SqlCommand(isql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Your Bid " + yourbidtxt.Text + " Placed Successfully.";
        }
        catch (Exception ex)
        {
            msglbl.Text = "You have already bidded for this product";
        }
        finally
        {
            con.Close();
        }
    }
    protected void yourbidtxt_TextChanged(object sender, EventArgs e)
    {
        decimal urbid, sbid, hbid;
        int incval;
        urbid = Convert.ToDecimal(yourbidtxt.Text);
        sbid = Convert.ToDecimal(psbidlbl.Text);
        incval = Convert.ToInt32(pincrlbl.Text);
        hbid = Convert.ToDecimal(highestbidlbl.Text);
        
        if (hbid == 0)
        {
            if (urbid >= sbid)
            {
                msglbl.Text = "Your can Place The Bid";
                addbtn.Enabled = true;
            }
            else
            {
                msglbl.Text = "Your cannot Place The Bid. Bid Higher";
                addbtn.Enabled = false;
            }

        }
        else if (hbid > 0)
        {
            if (urbid > (hbid + incval))
            {
                msglbl.Text = "Your can Place The Bid";
                addbtn.Enabled = true;
            }
            else
            {
                msglbl.Text = "Your cannot Place The Bid. Bid Higher";
                addbtn.Enabled = false;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_ResetPassword : System.Web.UI.Page
{
    SqlConnection con;
    string sql, usql, custid;
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");

        custid = Session["Uid"].ToString();
    }
    protected void OpassTxt_TextChanged(object sender, EventArgs e)
    {
        string opwd = "";
        sql = "SELECT password FROM Logint WHERE userid = '" + custid + "'";
       // Response.Write(ssql);
        cmd = new SqlCommand(sql, con);
        try
        {
            con.Open();
            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                opwd = rdr.GetString(0);
        //        Response.Write(opwd);
            }
            rdr.Close();
        }
        catch (Exception e1)
        {
            MsgLbl.Text = "Error :" + e1.Message;
        }
        finally
        {
            con.Close();
        }


        if ((custid != null) && (OpassTxt.Text.Equals(opwd)))
        {
            MsgLbl.Text = "Ok. Now You can Reset Your Password";
            OpassTxt.TextMode = TextBoxMode.SingleLine;
            OpassTxt.Text = "OK";
            OpassTxt.Visible = false;
            PassTxt.Focus();
        }
        else
        {
            MsgLbl.Text = "Enter Correct Old Password";
            OpassTxt.Focus();
            
        }

    }
    protected void ResetBtn_Click(object sender, EventArgs e)
    {
        usql = "UPDATE Logint SET Password = '" + PassTxt.Text
                + "' where userid = '" + custid + "'";

        cmd = new SqlCommand(usql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            MsgLbl.Text = "Password Reset Successfull.";
        }
        finally
        {
            con.Close();
        }
    }
    }

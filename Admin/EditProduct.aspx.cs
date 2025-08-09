using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_EditProduct : System.Web.UI.Page
{
    SqlConnection con;
    string sql, usql;
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");

        pidtxt.Text = Request.QueryString["PID"].ToString();

        if (!Page.IsPostBack == true)
        {
            sql = "select productname, description, startdate, enddate, startbid, increment, productstatus, subcategoryid from Productt where productid = '" + pidtxt.Text + "'";
            cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                pnametxt.Text = rdr.GetString(0);
                pdesctxt.Text = rdr.GetString(1);
                psdatetxt.Text = rdr.GetDateTime(2).ToString();
                pedatetxt.Text = rdr.GetDateTime(3).ToString();
                pbidamttxt.Text = rdr.GetDecimal(4).ToString();
                pincrtxt.Text = rdr.GetInt32(5).ToString();
                pstatusddl.Text = rdr.GetString(6);
                subcatddl.SelectedValue = rdr.GetInt32(7).ToString();

                rdr.Close();
            }

            finally
            {
                con.Close();
            }
        }

    }
    protected void editbtn_Click(object sender, EventArgs e)
    {

        usql = "UPDATE Productt SET startdate = '" + psdatetxt.Text
                    + "' , enddate = '" + pedatetxt.Text
                    + "' , startbid = " + pbidamttxt.Text
                    + " , increment = " + pincrtxt.Text
                    + " , productstatus = '" + pstatusddl.SelectedItem.Text
                    + "' WHERE productid = '" + pidtxt.Text + "'";

        cmd = new SqlCommand(usql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Product " + pnametxt.Text + " Updated Successfully.";
            string script = "window.onload = function(){ alert('Product Updated');window.location = 'ProductList.aspx';}";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        }
        catch (Exception excep)
        {
            msglbl.Text = "Not Successfull." + excep.Message;
        }
        finally
        {
            con.Close();
        }
    }
}
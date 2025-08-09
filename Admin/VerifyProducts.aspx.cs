using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_VerifyProducts : System.Web.UI.Page
{
    SqlConnection con;
    string rsql, pid;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().ToUpper() == "ACCEPT")
        {
            pid = e.CommandArgument.ToString();
            rsql = "UPDATE Productt SET productstatus = 'Verified' WHERE productid = '" + pid + "'";

            cmd = new SqlCommand(rsql, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Admin/VerifyProducts.aspx");
            }
            catch (Exception ex)
            {
                msglbl.Text = "Error in Approval Process " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
        if (e.CommandName.ToString().ToUpper() == "REJECT")
        {
            pid = e.CommandArgument.ToString();
            rsql = "UPDATE Productt SET productstatus = 'Rejected' WHERE productid = '" + pid + "'";


            cmd = new SqlCommand(rsql, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Admin/VerifyProducts.aspx");
            }
            catch (Exception ex)
            {
                msglbl.Text = "Error in Rejection Process " + ex.Message;
            }
            finally
            {
                con.Close();
            }

        }
    }
}
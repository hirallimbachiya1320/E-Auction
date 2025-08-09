using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ManageCustomers : System.Web.UI.Page
{
    SqlConnection con;
    string isql;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
    }
    protected void Delete_btn_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
            if (chck.Checked)
            {
                var Label = gvrow.FindControl("Label1") as Label;

                SqlCommand cmd = new SqlCommand("delete from CUsert where userid=@uid; delete from Logint Where userid=@uid", con);
                cmd.Parameters.AddWithValue("uid", Label.Text);
                con.Open();
                int id = cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Admin/ManageCustomers.aspx");

            }
        }
    }
}
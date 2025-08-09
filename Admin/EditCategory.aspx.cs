using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_EditCategory : System.Web.UI.Page
{
    SqlConnection con;
    string sql, usql;
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");

        catidtxt.Text = Request.QueryString["CAID"].ToString();

        if (!Page.IsPostBack == true)
        {
            sql = "select categoryname from Categoryt where categoryid = " + catidtxt.Text;
            cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                cattxt.Text = rdr.GetString(0);
                rdr.Close();
            }

            finally
            {
                con.Close();
            }
        }
    }
    protected void edit_btn_Click(object sender, EventArgs e)
    {

        usql = "UPDATE Categoryt SET categoryname = '"
                + cattxt.Text + "' WHERE categoryid = "
                + catidtxt.Text;

        cmd = new SqlCommand(usql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Category " + cattxt.Text + " Updated Successfully.";
            string script = "window.onload = function(){ alert('Category Updated');window.location = 'CategoryList.aspx';}";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
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
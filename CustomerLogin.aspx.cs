using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CustomerLogin : System.Web.UI.Page
{


    SqlConnection con;
    string sql;
    SqlCommand cmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
    }
    protected void loginbtn_Click(object sender, EventArgs e)
    {
        try
        {
            sql = "SELECT Cusert.userid, Cusert.firstname, Cusert.lastname, Logint.utype FROM CUsert INNER JOIN Logint ON CUsert.userid = Logint.userid AND Logint.username = @username AND Logint.password = @password";

            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@username", unametxt.Text);
            cmd.Parameters.AddWithValue("@password", passtxt.Text);
            cmd.CommandType = CommandType.Text;
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr.GetString(3).Equals("Customer"))
                {
                    Session["Uid"] = dr.GetString(0);
                    Session["Ufname"] = dr.GetString(1);
                    Session["Ulname"] = dr.GetString(2);
                    Response.Redirect("~/Customer/Home.aspx");
                }
            }
            else
                msglbl.Text = "Try Again With Correct Login";

        }
        catch (Exception ex)
        {
            msglbl.Text = "Try Again with Correct Login" + ex.Message;

        }

        finally
        {
            con.Close();
        }
    }
}
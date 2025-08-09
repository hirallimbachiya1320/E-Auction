using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CustomerRegister : System.Web.UI.Page
{
    SqlConnection con;
    string isql, gen, uid;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
        uid = DateTime.Now.ToString("Cu-yyMMdd-HHmmss");
    }
    protected void registerbtn_Click(object sender, EventArgs e)
    {

        if (mrd.Checked)
        {
            gen = "M";
        }
        if (frd.Checked)
        {
            gen = "F";
        }

        isql = "INSERT INTO CUsert (userid, firstname, lastname, gender, birthdate, email, address, city, state, country, phone, mobile, securityid, securityans) VALUES ('"
                    + uid + "' , '"
                    + fnametxt.Text + "' , '"
                    + lnametxt.Text + "' , '"
                    + gen + "' , '"
                    + bdatetxt.Text + "' , '"
                    + emailtxt.Text + "' , '"
                    + addresstxt.Text + "' , '"
                    + citytxt.Text + "' , '"
                    + statetxt.Text + "' , '"
                    + contxt.Text + "' , '"
                    + contacttxt.Text + "' , '"
                    + mobiletxt.Text + "' ,"
                    + squeddl.SelectedValue + " , '"
                    + sanswertxt.Text + "'); Insert into Logint (userid, username, password, utype, authentication) VALUES ('"
                    + uid + "' , '"
                    + unametxt.Text + "' , '"
                    + passtxt.Text + "' , 'Customer','True')";
        // Response.Write(isql);
        cmd = new SqlCommand(isql, con);
       
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
           
            msglbl.Text = fnametxt.Text + " Your Registration is Done. Go To Sign in Page";
            string script = "window.onload = function(){ alert('Registered Successfully');window.location = 'CustomerLogin.aspx';}";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            //Response.Redirect("CustomerLogin.aspx");

        }
        finally
        {
            con.Close();
        }

    }
}
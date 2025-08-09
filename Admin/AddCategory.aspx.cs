using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_AddCategory : System.Web.UI.Page
{
    SqlConnection con;
    string isql;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
    }
    protected void add_btn_Click(object sender, EventArgs e)
    {

        string fpath = "";
        string fname = "";
        string uploadfolder = Request.PhysicalApplicationPath + "CatImages\\";


        if (catfu.HasFile)
        {
            string extension = Path.GetExtension(catfu.PostedFile.FileName);
            fname = cattxt.Text + extension;
            catfu.SaveAs(uploadfolder + fname);
        }
        fpath = "~\\CatImages\\" + fname;

        isql = "INSERT INTO Categoryt (CategoryName, CategoryImage) VALUES ('"
                     + cattxt.Text + "' , '"
                     + fpath + "')";

        cmd = new SqlCommand(isql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Category " + cattxt.Text + " Added.";
           //Response.Write("<script>alert('login successful');</script>");
            string script = "window.onload = function(){ alert('Category Added');window.location = 'CategoryList.aspx';}";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            //Response.Redirect("CategoryList.aspx");
        }
        finally
        {
            con.Close();
        }

    }
}
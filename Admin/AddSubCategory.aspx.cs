using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_AddSubCategory : System.Web.UI.Page
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
        string uploadfolder = Request.PhysicalApplicationPath + "SubCatImages\\";


        if (subcatfu.HasFile)
        {
            string extension = Path.GetExtension(subcatfu.PostedFile.FileName);
            fname = subcattxt.Text + extension;
            subcatfu.SaveAs(uploadfolder + fname);
        }
        fpath = "~\\SubCatImages\\" + fname;

        isql = "INSERT INTO SubCategoryt (SubCategoryName, SubCategoryImage, CategoryId) VALUES ('"
                     + subcattxt.Text + "' , '"
                     + fpath + "' , "
                     + catddl.SelectedValue + ")";

        cmd = new SqlCommand(isql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Sub Category " + subcattxt.Text + " Added.";
            string script = "window.onload = function(){ alert('Sub Category Added');window.location = 'SubCategoryList.aspx';}";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        }
        finally
        {
            con.Close();
        }

    }
}
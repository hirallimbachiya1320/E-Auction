using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_AddProduct : System.Web.UI.Page
{
    SqlConnection con;
    string isql;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");
        pidtxt.Text = "P-" + DateTime.Now.ToString("yyMM-ddHH-mmss");
    }
    protected void addbtn_Click(object sender, EventArgs e)
    {
        string fpath = "";
        string fname = "";
        string uploadfolder = Request.PhysicalApplicationPath + "ProductImages\\";

        if (pimagefu.HasFile)
        {
            // fname = Path.GetFileName(pimagefu.PostedFile.FileName);
            //  pimagefu.SaveAs(uploadfolder + fname);

            string extension = Path.GetExtension(pimagefu.PostedFile.FileName);
            fname = pidtxt.Text + extension;
            pimagefu.SaveAs(uploadfolder + fname);
        }
        fpath = "~\\ProductImages\\" + fname;

        isql = "INSERT INTO productt VALUES ('"
                        + pidtxt.Text + "' , '"
                        + pnametxt.Text + "' , '"
                        + fpath + "' , '"
                        + pdesctxt.Text + "' , '"
                        + psdatetxt.Text + "' , '"
                        + pedatetxt.Text + "' , "
                        + pbidamttxt.Text + " , "
                        + pincrtxt.Text + " , 'Verified', "
                        + subcatddl.SelectedValue + ",'Admin')";
        
        //Response.Write(isql);
        cmd = new SqlCommand(isql, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "Product " + pnametxt.Text + " Added.";
            string script = "window.onload = function(){ alert('Product Added');window.location = 'ProductList.aspx';}";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        }
        catch (Exception ex)
        {
            msglbl.Text = "Error : " + ex.Message;
        }
        finally
        {
            con.Close();
        }

    }
}
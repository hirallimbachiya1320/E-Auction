using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_EditSubCategory : System.Web.UI.Page
{
    SqlConnection con;
    string sql, usql;
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eAuctionBid.mdf;Integrated Security=True;User Instance=True");

        subcatidtxt.Text = Request.QueryString["SCAID"].ToString();

        if (!Page.IsPostBack == true)
        {
            sql = "select subcategoryname, categoryid from SubCategoryt where subcategoryid = " + subcatidtxt.Text;
            cmd = new SqlCommand(sql, con);
            try
            {
                con.Open();
                rdr = cmd.ExecuteReader();
                rdr.Read();

                subcattxt.Text = rdr.GetString(0);
                catddl.Text = rdr.GetInt32(1).ToString();
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

        usql = "UPDATE SubCategoryt SET subcategoryname = '" + subcattxt.Text 
                     + "' , categoryid = " + catddl.SelectedValue
                     + " WHERE subcategoryid = " + subcatidtxt.Text;

        cmd = new SqlCommand(usql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            msglbl.Text = "SubCategory " + subcattxt.Text + " Updated Successfully.";
            string script = "window.onload = function(){ alert('Sub Category Updated');window.location = 'SubCategoryList.aspx';}";
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
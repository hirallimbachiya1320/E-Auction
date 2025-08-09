using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginbtn_Click(object sender, EventArgs e)
    {
        if ((unametxt.Text.Equals("Admin")) && (passtxt.Text.Equals("Admin")))
        {
            Session["Aid"] = "Admininstrator";
            Response.Redirect("~/Admin/Home.aspx");
        }
       else if ((unametxt.Text.Equals("Hiral")) && (passtxt.Text.Equals("Hiral")))
        {
            Session["Aid"] = "Admininstrator";
            Response.Redirect("~/Admin/Home.aspx");
        }
       
        else
        {
            msglbl.Text = "Try Again With Correct Login";
        }
    }
}
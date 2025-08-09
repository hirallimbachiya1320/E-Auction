using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_BidOnProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dlProducts.Visible = false;

        }
    }
    protected void subcatddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        dlProducts.Visible = true;
    }
}
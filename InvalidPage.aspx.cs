using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InvalidPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Show error page if anything goes wrong
        Server.ClearError();
        Exception ex = (Exception)Session["error"];
        lblError.Text = ex.Message;
    }
}
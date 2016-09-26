using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "Guest" || Session["username"] == "")
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
           // login.Text = "Logged in as " + Session["username"] + " of Staff ID :" + Session["staff_id"];
        };
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loanslist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] == "admin" || Session["role"] == "manager")
        {
            
          //  Label.Text = "Logged in as " + Session["username"] + " of Staff ID :" + Session["staff_id"];
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        };
    }
}
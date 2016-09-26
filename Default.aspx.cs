using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Security.Permissions;

public partial class _Default : System.Web.UI.Page
{

    string connStr = ConfigurationManager.ConnectionStrings["Loan_connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["username"] == "" || Session["username"] == "Guest")
            {
                loginx.Text = "Not logged in, please login";
                //Response.Redirect("~/Default.aspx");
                Button2.Visible = false;
                
            }
            else
            {
                Label3.Visible = false;
                Label4.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
               // loginx.Text = "Logged in as " + Session["username"] + " of Staff ID :" + Session["staff_id"];
                Button1.Visible = false;

            }

            if (Session["role"] == "admin")
            {
                HyperLink1.Text = "Admin Access Link";
            }
        
    }


    protected void login(object sender, EventArgs e)
    {

    }
    DataSet ds = new DataSet("user");


    protected void Button1_Click(object sender, EventArgs e)
    {
                SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_search_user", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = TextBox2.Text;
        string rolex = "";
        // execute the command
        using (SqlDataReader rdr = cmd.ExecuteReader())
        {
            if (rdr.HasRows)
            {
                // iterate through results, printing each to console
                while (rdr.Read())
                {
                   // Label5.Text = rdr["username"].ToString();
                    Session["username"] = rdr["username"].ToString();
                    Session["staff_id"] = rdr["staff_no"].ToString();
                   
                    rolex = rdr["role"].ToString();
                }
                ///cmd.ExecuteNonQuery();

                conn.Close();
                conn.Open();
                SqlCommand cmdx = new SqlCommand("sp_search_access", conn);

                cmdx.CommandType = CommandType.StoredProcedure;

                cmdx.Parameters.Add("@id", SqlDbType.Int).Value = rolex;

                using (SqlDataReader rdrx = cmdx.ExecuteReader())
                {
                    if (rdrx.HasRows)
                    {
                        // iterate through results, printing each to console
                        while (rdrx.Read())
                        {
                            if (rdrx["role"].ToString() == "admin")
                            {
                                Session["role"] = "admin";
                               // Response.Redirect(Request.RawUrl);
                               Response.Redirect("~/Adefault.aspx");
                            }
                            else if (rdrx["role"].ToString() == "user")
                            {
                                Session["role"] = "user";
                              ///  Response.Redirect(Request.RawUrl);
                               Response.Redirect("~/client.aspx");
                            }
                            else if (rdrx["role"].ToString() == "manager")
                            {
                                Session["role"] = "manager";
                                ///  Response.Redirect(Request.RawUrl);
                                Response.Redirect("~/approvals.aspx");
                            }
                            else
                            {
                                Label20.Text = "Registered User with No Role";
                                Label20.ForeColor = System.Drawing.Color.Red;
                            }
                            
                        }
                    }
                }

                conn.Close();
            }
            else { 
                  Label20.Text = "Wrong login details or user doest exist , please contact admin";
                  Label20.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       // Session.Abandon(); // Does nothing
       // Session.Clear();
        Session["username"] = "Guest";
        Session["staff_id"] = "####";
        Session["role"] = "guest";
        Response.Redirect(Request.RawUrl);

    }

   
}


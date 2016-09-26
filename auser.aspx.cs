using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class auser : System.Web.UI.Page
{

    string connStr = ConfigurationManager.ConnectionStrings["Loan_connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != "admin")
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
          //  login.Text = "Logged in as " + Session["username"] + " of Staff ID :" + Session["staff_id"];
        };
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        string Parax = "";
        string source = "";
        string storedP = "";
        SqlDbType datatype = SqlDbType.VarChar;

        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        if (idbox.Text != "")
        {
            Parax = "@staff_no";
            source = idbox.Text;
            storedP = "sp_search_user_staff_no";
            Label2.Text = "Record Search by Staff (Default)";
            Label2.ForeColor = System.Drawing.Color.Blue;
            datatype = SqlDbType.Int;
        }
        else if (searchbox.Text != "")
        {
            Parax = "@username";
            source = searchbox.Text;
            storedP = "sp_search_user_staff_username";
            Label2.Text = "Record Search by Username";
            Label2.ForeColor = System.Drawing.Color.Blue;
            datatype = SqlDbType.VarChar;
        }
        else if (idbox.Text != "" && idbox.Text != "")
        {
            Parax = "@staff_no";
            source = idbox.Text;

            storedP = "sp_search_user_staff_no";
            Label2.Text = "Record Search by Staff (Default)";
            Label2.ForeColor = System.Drawing.Color.Blue;
        }
        SqlCommand cmd = new SqlCommand(storedP, conn);

        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add(Parax, datatype).Value = source;
        // execute the command
        // cmd.ExecuteNonQuery();
        // execute the command
        string rolex = "";
        using (SqlDataReader rdr = cmd.ExecuteReader())
        {
            if (rdr.HasRows)
            {
                // iterate through results, printing each to console
                while (rdr.Read())
                {
                    // Label5.Text = rdr["username"].ToString();
                    uname.Text = rdr["username"].ToString();
                    f_name.Text = rdr["first_name"].ToString();
                    l_name.Text = rdr["last_name"].ToString();
                    staff_no.Text = rdr["staff_no"].ToString();
                    // role.Text = rdr["role"].ToString();
                    rolex = rdr["role"].ToString();
                    // rdr["department"].ToString();
                }
                //Buttoncheck();


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
                            role.Text = rdrx["role"].ToString();
                        }
                    }
                }

                conn.Close();
            }
            else
            {
                Label2.Text = "No such record of user";
                Label2.ForeColor = System.Drawing.Color.Red;
                conn.Close();
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_delete_user", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@staff_no", SqlDbType.Int).Value = deletebox.Text;
        // execute the command
        cmd.ExecuteNonQuery();
        // execute the command
        label20.Text = "User od ID: " + deletebox.Text + " successfully Deleted From system";
        label20.ForeColor = System.Drawing.Color.Blue;
        ///cmd.ExecuteNonQuery();
        conn.Close();
        ClearTextBoxes();
    }

    public static Control[] FlattenHierachy(Control root)
    {
        List<Control> list = new List<Control>();
        list.Add(root);
        if (root.HasControls())
        {
            foreach (Control control in root.Controls)
            {
                list.AddRange(FlattenHierachy(control));
            }
        }
        return list.ToArray();
    }

    private void ClearTextBoxes()
    {
        Control[] allControls = FlattenHierachy(Page);
        foreach (Control control in allControls)
        {
            TextBox textBox = control as TextBox;
            if (textBox != null)
            {
                textBox.Text = "";
            }
        }
    }
}

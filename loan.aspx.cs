using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class loan : System.Web.UI.Page
{

    DatabaseConnection dbcxn = new DatabaseConnection();
    string connStr = ConfigurationManager.ConnectionStrings["Loan_connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "Guest" || Session["username"] == "")
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
        SqlCommand cmd = new SqlCommand("sp_insert_loan_type", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name.Text;
        cmd.Parameters.Add("@rate", SqlDbType.Int).Value = rate.Text;
        cmd.Parameters.Add("@amount", SqlDbType.Int).Value = ceiling.Text;
       
        

        // execute the command
        cmd.ExecuteNonQuery();

        Label20.Text = "Succesfully Registered";

        ///cmd.ExecuteNonQuery();

        ClearTextBoxes();
        conn.Close();
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
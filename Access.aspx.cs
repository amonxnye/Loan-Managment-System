using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Access : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["Loan_connect"].ConnectionString;
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
    protected void Button1_Click(object sender, EventArgs e)
    {
         //Buttoncheck();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_insert_access", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@role", SqlDbType.VarChar).Value = TextBox1.Text;
        // execute the command
        cmd.ExecuteNonQuery();
        // execute the command
        Label20.Text = "New Role successfully created";
        Label20.ForeColor = System.Drawing.Color.Blue;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Buttoncheck();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_delete_access", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@role", SqlDbType.VarChar).Value = TextBox2.Text;
        // execute the command
        cmd.ExecuteNonQuery();
        // execute the command
        Label21.Text = "New Role successfully Deleted";
        Label21.ForeColor = System.Drawing.Color.Blue;
        ///cmd.ExecuteNonQuery();
        conn.Close();
        ClearTextBoxes();

    }

}
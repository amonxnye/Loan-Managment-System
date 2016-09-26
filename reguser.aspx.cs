using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Account_reguser : System.Web.UI.Page
{

    string connStr = ConfigurationManager.ConnectionStrings["Loan_connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] == "admin" || Session["role"] == "manager")
        {

          //  login.Text = "Logged in as " + Session["username"] + " of Staff ID :" + Session["staff_id"];
        }
        else
        {

            Response.Redirect("~/Default.aspx");
        };
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand cmd = new SqlCommand("sp_insert_user", conn);

            cmd.CommandType = CommandType.StoredProcedure;
            // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = username.Text;
            cmd.Parameters.Add("@f_name", SqlDbType.VarChar).Value = f_name.Text;
            cmd.Parameters.Add("@l_name", SqlDbType.VarChar).Value = l_name.Text;
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = TextBox8.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email.Text;
            cmd.Parameters.Add("@staff", SqlDbType.Int).Value = staff.Text;
            cmd.Parameters.Add("@role", SqlDbType.Int).Value = role.Text;

            if (TextBox8.Text == TextBox9.Text)
            {
                DATACheck check = new DATACheck();

                if (check.IsValidEmail(email.Text) == true)
                {
                    // execute the command
                    cmd.ExecuteNonQuery();
                    Label20.Text = "Succesfully Registered";

                    ///cmd.ExecuteNonQuery();
                }
                else
                {
                    Label20.ForeColor = System.Drawing.Color.Red;
                    Label20.Text = "Failed Due to wrong Email Format";

                }

                ClearTextBoxes();
            }
            else {
                Label20.ForeColor = System.Drawing.Color.Red;
                Label20.Text = "Failed Due to wrong Password";

                ///cmd.ExecuteNonQuery();

                
            }
            ClearTextBoxes();
            conn.Close();

            
            

        }
        catch (Exception ex)
        {
            Label20.ForeColor = System.Drawing.Color.Red;
            Label20.Text = "Unsuccesful Please try Again";
        }
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
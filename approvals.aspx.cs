using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class approvals : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["Loan_connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != "manager")
        {
            login.Text = "Please Login As A Manager";
            login.ForeColor = System.Drawing.Color.Red ;
            Button1.Enabled = false;
            Button2.Enabled = false;
            Button3.Enabled = false;
        }
        else
        {
            //login.Text = "Logged in as " + Session["username"] + " of Staff ID :" + Session["staff_id"];
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //ClearTextBoxes();
        //Buttoncheck();
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_search_loan_app", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = TextBox7.Text;
        // execute the command
        // cmd.ExecuteNonQuery();
        // execute the command
        string type = "";
        using (SqlDataReader rdr = cmd.ExecuteReader())
        {
            if (rdr.HasRows) { 
            // iterate through results, printing each to console
            while (rdr.Read())
            {
                // Label5.Text = rdr["username"].ToString();
                name.Text = rdr["first_name"].ToString();
                amount.Text = rdr["loan_amount"].ToString();
                s_date.Text = rdr["start_date"].ToString();
                e_date.Text = rdr["end_date"].ToString();
                loan_type.Text = rdr["loan_type"].ToString();
                TextBox7.Text = rdr["staff_id"].ToString();
                loan_no.Text = rdr["id"].ToString();
                type = rdr["loan_type"].ToString();
                status.Text = rdr["status"].ToString();
                // rdr["department"].ToString();
            }
            //Buttoncheck();

            authority.Text = Session["staff_id"].ToString();
            ///cmd.ExecuteNonQuery();
            conn.Close();
            conn.Open();
            SqlCommand cmdx = new SqlCommand("sp_search_loan_type", conn);

            cmdx.CommandType = CommandType.StoredProcedure;
            // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
            cmdx.Parameters.Add("@name", SqlDbType.VarChar).Value = type.ToString();
            //sp_search_loan_type
            using (SqlDataReader rdrx = cmdx.ExecuteReader())
            {
                while (rdrx.Read())
                {
                    rate.Text = rdrx["interest_rate"].ToString();
                }


            }
            conn.Close();
        
            }
            else
            {
                 Label20.Text = "NO Loan Application of That staff Member or Wrong Staff ID";
                 Label20.ForeColor = System.Drawing.Color.Red;
            }

    }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (status.Text != "pending" || authority.Text == "") {
            Label20.Text = "Thank You , Already Approved / Declined or Missing Acting **Authority ID***";
            Label20.ForeColor = System.Drawing.Color.Red;
        } else { 

        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_status_approve", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = TextBox7.Text;

        
        // execute the command
        cmd.ExecuteNonQuery();

        Label20.Text = "Succesfully Approved";

        ///cmd.ExecuteNonQuery();

        ClearTextBoxes();
        conn.Close();
        Insertapproval();
    }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        if (status.Text != "pending" || authority.Text == "")
        {
            Label20.Text = "Thank You , Already Approved / Declined or Missing Acting **Authority ID***";
            Label20.ForeColor = System.Drawing.Color.Red;
        }
        else
        {

            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand cmd = new SqlCommand("sp_status_rejected", conn);

            cmd.CommandType = CommandType.StoredProcedure;
            // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = TextBox7.Text;

            //check if the logged in role is of authority

            // execute the command
            cmd.ExecuteNonQuery();

            Label20.Text = "Succesfully Declined";

            ///cmd.ExecuteNonQuery();

            ClearTextBoxes();
            conn.Close();
            Insertreject();
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

    private void Insertapproval()
    {
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_insert_approved", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = TextBox7.Text;

        cmd.Parameters.Add("@loan_id ", SqlDbType.Int).Value = loan_no.Text;
        cmd.Parameters.Add("@username ", SqlDbType.VarChar).Value = name.Text;
        cmd.Parameters.Add("@amount ", SqlDbType.Int).Value = amount.Text;
        cmd.Parameters.Add("@s_date ", SqlDbType.VarChar).Value = s_date.Text;
        cmd.Parameters.Add("@e_date ", SqlDbType.VarChar).Value = e_date.Text;
        cmd.Parameters.Add("@authority ", SqlDbType.Int).Value = Session["staff_id"];

        // execute the command
        cmd.ExecuteNonQuery();

       // Label20.Text = "Succesfully Declined";

        ///cmd.ExecuteNonQuery();

       // ClearTextBoxes();
        conn.Close();
    }

    private void Insertreject()
    {
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_insert_rejected", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = TextBox7.Text;

        cmd.Parameters.Add("@loan_id ", SqlDbType.Int).Value = loan_no.Text;
        cmd.Parameters.Add("@username ", SqlDbType.VarChar).Value = name.Text;
        cmd.Parameters.Add("@amount ", SqlDbType.Int).Value = amount.Text;
        cmd.Parameters.Add("@s_date ", SqlDbType.VarChar).Value = s_date.Text;
        cmd.Parameters.Add("@e_date ", SqlDbType.VarChar).Value = e_date.Text;
        cmd.Parameters.Add("@authority ", SqlDbType.Int).Value = Session["staff_id"];

        // execute the command
        cmd.ExecuteNonQuery();

        // Label20.Text = "Succesfully Declined";

        ///cmd.ExecuteNonQuery();

        // ClearTextBoxes();
        conn.Close();
    }

  

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Mail;

public partial class client : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["Loan_connect"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "Guest")
        {
           // Response.Redirect("~/Default.aspx");
        }
        else
        {
           // login.Text = "Logged in as " + Session["username"] + " of Staff ID :" + Session["staff_id"];
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("sp_insert_loan_app", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
    cmd.Parameters.Add("@staff_id", SqlDbType.Int).Value = staffid.Text;
	cmd.Parameters.Add("@f_name ", SqlDbType.VarChar).Value = f_name.Text;
	cmd.Parameters.Add("@l_name ", SqlDbType.VarChar).Value = l_name.Text;
    cmd.Parameters.Add("@email ", SqlDbType.VarChar).Value = email.Text;
	cmd.Parameters.Add("@loan_amount ", SqlDbType.Int).Value = amount.Text;
    cmd.Parameters.Add("@department ", SqlDbType.VarChar).Value = department.Text;
	cmd.Parameters.Add("@s_date ", SqlDbType.VarChar).Value =s_date.Text;
	cmd.Parameters.Add("@e_date ", SqlDbType.VarChar).Value = e_date.Text;
	cmd.Parameters.Add("@loan_type ", SqlDbType.VarChar).Value =  loan_type.Text;
    cmd.Parameters.Add("@status ", SqlDbType.VarChar).Value = status.Text;


        //check if Email is valid
    DATACheck check = new DATACheck();

    if (check.IsValidEmail(email.Text) == true && check.isValidDate(s_date.Text) == true && check.isValidDate(e_date.Text) == true)
    {
        // execute the command
        cmd.ExecuteNonQuery();

        conn.Close();

        conn.Open();

        SqlCommand cmdx = new SqlCommand("sp_search_loan_app_name", conn);

        cmdx.CommandType = CommandType.StoredProcedure;
        cmdx.Parameters.Add("@f_name", SqlDbType.VarChar).Value = f_name.Text;
        cmdx.Parameters.Add("@l_name", SqlDbType.VarChar).Value = l_name.Text;
        using (SqlDataReader rdr = cmdx.ExecuteReader())
        {
            if (rdr.HasRows)
            {
                // iterate through results, printing each to console
                while (rdr.Read())
                {
                    Label20.Text = "Succesfully Registered ,Your Loan ID is : " + rdr["id"].ToString();
                }
            }
        }

        conn.Close();
    }
    else {
        Label20.ForeColor = System.Drawing.Color.Red;
        Label20.Text = "Failed Due to Wrong Data Format, Check Dates and Email";

    
    }
               
            
            ///cmd.ExecuteNonQuery();

               
            

        //mail server 

        /***************
            try
            {
                MailMessage oMsg = new MailMessage();
                // TODO: Replace with sender e-mail address.
                oMsg.From = "LoanManagment@nwsc.co.ug";
                // TODO: Replace with recipient e-mail address.
                oMsg.To = email.Text;
                oMsg.Subject = "Application For Loan at NWSC";

                // SEND IN HTML FORMAT (comment this line to send plain text).
                oMsg.BodyFormat = MailFormat.Html;

                // HTML Body (remove HTML tags for plain text).
                oMsg.Body = "<HTML><BODY><B>Thank for applying for the NWSC Staff Loan ,</br> Please check with Loan Office for approvals</br> Thank You </br> Managment</B></BODY></HTML>";

                // ADD AN ATTACHMENT.
                // TODO: Replace with path to attachment.
               // String sFile = @"C:\temp\Hello.txt";
               // MailAttachment oAttch = new MailAttachment(sFile, MailEncoding.Base64);

               // oMsg.Attachments.Add(oAttch);

                // TODO: Replace with the name of your remote SMTP server.
                SmtpMail.SmtpServer = "MySMTPServer";
                SmtpMail.Send(oMsg);

                oMsg = null;
               // oAttch = null;
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
            }
         * 
         * 
          ***********************/
         
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



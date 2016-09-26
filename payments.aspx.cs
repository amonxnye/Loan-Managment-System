using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Collections.Generic;

public partial class payments : System.Web.UI.Page
{

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
        SqlCommand cmd = new SqlCommand("sp_insert_payment", conn);

        cmd.CommandType = CommandType.StoredProcedure;
        // SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
        cmd.Parameters.Add("@date", SqlDbType.VarChar).Value = date.Text;
        cmd.Parameters.Add("@loanid", SqlDbType.Int).Value = loan_id.Text ;
        cmd.Parameters.Add("@amount", SqlDbType.Int).Value = amount.Text;
        cmd.Parameters.Add("@authority", SqlDbType.Int).Value = authority.Text;
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name.Text;

        //check if Email is valid
        DATACheck check = new DATACheck();
        if (check.isValidDate(date.Text) == true)
        {
            // execute the command
            cmd.ExecuteNonQuery();

            Label20.Text = "Succesfully Paid";



            //cmd.ExecuteNonQuery();

            /////file upload
            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + loan_id.Text + "_" + date.Text + "_" + amount.Text);
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
        else
        {

            Label20.ForeColor = System.Drawing.Color.Red;
            Label20.Text = "Failed Due to Wrong Data Format, Check Dates and Email";
        }
        ClearTextBoxes();
        conn.Close();
    }

    /********************************************/ 
   // image upload method
    /*
      protected void Upload(object sender, EventArgs e)
{
    if (FileUpload1.HasFile)
    {
        string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}
 /********************************************/   
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GamingReviews.Login
{
    public partial class SignUp : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_onClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\TAFEAdv\WebServer\Assessment\GamingReviews\App_Data\ReviewDataBase.mdf;Integrated Security=True");
            SqlDataAdapter sda1 = new SqlDataAdapter("SELECT UserName FROM tblUsers WHERE UserName ='" + UserName.Text + "'", con);

            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);

            if(dt1.Rows.Count>0)
            {
                ErrorText.Visible = true;
            }
            else
            {
                SqlCommand Cmd = new SqlCommand("INSERT INTO tblUsers (FirstName,LastName,UserName,Password) VALUES ('"+FName.Text+"','"+LName.Text+"','"+UserName.Text+"','"+psw.Text+"')", con);
                con.Open();
                Cmd.ExecuteNonQuery();
                Response.Redirect("~/Login/Login.aspx");
            }

        }

    }
}
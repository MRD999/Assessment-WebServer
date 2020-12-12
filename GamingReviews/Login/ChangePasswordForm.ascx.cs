using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.Login
{
    public partial class Profile1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void changeButton_Click(object sender, EventArgs e)
        {
            String userName = Session["UserName"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\TAFEAdv\WebServer\Assessment\GamingReviews\App_Data\ReviewDataBase.mdf;Integrated Security=True");
            SqlDataAdapter sda1 = new SqlDataAdapter("Select WriterID,Password FROM tblReviewers WHERE WriterID = '" + userName + "' AND Password = '" + OldPsw.Text + "'", con);
            SqlDataAdapter sda2 = new SqlDataAdapter("SELECT UserName , Password FROM tblUsers WHERE UserName ='" + userName + "' AND Password = '" + OldPsw.Text + "'", con);

            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            sda1.Fill(dt1);
            sda2.Fill(dt2);


            if (dt1.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("UPDATE tblReviewers SET Password ='" + NewPsw.Text + "' WHERE WriterID = '" + userName + "';",con);
                con.Open();
                cmd.ExecuteNonQuery();
                Session.Abandon();
                Response.Redirect("~/Login/Login.aspx");

            }
            else if (dt2.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("UPDATE tblUsers SET Password = '"+NewPsw.Text+"' WHERE UserName = '"+userName+"';",con);
                con.Open();
                cmd.ExecuteNonQuery();
                Session.Abandon();
                Response.Redirect("~/Login/Login.aspx");
            }
            else
            {
                Error.Visible = true;
    
            }
        }
    }
}
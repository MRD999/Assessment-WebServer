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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //checking session
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/Login/Login.aspx");
            }
            //checking for writter id
            String Uname = "";
            Uname = Session["UserName"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\TAFEAdv\WebServer\Assessment\GamingReviews\App_Data\ReviewDataBase.mdf;Integrated Security=True");
            SqlDataAdapter sda1 = new SqlDataAdapter("Select WriterID FROM tblReviewers WHERE WriterID = '" + Uname + "'", con);
            SqlDataAdapter sda2 = new SqlDataAdapter("SELECT UserName , Password FROM tblUsers WHERE UserName ='" + Uname + "'", con);

            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            sda1.Fill(dt1);
            sda2.Fill(dt2);

            if (dt1.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Select * FROM tblReviewers WHERE WriterID = '" + Uname + "'", con);
                con.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        lbFName.Text = Uname.ToString();
                        lbFName.Text = reader["FirstName"].ToString();
                        lbLName.Text = reader["LastName"].ToString();
                        lblUserName.Text = reader["WriterID"].ToString();
                    }
                }
                edditButton.Visible = true;
                addButton.Visible = true;
            }
            else if (dt2.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Select * FROM tblUsers WHERE UserName = '" + Uname + "'", con);
                con.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        lbFName.Text = Uname.ToString();
                        lbFName.Text = reader["FirstName"].ToString();
                        lbLName.Text = reader["LastName"].ToString();
                        lblUserName.Text = reader["UserName"].ToString();
                    }
                }
            }

        }

        protected void signOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Login/Login.aspx");
            
        }

        protected void edditButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Edits/EditReviews.aspx");
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Edits/AddReview.aspx");
        }
    }
}
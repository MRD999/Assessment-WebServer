using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.Edits
{
    public partial class Add : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Edits/AddReview.aspx");
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            string ID = Session["UserName"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\TAFEAdv\WebServer\Assessment\GamingReviews\App_Data\ReviewDataBase.mdf;Integrated Security=True");
            if (String.IsNullOrEmpty(cover.Text))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tblGames(GameName, Genre, Producer, Detail, Platform, Cover, WriterID, Date) VALUES('"+gName.Text+"', '"+genre.Text+"', '"+producer.Text+"', '"+detail.Text+"', '"+DDPlatform.SelectedValue+"', NULL, '"+ID+"', '"+date.SelectedDate+"')",con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Edits/EditReviews.aspx");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tblGames(GameName, Genre, Producer, Detail, Platform, Cover, WriterID, Date) VALUES('" + gName.Text + "', '" + genre.Text + "', '" + producer.Text + "', '" + detail.Text + "', '" + DDPlatform.SelectedValue + "', '"+cover.Text+"', '" + ID + "', '" + date.SelectedDate + "')",con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Edits/EditReviews.aspx");
            }



        }
    }
}
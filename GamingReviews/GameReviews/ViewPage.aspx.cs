using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.GameReviews
{
    public partial class ViewPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["gameID"]==null)
            {
                Response.Redirect("~/GameReviews/Archive.aspx");
            }
            string id = Session["gameID"].ToString();
            int gameID = Int32.Parse(id);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\TAFEAdv\WebServer\Assessment\GamingReviews\App_Data\ReviewDataBase.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("Select WriterID from tblGames Where GameID='" + gameID + "'", con);
            String WriterID = cmd.ExecuteScalar().ToString();
            SqlCommand cmd1 = new SqlCommand("Select FirstName,LastName from tblReviewers Where WriterID='" + WriterID + "'", con);
            SqlCommand cm2 = new SqlCommand("Select GameName,Genre,Producer,Detail,Platform,Date from tblGames Where GameID='" + gameID + "'", con);


            using(SqlDataReader oReader = cmd1.ExecuteReader())
            {
                while(oReader.Read())
                {
                    writterlb.Text = oReader["FirstName"].ToString() +" "+  oReader["LastName"].ToString();
                }
            }
            using (SqlDataReader oReader = cm2.ExecuteReader())
            {
                while (oReader.Read())
                {
                    namelb.Text = oReader["GameName"].ToString();
                    platformlb.Text = oReader["Platform"].ToString();
                    genrelb.Text = oReader["Genre"].ToString();
                    producerlb.Text = oReader["Producer"].ToString();
                    detiallb.Text = oReader["Detail"].ToString();
                    DateTime Date = DateTime.Parse(oReader["Date"].ToString());
                    datelb.Text = Date.ToString("yyyy-MM-dd");
                    

                }
            }
            con.Close();



        }
    }
}
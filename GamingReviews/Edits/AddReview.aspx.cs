using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.Edits
{
    public partial class AddReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            String Uname = "";
            Uname = Session["UserName"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ReviewDataBase.mdf;Integrated Security=True;");
            SqlDataAdapter sda1 = new SqlDataAdapter("Select WriterID FROM tblReviewers WHERE WriterID = '" + Uname + "'", con);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            if (dt1.Rows.Count == 0)
            {
                Response.Redirect("~/Default.aspx");
            }

        }
    }
}
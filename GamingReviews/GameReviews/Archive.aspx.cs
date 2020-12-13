using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.GameReviews
{
    public partial class Archive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [GameId],[GameName], [Genre], [Producer], [Platform], [Date] FROM [tblGames] ORDER BY [Date]";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DDWritter_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DDWritter.SelectedIndex==0 && DDPlatform.SelectedIndex==0)
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId],[GameName], [Genre], [Producer], [Detail], [Platform], [Date] FROM [tblGames] ORDER BY [Date]";
            }
            else if(DDWritter.SelectedIndex == 0)
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId],GameName, Genre, Producer, Platform, Date FROM tblGames WHERE Platform='" + DDPlatform.SelectedValue + "' ORDER BY Date";
            }
            else if (DDPlatform.SelectedIndex == 0)
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId],GameName, Genre, Producer, Platform, Date FROM tblGames WHERE WriterID='" + DDWritter.SelectedValue + "' ORDER BY Date";
            }
            else
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId],GameName, Genre, Producer, Platform, Date FROM tblGames WHERE WriterID ='" + DDWritter.SelectedValue + "' AND Platform='" + DDPlatform.SelectedValue + "' ORDER BY Date";
            }
            
        }

        protected void DDPlatform_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDPlatform.SelectedIndex == 0 && DDWritter.SelectedIndex == 0)
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId],[GameName], [Genre], [Producer], [Detail], [Platform], [Date] FROM [tblGames] ORDER BY [Date]";
            }
            else if (DDWritter.SelectedIndex == 0)
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId],GameName, Genre, Producer, Platform, Date FROM tblGames WHERE Platform='" + DDPlatform.SelectedValue + "' ORDER BY Date";
            }
            else if (DDPlatform.SelectedIndex == 0)
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId],GameName, Genre, Producer, Platform, Date FROM tblGames WHERE WriterID='" + DDWritter.SelectedValue + "' ORDER BY Date";
            }
            else
            {
                SqlDataSource1.SelectCommand = "SELECT [GameId], GameName, Genre, Producer, Platform, Date FROM tblGames WHERE WriterID ='" + DDWritter.SelectedValue + "' AND Platform='" + DDPlatform.SelectedValue + "' ORDER BY Date";
            }
        }
        public void button_OnClick(Object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow gvr = (GridViewRow)btn.NamingContainer;
            int rowindex = gvr.RowIndex;
            String gameID = GridView1.Rows[rowindex].Cells[0].Text;
            Session["gameID"] = gameID;
            Response.Redirect("~/GameReviews/ViewPage.aspx");

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.GameReviews
{
    public partial class GameReviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
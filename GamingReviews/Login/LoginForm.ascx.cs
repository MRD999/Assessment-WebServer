﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Policy;
using System.Security.Principal;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.Login
{
    public partial class LoginForm : System.Web.UI.UserControl
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        private bool SiteSpecificAuthenticationMethod(string UserName, string Password)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\TAFEAdv\WebServer\Assessment\GamingReviews\App_Data\ReviewDataBase.mdf;Integrated Security=True");
            //SqlDataAdapter sda1 = new SqlDataAdapter("Select * FROM tblRevewers WHERE WriterID = '" + UserName + "' AND Password = '" + Password + "'", con);
            SqlDataAdapter sda1 = new SqlDataAdapter("SELECT UserName , Password FROM tblUsers WHERE UserName ='" + UserName + "' AND Password = '" + Password + "'", con);

            //DataTable dt1 = new DataTable();
            DataTable dt1 = new DataTable();
            //sda1.Fill(dt1);
            sda1.Fill(dt1);
            
           
            if (dt1.Rows.Count>0)
            {
                Response.Redirect("~/Default.aspx");
                return true;


            }
            else
            {
                    return false;
            }       
        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool Authenticated = false;
            Authenticated = SiteSpecificAuthenticationMethod(Login.UserName, Login.Password);
            
            e.Authenticated = Authenticated;
        }
    }
}
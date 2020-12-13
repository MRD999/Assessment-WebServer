using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingReviews.AboutUs
{
    public partial class ContactFrom : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendButton_Click(object sender, EventArgs e)
        {
                string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
                string mailBody = File.ReadAllText(fileName);
                mailBody = mailBody.Replace("##Name##", Name.Text);
                mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
                mailBody = mailBody.Replace("##Comments##", Comments.Text);
                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Response from web site";
                myMessage.Body = mailBody;
                myMessage.From = new MailAddress("gamingreviewstestemail@gmail.com", "Sender Name");
                myMessage.To.Add(new MailAddress("gamingreviewstestemail@gmail.com", "Receiver Name"));
                myMessage.ReplyToList.Add(new MailAddress(EmailAddress.Text));
                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.Send(myMessage);
                Message.Visible = true;
                FormTable.Visible=false;
        }
    }
}
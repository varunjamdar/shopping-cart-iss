using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Mail;

public partial class ucContactUs : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    private void SendMail(string From, string To, string Subject, string Body)
    {
        MailMessage mail = new MailMessage();
        mail.From = From;
        mail.To = To;
        mail.Subject = Subject;
        mail.Body = Body;
        SmtpMail.SmtpServer = "localhost";
        SmtpMail.Send(mail);
        Response.Write("<script>alert('Mail Sent Successfully');</script>");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string Subject = txtsubject.Text;
        string Body = txtmessage.Text;
        string From=txtemail.Text;
        string To = "Admin@ShoppingCart.com";
         Body = String.Format(Body, From,txtname.Text);
         SendMail(From,To,Subject,Body);
        
    }
}

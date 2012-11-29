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
using ShoppingCart.BL;
using System.Data.SqlClient;
using System.Web.Mail;
public partial class Browse_Controls_ucForgotPassword : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string s = txtUser.Text;
        SqlDataReader dr = ProductController.getQuestion(txtUser.Text);
        if (dr != null)
        {
            if (dr.Read())
            {
                txtUser1.Text = s;
                Panel1.Visible = false;
                Panel2.Visible = true;
                lblQuestion.Text = dr["HintQuestion"].ToString();
            }
            else
                lbler.Text="Invalid Username!!!";
            txtUser.Focus();
        }
    }
    protected void btnPwd_Click(object sender, EventArgs e)
    {
        SqlDataReader dr = ProductController.getPassword(txtUser.Text, txtAnswer.Text);
        if (dr != null)
        {
            if (dr.Read())
            {

                string s = ConfigurationManager.AppSettings["SendPwd"] + dr["Password"].ToString();
                string From = ConfigurationManager.AppSettings["From"];
                string subject = ConfigurationManager.AppSettings["Subject"];
                sendmail(From, txtEmail.Text, subject, s);

            }
            else
                lblans.Text = "Invalid Answer!!! Try Again";
       }

    }
    private void sendmail(string from, string to, string sub, string body)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.From = from;
            mail.To = to;
            mail.Subject = sub;
            mail.Body = body;
            SmtpMail.SmtpServer = "localhost";
            SmtpMail.Send(mail);
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
    }
}

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

public partial class Browse_MasterPage1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] == null)
        {
            lblUser.Text = "Welcome Guest";
        }
        else
        {
            lblUser.Text = "Welcome  " + " " + Session["UserName"].ToString();
            lblUser.PostBackUrl = "~/MyAccount/frmMyAccount.aspx";
        }
    }
   
}

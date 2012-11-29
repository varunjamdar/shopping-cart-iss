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

public partial class Registration_frmLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignin_Click(object sender, EventArgs e)
    {
        string s,l;
        int IdRole = 0;
        SqlDataReader dr = ProductController.GetLogin(txtUserName.Text, txtPwd.Text);
        if (dr != null)
        {
            if (dr.Read())
            {
                s = dr["FName"].ToString();
                l = dr["LName"].ToString();
                Session["Username"] = txtUserName.Text;
                Object obj = ProductController.GetRoleByUsername(txtUserName.Text.Trim());
                if (obj != null)
                {
                    IdRole = Convert.ToInt32(obj.ToString());
                }
                //FormsAuthentication.RedirectFromLoginPage(txtUserName.Text.Trim(),false);
                if (IdRole == 8)
                    Response.Redirect("~/Admin/frmAdmin.aspx");
                else
                    Response.Redirect("/Shopping/MyAccount/frmMyAccount.aspx?u=" + Session["Username"]);
            }
            else
            {
                lblError.Text="not a valid user";
            }
        }
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {

    }
}
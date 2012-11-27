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

public partial class Payment_UcPayment : System.Web.UI.UserControl
{
    int OrderNo;
    
    
    double carttotal, taxamt;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string SessionId;
        SessionId = Session["sessionId"].ToString();
        for (int i = 1; i <= 12; i++)
        {
            ddlMonth.Items.Add(i.ToString());
        }
        for (int j = 2007; j <= 2099; j++)
        { ddlyear.Items.Add(j.ToString()); }
        carttotal = Int32.Parse(ProductController.GetCartTotal(SessionId).ToString());
        taxamt = 0.085 * ProductController.GetCartTotal(SessionId);

        txtcamount.Text = "$ " + ProductController.GetCartTotal(SessionId).ToString();
        txttamount.Text = "$" + (0.085 * Int32.Parse(ProductController.GetCartTotal(SessionId).ToString()));
        txtnamount.Text = "$"+(carttotal + taxamt+10).ToString();
    }
    protected void txtcamount_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void btnpay_Click(object sender, EventArgs e)
    {
        int i;
        string a;

        a = Session["sessionid"].ToString();
        if (Session["UserName"] != null)
        {
            i = ProductController.GetIdFromtblUserAccount(Session["UserName"].ToString());
            OrderNo = ProductController.insertorder(i, float.Parse(carttotal.ToString()), float.Parse(taxamt.ToString()), float.Parse((carttotal + taxamt + 10).ToString()), Int32.Parse(Session["shipid"].ToString()), Int32.Parse(Session["billid"].ToString()), a, Request["Billfname"].ToString());
            btnpay.Enabled = false;
            Response.Redirect("/Shopping/Thanks page/frmThanks.aspx?orderno=" + OrderNo);
        }
        else
        {

            
          OrderNo = ProductController.insertorder(int.Parse(Request["Custid"].ToString()), float.Parse(carttotal.ToString()), float.Parse(taxamt.ToString()), float.Parse((carttotal + taxamt + 10).ToString()), Int32.Parse(Session["shipid"].ToString()), Int32.Parse(Session["billid"].ToString()), a, Request["Billfname"].ToString());
          Response.Redirect("/Shopping/Thanks page/frmThanks.aspx?orderno=" + OrderNo);
        }
    }
    public int orderno
    {
        get
        {
            return OrderNo;
        }
    }

}

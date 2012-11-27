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

public partial class OrderDetails_ucOrderDetails : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            string s = Session["UserName"].ToString();
            DataSet dsRetrieveOrders = ProductController.RetrieveOrderDetails(s);
            dlOrders.DataSource = dsRetrieveOrders;
            dlOrders.DataBind();

        }
    }
   
}

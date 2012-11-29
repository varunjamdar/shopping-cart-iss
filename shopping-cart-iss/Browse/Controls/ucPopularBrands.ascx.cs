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
using System.Data.SqlClient;
using ShoppingCart.BL;

public partial class Browse_Controls_ucPopularBrands : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            DataSet dsBrands = ProductController.getPopularBrands();
            if (dsBrands.Tables[0].Rows.Count > 0)
            {
                BindDataList(dlBrands, dsBrands);
            }
            
        }
    }
    private void BindDataList(DataList dl, DataSet ds)
    {
        dl.DataSource = ds;
        dl.DataBind();
    }
}

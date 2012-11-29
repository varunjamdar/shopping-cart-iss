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

public partial class Browse_Controls_ucRegistration : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        if (!IsPostBack)
        {
            //for (i = 1930; i <= 2007; i++)
            //    ddlyear.Items.Add(i.ToString());
            country();
            state();
            city();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
           // DateTime dob = new DateTime(Int32.Parse(ddlyear.Text), Int32.Parse(ddlmonth.Text), Int32.Parse(ddldate.Text));
            ProductController.GetLoginDetails(txtuser.Text, txtfname.Text, txtlname.Text,
               txtpswd.Text, ddlQuestion.Text, txtAnswer.Text,
               GMDatePicker1.Date, txtcontact.Text, rdSex.SelectedValue,
               txtmail.Text, txtaddr.Text, int.Parse(ddlcountry.SelectedValue), int.Parse(ddlstate.SelectedValue), int.Parse(ddlcity.SelectedValue), txtZipCode.Text);
            lblres.Text = "Registration Completed Successfully !!!";
            ClearData();
        }
        catch (Exception ex)
        {
            lblUser.Text = "UserName already exists";
        }
    }
    void ClearData()
    {
        txtaddr.Text = "";
        txtAnswer.Text = "";
        txtcontact.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";
        txtmail.Text = "";
        txtpswd.Text = "";
        txtRePswd.Text = "";
        txtuser.Text = "";
    }

    protected void txtuser_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet dsState = ProductController.getAllStatesByCountryID(int.Parse(ddlcountry.SelectedValue));
        BindDDL(ddlstate, dsState, "Name", "ID");
        DataSet dscity = ProductController.getCitydetailsByStateID(int.Parse(ddlstate.SelectedValue));
        BindDDL(ddlcity, dscity, "Name", "ID");
        
    }

    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        //ddlcity.Items.Clear();
        DataSet dscity = ProductController.getCitydetailsByStateID(int.Parse(ddlstate.SelectedValue));
        BindDDL(ddlcity, dscity, "Name", "ID");
    }
    private void state()
    {
        DataSet dsState = ProductController.getAllStatedetails();
        BindDDL(ddlstate, dsState, "Name", "ID");
    }   
    private void country()

    {
        DataSet dsCountry = ProductController.getCountrydetails();
        BindDDL(ddlcountry, dsCountry, "Name", "ID");
    }
    private void BindDDL(DropDownList ddl, DataSet ds, string txtField, string valField)
    {
        ddl.DataSource = ds;
        ddl.DataTextField = txtField;
        ddl.DataValueField = valField;
        ddl.DataBind();
    }
    private void city()
    {
        DataSet dscity=ProductController.getCitydetails();
        BindDDL(ddlcity, dscity, "Name", "ID");
    } 
}


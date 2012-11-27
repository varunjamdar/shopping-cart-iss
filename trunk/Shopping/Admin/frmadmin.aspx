<%@ Page Language="C#" MasterPageFile="~/Templates/Default/AdminMaster.master" AutoEventWireup="true" CodeFile="frmadmin.aspx.cs" Inherits="Admin_frmadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" cellpadding="0" cellspacing="0" border="1" height="345">
<tr>
<td width="20%" valign="top">
<ul>
<li>
<a href='Order/frmOrdersList.aspx' runat='server'>Admin Order</a>
</li>
<li>
<a href='AdminCatalog/adminCategory/frmCategoriesList.aspx' runat='server'>Admin Category</a>
</li>
<li>
<a id="A1" href='AdminCatalog/adminBrand/frmBrandList.aspx' runat='server'>Admin Brand</a>
</li>
<li>
<a id="A2" href='AdminCatalog/adminProduct/frmProductList.aspx' runat='server'>Admin Products</a>
</li>
<li>
<a id="A3" href='AdminCatalog/adminUsers/frmUsersList.aspx' runat='server'>Manage Users</a>
</li>
</ul>
</td>
    <td align="center" style="font-size:20px">
   <strong>Welcome to Shopping Cart Administration</strong>
    </td>
</tr>
</table>
</asp:Content>


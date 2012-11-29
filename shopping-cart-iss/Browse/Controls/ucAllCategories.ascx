<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucAllCategories.ascx.cs" Inherits="Browse_Controls_ucAllcategories" %>
<table width="100%">
    <tr>
        <td style="width:100%;">
         <h3>All Categories</h3>
        </td>
    </tr>
    <tr>
        <td style="width:100%">
            <asp:DataList ID="dlCategories" runat="server" RepeatColumns="4" CellSpacing="12">
                <ItemTemplate>
                    <a href='<%#DataBinder.Eval(Container.DataItem,"ID","/Shopping/Browse/frmCategoriesProducts.aspx?CID={0}")%>'>
                        <img alt='<%#DataBinder.Eval(Container.DataItem,"Name")%>' src='<%#DataBinder.Eval(Container.DataItem,"Image","/Shopping/Browse/Images/{0}")%>' width="100" height="100" />
                    </a>
                    
                    <a href='<%#DataBinder.Eval(Container.DataItem,"ID","/Shopping/Browse/frmCategoriesProducts.aspx?CID={0}")%>'>
                    <%#DataBinder.Eval(Container.DataItem,"Name")%>
                    </a>
                </ItemTemplate>
            </asp:DataList>
             
        </td>
    </tr>
</table>

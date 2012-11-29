<%@ Page Language="C#" MasterPageFile="~/Browse/MasterPage1.master" AutoEventWireup="true"
    CodeFile="frmMyAccount.aspx.cs" Inherits="MyAccount_frmMyAccount"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
    <ol>
        <tr>
            <td>
                 <li><a href='/Shopping/MyAccount/frmChangeAccountDetails.aspx?U=<%=Request["u"]%>' style="color: red">
                        Change Account Details</a> </li>
                
            </td>
        </tr>
        <tr>
            <td>
                
                    <li><a href='/Shopping/OrderDetails/frmOrderDetails.aspx' style="color: red">View Order History</a></li></td>
        </tr>
        
        
        <tr>
            <td>
               
                    <li><a href='/Shopping/OrderDetails/frmSubmitOrderno.aspx' style="color: red">View Order status</a></li></td>
        </tr>
        <tr>
            <td>
                
                    <li><a href="/Shopping/WishList/frmWishList.aspx" style="color: red">View Wish List</a></li></td>
        </tr>
        
        
        </ol>
        
        
    </table>
</asp:Content>

<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeader.ascx.cs" Inherits="Templates_Default_controls_ucHeader" %>
<table style="width:100%" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <td style="height: 157px; width: 728px;">
                       
                        <img id="img1" src="../../../Browse/Images/Untitled-30.jpg" alt="Easy Wear" runat="server" height="181" style="width: 697px"/></td>
         <td align="right" style="width:25%; height: 172px;" valign="top">
                        <small> <a href='/Shopping/Default.aspx'>Home</a>
                                <asp:LinkButton ID="lnkMyaccount" runat="server" Visible="False" OnClick="lnkMyaccount_Click">My Account</asp:LinkButton>
                                <a href='/Shopping/Cart/frmShoppingCart.aspx'>
                                    <asp:Label ID="lblCartCount" Text="Cart: (0)" runat="server"></asp:Label>
                                </a>
                            <asp:LinkButton ID="lnkLogin" runat="server" OnClick="lnkLogin_Click" CausesValidation="False">Login</asp:LinkButton>
                        </small>
                        <img id="img3" src="../../../Browse/Images/cooltext75055321.gif" alt="Easy Wear" runat="server" width="300"/><br />
                        <img id="img4" src="../../../Browse/Images/images6.jpg" alt="Easy Wear" runat="server" width="300" height="100"/>
                    </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <table width="50%" style="background-color:#D3D3D3">
                <tr align="center">              
                    <td style="width:10%;">
                        <a href='/Shopping/Default.aspx'>Home</a>
                    </td>
                    <td style="width: 10%">
                       <asp:LinkButton ID="lnkAdminLogin_Click" runat="server"  CausesValidation="False" OnClick="lnkAdminLogin_Click_Click">Admin</asp:LinkButton>
                    </td>
                    <td style="width:10%;">
                        <a href='/Shopping/Gallery/frmGallery.aspx'>  Gallery</a>
                    </td>
                    <td style="width:10%;" >
                        <a href='/Shopping/SiteMap/frmSitemap.aspx'>  Site Map</a>
                    </td> 
                    <td  style="width:10%;">
                        <a href='/Shopping/About Us/frmAboutus.aspx'>  About Us</a>
                    </td>
                    <td style="width:10%;">
                        <a href='/Shopping/Contact Us/frmContactUs.aspx'>Contact Us</a>
                    </td>                    
                </tr>
            </table>
          </td>
    </tr>
</table>
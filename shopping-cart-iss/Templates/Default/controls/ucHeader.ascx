<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeader.ascx.cs" Inherits="Templates_Default_controls_ucHeader" %>
<table style="width:100%" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <td style="height: 157px; width: 728px;">
                       
                        <img id="img1" src="../../../Browse/Images/bottombanner_people.png" alt="Easy Wear" runat="server" height="181" style="width: 697px"/></td>
         <td align="left" style="width:25%; height: 172px; color: #000080;" 
            valign="top">
                        <small> <b> <a href='/Shopping/Default.aspx'>Home</a></b> <b>
                                <asp:LinkButton ID="lnkMyaccount" runat="server" Visible="False" OnClick="lnkMyaccount_Click">My Account</asp:LinkButton>
                                <a href='/Shopping/Cart/frmShoppingCart.aspx'>
                                    <asp:Label ID="lblCartCount" Text="Cart: (0)" runat="server"></asp:Label>
                                </a>
                        </b>
                        </small><br />
                        <small> 
                            <asp:LinkButton ID="lnkLogin" runat="server" OnClick="lnkLogin_Click" 
                            CausesValidation="False" BackColor="White" BorderColor="#660066" 
                            Font-Bold="True" Font-Names="DigifaceWide" Font-Size="X-Large" 
                            Font-Underline="True" ForeColor="Lime"><small>LOGIN</small></asp:LinkButton>
                        </small>&nbsp;<img id="img4" src="../../../Browse/Images/images6.jpg" 
                            alt="Easy Wear" runat="server" width="300" height="200" align="bottom"/></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <table width="50%" style="background-color:#D3D3D3">
                <tr align="center">              
                    <td style="width:10%;">
                        <a href='/Shopping/Default.aspx'>Home</a>
                    </td>
                    <td style="width: 10%">
                        <a href='/Shopping/Contact Us/frmContactUs.aspx'>Contact Us</a></td>
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
                        &nbsp;<asp:LinkButton ID="lnkAdminLogin_Click" runat="server"  CausesValidation="False" 
                            OnClick="lnkAdminLogin_Click_Click" Font-Bold="True" Font-Italic="True" 
                            Font-Names="Copperplate Gothic Bold">Admin</asp:LinkButton>
                    </td>                    
                </tr>
            </table>
          </td>
    </tr>
</table>
<p>
    &nbsp;</p>

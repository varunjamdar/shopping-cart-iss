<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucContactUs.ascx.cs" Inherits="ucContactUs" %>
<table style="width: 55%">
<tr>
<td align="left" colspan="2" >
<h3>Contact Us</h3>
</td>
</tr>
<tr>
<td align="center" style="text-align: left" colspan="2">
        Shopping Solutions Pvt India Ltd
Head Office:
Andheri West Mumbai
Hello: 020-23456787
Branch Offices:
<ol>
<li style="text-align: left"> <p style="text-align: justify">
    <strong>Public Gardens road <br />
     Nampally <br />
     Hyderabad <br />
     Phone:040-23000296 </strong>
</p>
</li>
<li>  
    <p style="text-align: justify"> 
        <strong>T-Nagar <br />
     Chennai <br />
     Phone:044-12345678</strong></p>
</li>     
</ol>

</td>
</tr>
<tr>
<td align="right" >
<asp:Label ID="lblname" runat="server" CssClass="text" Text="Your Name:" Font-Bold="True"></asp:Label>
</td>
<td style="width: 253px">
<asp:TextBox ID="txtname" runat="server" Width="50%">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
<asp:Label ID="lblemail" runat="server" CssClass="text" Text="Your Email-ID:" Font-Bold="True"></asp:Label>
</td>
<td style="width: 253px">
<asp:TextBox ID="txtemail" runat="server" Width="50%">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
<asp:Label ID="lblsubject" runat="server" CssClass="text" Text ="Subject:" Font-Bold="True"></asp:Label>
</td>
<td style="width: 253px">
<asp:TextBox ID="txtsubject" runat="server" Width="50%">
</asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
<asp:Label ID="lblMessage" runat="server"  CssClass="text" Text="Message to Admin:" Font-Bold="True"></asp:Label>
</td>
<td style="width: 253px">
<asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Width="50%">
</asp:TextBox>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
</td>
</tr>
</table>
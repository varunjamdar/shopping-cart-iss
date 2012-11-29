<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucForgotPassword.ascx.cs"
    Inherits="Browse_Controls_ucForgotPassword" %>
<asp:Panel ID="Panel1" runat="server" Width="100%">
    <table cellspacing="2" width="100%">
        <tr align="center" style="width: 100%">
            <td style="background-color: #ccccff;">
                <asp:Label ID="lblUser" Text="Username" runat="server">
                </asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtUser" runat="server">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUser"
                    ErrorMessage="Must enter username">
                </asp:RequiredFieldValidator>
            </td>
            <td>
            
            <asp:Label ID="lbler" Font-Bold="true" ForeColor="red" runat="server"></asp:Label> 
            </td>
        </tr>
        <tr style="width: 100%" align="center">
            <td style="background-color: #ccccff">
                <asp:Label ID="lblEmail" Text="Email Id" runat="server">
                </asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtEmail" Text="" runat="server">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Must enter Mail Id" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtEmail"
                    Display="Dynamic" ErrorMessage="Not in correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <asp:Button ID="btnSubmit" Text="Submit" BackColor="#9999ff" runat="Server" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Panel>
<br />
<asp:Panel ID="Panel2" runat="server" Visible="false" Width="100%">
    <table cellspacing="2" width="100%">
        <tr>
            <td style="background-color: #ccccff">
                <asp:Label ID="lblUser1" Text="Username:" runat="server">
                </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUser1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #ccccff">
                <asp:Label ID="lblQ" runat="server" Text="Question:">
                </asp:Label>
            </td>
            <td>
                <asp:Label ID="lblQuestion" runat="server" Width="200px" BackColor="#FFC0C0"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #ccccff">
                <asp:Label ID="lblAnswer" runat="server" Text="Answer:">
                </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server">
                </asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAnswer"
                    ErrorMessage="Must Enter Answer" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="lblans" runat="server" ForeColor="red" Font-Bold="true"></asp:Label>
        </td></tr>
        <tr align="center">
            <td colspan="2" align="center">
                <table>
                    <tr>
                        <td>
                            <asp:Button Text="Get Password" ID="btnPwd" BackColor="#9999ff" runat="server" OnClick="btnPwd_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" Text=" "> </asp:Label>
            </td>
        </tr>
    </table>
</asp:Panel>

<%@ Page Language="C#" MasterPageFile="~/Templates/Default/MasterPage.master" AutoEventWireup="true"
    CodeFile="frmLogin.aspx.cs" Inherits="Registration_frmLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <table width="100%">
            <tr>
                <td>
                    &nbsp;<br />
                    <div align="center">
                        <asp:Label ID="lblError" runat="server" Font-Bold="true" ForeColor="red" Text=""></asp:Label>
                    </div>
                    <div align="center">
                        <table>
                            <tr>
                                <td style="font-family: 'Times New Roman'; font-size: x-large; text-decoration: blink; font-weight: bolder; font-style: normal; color: #000080;">
                                    Email ID:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserName" runat="server" Width="160px" 
                                        style="font-weight: 700" AutoCompleteType="Email" 
                                        ontextchanged="txtUserName_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUserName"
                                        Text="*" ToolTip="Username cannot be Blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: 'Times New Roman'; font-size: x-large; text-decoration: blink; color: #008000; font-style: normal; font-weight: bold;">
                                    Password:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="160px" 
                                        style="font-weight: 700" CausesValidation="True" MaxLength="10" 
                                        ToolTip="Enter a password between 3-10 charecter"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                        Text="*" ToolTip="Must enter password" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:Button ID="btnSignin" Text="Sign in" runat="server" 
                                        OnClick="btnSignin_Click" style="font-weight: 700" />
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    Not yet Registered? Click here to <b> <a href="/Shopping/Registration/frmNewUser.aspx">Register
                                        Now</a></b>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <b>
                                    <a href="/Shopping/Registration/frmForgotPassword.aspx">Forgot Password?</a></b>
                                </td>
                            </tr>
                            <%--<tr>
            <td>
            </td>
            <td align="right">
                <a href="/reEasyWear/Registration/frmChangePassword.aspx">Change Password</a>
            </td>
        </tr>--%>
                        </table>
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Templates/Default/MasterPage.master" AutoEventWireup="true"
    CodeFile="frmLogin.aspx.cs" Inherits="Registration_frmLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <table width="100%">
            <tr>
                <td>
                    <asp:Label ID="lblLogin" runat="server"><b>Log In</b></asp:Label>&nbsp;<br />
                    <div align="center">
                        <asp:Label ID="lblError" runat="server" Font-Bold="true" ForeColor="red" Text=""></asp:Label>
                    </div>
                    <div align="center">
                        <table>
                            <tr>
                                <td style="font-family: 'Times New Roman'; font-size: x-large; text-decoration: blink; font-weight: bolder; font-style: normal; color: #000080;">
                                    UserName:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUserName" runat="server" Width="160px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUserName"
                                        Text="*" ToolTip="Username cannot be Blank" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: 'Times New Roman'; font-size: x-large; text-decoration: blink; color: #008000; font-style: normal; font-weight: bold;">
                                    Password:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                        Text="*" ToolTip="Must enter password" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnSignin" Text="Sign in" runat="server" OnClick="btnSignin_Click" />
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
                                    Not yet Registered? Click here to <a href="/Shopping/Registration/frmNewUser.aspx">Register
                                        Now</a>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <a href="/Shopping/Registration/frmForgotPassword.aspx">Forgot Password?</a>
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

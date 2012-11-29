<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UcPayment.ascx.cs" Inherits="Payment_UcPayment" %>
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>

<table width="100%" id="TABLE1">
    <tr>
        <td style="width: auto">
        
            <asp:Label ID="lbltitle" runat="server" Text="Payment Details" ForeColor="gray" Font-Size="Large"
                              Width="283px"></asp:Label>
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblSummary" runat="server" Text="Order Summary" BackColor="Cornsilk">
            </asp:Label>
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr style="width: 100%">
        <td align="center" style="width: 40%">
            <asp:Label ID="lblCamount" runat="server" Text="Cart Amount">
            </asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcamount" runat="server" OnTextChanged="txtcamount_TextChanged"
                Width="225px" Enabled="False" EnableTheming="True"></asp:TextBox>
        </td>
    </tr>
    <tr style="width: 100%">
        <td align="center" style="width: 40%">
            <asp:Label ID="lbltamount" runat="server" Text="Tax Amount(8.5)">
            </asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txttamount" runat="server" Width="225px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr style="width: 100%">
        <td align="center" style="width: 40%">
            <asp:Label ID="lblsamount" runat="server" Text="Shipping Amount">
            </asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtsamount" runat="server" Width="223px" Text="$10" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr style="width: 100%">
        <td align="center" style="width: 40%; height: 26px;">
            <asp:Label ID="lblnamount" runat="server" Text="Net Payable Amount">
            </asp:Label>
        </td>
        <td style="height: 26px">
            <asp:TextBox ID="txtnamount" runat="server" Width="225px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblenter" runat="server" Text="Accepted Cards: Visa,MasterCard,American Express">
            </asp:Label>
        </td>
        <td>
            <asp:Image ID="icard" runat="server" ImageUrl="~/Browse/Images/PayCards.gif" />
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblcdetails" runat="server" Text="Enter card details" Font-Size="Larger">
            </asp:Label>
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr style="width: 100%">
        <td style="width: 40%" align="center">
            <asp:Label ID="lblcnumber" runat="server" Text="Card Number" Font-Size="Small">
            </asp:Label>
        </td>
        <td>
            &nbsp;
            <asp:TextBox ID="txtCardno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                ControlToValidate="txtCardno" ToolTip="Must enter Card number">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revcno" runat="server" ControlToValidate="txtCardno"
                ToolTip="Must enter card number" Text="*" ErrorMessage="Must enter card number"
                ValidationExpression="\d{4}-\d{4}-\d{4}-\d{4}"></asp:RegularExpressionValidator>
        </td>
        <td>
            *Enter in format (1111-1111-1111-1111)
        </td>
    </tr>
    <tr>
    </tr>
    <tr style="width: 100%">
        <td style="width: 40%; height: 59px;" align="center">
            <asp:Label ID="lblccode" runat="server" Font-Size="Small" Text="Card Code">
            </asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcode" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revCode" runat="server" ControlToValidate="txtcode"
                ToolTip="Must enter 3-4 digit card code" Text="*" ErrorMessage="Must enter 3-4 digit card code"
                ValidationExpression="\d{3,4}"></asp:RegularExpressionValidator>
        </td>
        <td style="height: 59px">
            *(Valid CVV2,CVC2 or CID value,3 or 4 digit number on back of credit card for American
            Express)
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr style="width: 100%">
        <td style="width: 40%" align="center">
            <asp:Label ID="lblexpiry" runat="server" Text="Expiry Date">
            </asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlMonth" runat="server" ToolTip="EnterMonth">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvMonth" runat="server" ControlToValidate="ddlMonth"
                ErrorMessage="RequiredFieldValidator" ToolTip="Select Month">*</asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlyear" runat="server" ToolTip="EnterYear">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlyear"
                ErrorMessage="RequiredFieldValidator" ToolTip="Select Year">*</asp:RequiredFieldValidator>
            &nbsp; mm/yyyy</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnpay" runat="server" Text="PAY NOW" OnClick="btnpay_Click" CausesValidation="True" />
            
        </td>
    </tr>
</table>

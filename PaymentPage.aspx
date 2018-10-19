<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentPage.aspx.cs" Inherits="PaymentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 478px;
        }

        .auto-style2 {
            width: 443px;
        }

        .auto-style3 {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Heading-->
    <br />
    <br />
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title">&nbsp; Payment Details</h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="Medium" Text="Total Amount:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lblAmt" runat="server" Font-Names="Tahoma" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="Medium" Text="Cardholder Name:"></asp:Label>
            </td>
            <td class="auto-style2">
                <br />
                <asp:TextBox ID="tbxCardholderName" runat="server" Height="43px" Width="409px" placeholder="Name"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxCardholderName" ErrorMessage="Required!" Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="tbxCardholderName" Display="Dynamic" ErrorMessage="Please enter valid name!" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Tahoma" Font-Size="Medium" Text="Type:"></asp:Label>
            </td>
            <td class="auto-style2">
                <br />
                <asp:RadioButton ID="rBtnVisa" runat="server" Font-Names="Tahoma" Font-Size="Small" GroupName="Card" Width="21px" Checked="True" />
                <asp:Image ID="ImgVisa" runat="server" Height="24px" ImageUrl="../images/visa.jpg" Width="39px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rBtnMaster" runat="server" Font-Names="Tahoma" Font-Size="Small" GroupName="Card" Width="21px" />
                <asp:Image ID="ImgMaster" runat="server" Height="24px" ImageUrl="../images/master.jpg" Width="39px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rBtnAmExpress" runat="server" Font-Names="Tahoma" Font-Size="Small" GroupName="Card" Width="21px" />
                <asp:Image ID="ImgMaster0" runat="server" Height="24px" ImageUrl="../images/amExpress.jpg" Width="39px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
            </td>
            <td class="auto-style6">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="Medium" Text="Card number:"></asp:Label>
            </td>
            <td class="auto-style2">
                <br />
                <asp:TextBox ID="tbxCardNumber" runat="server" Height="43px" Width="409px" placeholder=" 16 Digit number"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbxCardNumber" Display="Dynamic" ErrorMessage="Required!" Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxCardNumber" ErrorMessage="Invalid Card!" Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" ValidationExpression="^\d{16}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="Medium" Text="Security Code:"></asp:Label>
            </td>
            <td class="auto-style2">
                <br />
                <asp:TextBox ID="tbxCvv" runat="server" type="password" Height="43px" Width="201px" placeholder=" CVV code"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbxCvv" Display="Dynamic" ErrorMessage="Required!" Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbxCvv" ErrorMessage="Invalid Code!" Font-Names="Tahoma" Font-Size="Small" ForeColor="Red" ValidationExpression="^\d{3}$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label5" runat="server" Font-Names="Tahoma" Font-Size="Medium" Text="Expiration Date:"></asp:Label>
            </td>
            <td class="auto-style2">
                <br />
                <asp:DropDownList ID="ddlMonth" runat="server" Height="43px" Width="108px">
                </asp:DropDownList>
                &nbsp;&nbsp;
                    <asp:DropDownList ID="ddlYear" runat="server" Height="43px" Width="108px">
                    </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlMonth" Display="Dynamic" ErrorMessage="Required!" Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" ForeColor="#FF3300" InitialValue="Month"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlYear" Display="Dynamic" ErrorMessage="Required!" Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" ForeColor="#FF3300" InitialValue="Year"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
            </td>
            <td class="auto-style2">&nbsp;<br />
                <asp:Button ID="btnConfirm" runat="server" BackColor="#009688" Font-Bold="True" ForeColor="White" Height="43px" Text="Confirm" Width="208px" Font-Names="Tahoma" Font-Size="Small" OnClick="btnConfirm_Click" />
                <asp:LinkButton ID="btnPrint" runat="server" OnClick="btnPrint_Click">Print Receipt</asp:LinkButton>
                <br />
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
            </td>
            <td class="auto-style2">
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
            </td>
            <td class="auto-style2">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
            </td>
            <td class="auto-style2">
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
            </td>
            <td class="auto-style2">
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <br />
            </td>
            <td class="auto-style2">
                <br />
            </td>
            <td class="auto-style6">
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
    </div>

</asp:Content>


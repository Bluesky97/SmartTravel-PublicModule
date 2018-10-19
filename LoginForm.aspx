<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            background-image: url('images/travel.jpeg');
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 200px">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><strong>Sign in </strong></h3>
                </div>
                <div class="panel-body">
                    <form role="form">
                        <div class="form-group">
                            <label for="exampleInputCustOrg">Who are you?</label>
                            <asp:DropDownList ID="ddlCustOrg" runat="server" class="form-control" Style="border-radius: 0px" AutoPostBack="True" OnSelectedIndexChanged="ddlCustOrg_SelectedIndexChanged">
                                <asp:ListItem Text="Customer" Value="0" />
                                <asp:ListItem Text="Attraction Owner" Value="1" />
                                <asp:ListItem Text="Hotel Owner" Value="2" />
                                <asp:ListItem Text="Restaurant Owner" Value="3" />
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <asp:TextBox ID="tbxEmail" runat="server" type="email" class="form-control" Style="border-radius: 0px" placeholder="Enter email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="tbxEmail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password <a href="ForgotPasswordPage.aspx">(forgot password)</a></label>
                            <asp:TextBox ID="tbxPassword" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbxPassword" ErrorMessage="Password cannot be blank"></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="btnLogin" ForeColor="White" BackColor="#009688" runat="server" Text="Sign in" class="btn btn-sm btn-default" OnClick="btnLogin_Click" />
                    </form>
                    <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    Don&#39;t have an account yet?
                    <br />
                    <asp:LinkButton ID="btnRegister" runat="server" CausesValidation="False" OnClick="btnRegister_Click">Register</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


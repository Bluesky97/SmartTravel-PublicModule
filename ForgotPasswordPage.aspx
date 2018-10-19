<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPasswordPage.aspx.cs" Inherits="ForgotPasswordPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .form-gap {
            padding-top: 70px;
        }
    </style>
    <style>
        body {
            background-image: url('images/travel.jpeg');
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
    <link href="style/bootstrap.min.css" rel="stylesheet" />
    <script src="script/bootstrap.js"></script>
    <script src="script/jquery-3.1.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <div class="form-gap"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <h3><i class="fa fa-lock fa-4x"></i></h3>
                            <h2 class="text-center">Forgot Password?</h2>
                            <p>You can reset your password here.</p>
                            <div class="form-group">
                                <label for="exampleInputCustOrg">Who are you?</label>
                                <asp:DropDownList ID="ddlCustOrg" runat="server" class="form-control" Style="border-radius: 0px" AutoPostBack="True">
                                    <asp:ListItem Text="Customer" Value="0" />
                                    <asp:ListItem Text="Attraction Owner" Value="1" />
                                    <asp:ListItem Text="Hotel Owner" Value="2" />
                                    <asp:ListItem Text="Restaurant Owner" Value="3" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvAccType" runat="server" ErrorMessage="*Select Account Type" ControlToValidate="ddlCustOrg" ForeColor="Red" InitialValue="Who Are You?"></asp:RequiredFieldValidator>
                            </div>
                            <div class="panel-body">

                                <form id="register-form" role="form" autocomplete="off" class="form" method="post">

                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                            <asp:TextBox ID="tbxEmail" runat="server" name="email" placeholder="email address" class="form-control" type="email"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" ForeColor="White" BackColor="#009688" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit" OnClick="btnSubmit_Click" />
                                        <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="tbxEmail"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmail" ErrorMessage="Email is not valid" ValidationExpression="^\w+@\w+.\w{2,}$"></asp:RegularExpressionValidator>
                                    </div>
                                    <input type="hidden" class="hide" name="token" id="token" value="">
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


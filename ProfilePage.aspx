<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProfilePage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #box {
            background-color: orange;
            width: auto;
            height: auto;
            padding: 25px;
            margin-top: -35px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" id="box">
        <div class="row">
            <asp:Button ID="btnShowTicket" ForeColor="White" BackColor="#009688" runat="server" Text="Manage Tickets" OnClick="btnShowTicket_Click" />
            <asp:Button ID="btnShowRoom" ForeColor="White" BackColor="#009688" runat="server" Text="Manage Rooms" OnClick="btnShowRoom_Click" />
            <asp:Button ID="btnShowMenu" ForeColor="White" BackColor="#009688" runat="server" Text="Manage Menu Items" OnClick="btnShowMenu_Click" />
            <asp:Button ID="btnManageDividend" ForeColor="White" BackColor="#009688" runat="server" Text="Manage Booking" OnClick="btnManageDividend_Click" />
            <asp:Button ID="btnCheckDividend" ForeColor="White" BackColor="#009688" runat="server" Text="Manage Dividend" OnClick="btnCheckDividend_Click" />
        </div>
    </div>
    <div class="container" id="profile" style="padding-top: 0px;">
        <h1 class="page-header">User Profile</h1>
        <div class="row">
            <!-- left column -->
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="text-center">
                    <div class="avatar img-circle img-thumbnail">
                        <asp:Image ID="imgProfile" runat="server" Height="200px" Width="300px"/>
                    </div>
                    <h6>Upload a different photo...</h6>
                    <div class="text-center center-block well well-sm">
                        <asp:FileUpload ID="FileUpload1" runat="server" ImageUrl="../images/" />
                    </div>
                </div>
            </div>
            <!-- edit form column -->
            <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
                <div class="alert alert-info alert-dismissable">
                    <a class="panel-close close" data-dismiss="alert">×</a>
                    <i class="fa fa-coffee"></i>
                    This is an <strong>.alert</strong>. Use this to show important messages to the user.
     
                </div>
                <h3>Personal info</h3>
                <form class="form-horizontal" role="form">
                    <asp:Panel ID="pnlCustomer" runat="server">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">First name:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxName" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Gender:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxGender" runat="server" class="form-control" placeholder="Enter Gender M/F"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Date of Birth:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxDOB" runat="server" class="form-control" placeholder="Enter Date of Birth"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Address:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxAddress" runat="server" class="form-control" placeholder="Enter Address"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Postal Code:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxPostalCode" runat="server" class="form-control" placeholder="Enter Postal Code"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Personal ID:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxPID" runat="server" class="form-control" placeholder="Enter Personal ID"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Nationality:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxNationality" runat="server" class="form-control" placeholder="Enter Nationality"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Phone Number:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxPhone" runat="server" class="form-control" placeholder="Enter Phone Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxEmail" runat="server" type="email" class="form-control" placeholder="Enter email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Password:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxPassword" runat="server" class="form-control" type="password" placeholder="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Confirm password:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCpass" runat="server" class="form-control" type="password" placeholder="Confirm Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbxPassword" ControlToValidate="tbxCpass" ErrorMessage="Password must be same"></asp:CompareValidator>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnlOrg" runat="server">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Company name:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCName" runat="server" class="form-control" placeholder="Enter Company Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Address:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCAddress" runat="server" class="form-control" placeholder="Enter Address"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Postal Code:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCPostalCode" runat="server" class="form-control" placeholder="Enter Postal Code"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">City:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCCity" runat="server" class="form-control" placeholder="Enter City"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Country:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCCountry" runat="server" class="form-control" placeholder="Enter Country"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Registration ID:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxRID" runat="server" class="form-control" placeholder="Enter Registration ID"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Description:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxDesc" runat="server" class="form-control" Style="height: 200px" placeholder="Enter Description" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-3 control-label">
                                <asp:Label ID="lblOHour" runat="server" Font-Bold="true" Text="Opening Hours:"></asp:Label>
                            </div>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxOHour" runat="server" class="form-control" placeholder="Enter Opening Hours"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Phone Number:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCPhone" runat="server" class="form-control" placeholder="Enter Phone Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-3 control-label">
                                <asp:Label ID="lblLicense" runat="server" Font-Bold="true" Text="License Number:"></asp:Label>
                            </div>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxLicenseNo" runat="server" class="form-control" placeholder="Enter License Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCEmail" runat="server" type="email" class="form-control" placeholder="Enter email"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbxCEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Password:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCPassword" runat="server" class="form-control" type="password" placeholder="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Confirm password:</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="tbxCCpass" runat="server" class="form-control" type="password" placeholder="Confirm Password"></asp:TextBox>
                                <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="tbxCPassword" ControlToValidate="tbxCCpass" ErrorMessage="Password must be same"></asp:CompareValidator>
                            </div>
                        </div>
                    </asp:Panel>
                    <div class="form-group">
                        <div class="col-lg-3 control-label">
                            <asp:Label ID="lblOutput" runat="server" class="col-md-3 control-label" Text=""></asp:Label>
                        </div>
                        <div class="col-lg-8">
                            <asp:Button ID="btnUpdate" ForeColor="White" BackColor="#009688" runat="server" Text="Update" class="btn btn-sm btn-default" OnClick="btnUpdate_Click" />
                            <span></span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>


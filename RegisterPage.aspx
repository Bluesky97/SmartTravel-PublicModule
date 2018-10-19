<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterPage.aspx.cs" Inherits="RegisterPage" %>

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
                    <h3 class="panel-title"><strong>Register</strong></h3>
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
                        <asp:Panel ID="pnlCustomer" Style="margin-top: 0px" runat="server">
                            <div class="form-group">
                                <asp:Label ID="lblName" runat="server" Text="Name" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxName" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="tbxName"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblGender" runat="server" Text="Gender" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxGender" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Gender Male/Female"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Gender cannot be blank" ControlToValidate="tbxGender"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxDOB" runat="server" class="form-control" TextMode="Date" Style="border-radius: 0px" placeholder="Enter Date of Birth"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date of Birth cannot be blank" ControlToValidate="tbxDOB"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblAddress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxAddress" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="tbxAddress"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPostalCode">Postal Code</label>
                                <asp:TextBox ID="tbxPostalCode" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Postal Code"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Postal Code cannot be blank" ControlToValidate="tbxPostalCode"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblPersonalID" runat="server" Text="Personal ID (Passport No or NRIC)" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxPID" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Personal ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Personal ID cannot be blank" ControlToValidate="tbxPID"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblNationality" runat="server" Text="Nationality" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxNationality" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Nationality"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Nationality cannot be blank" ControlToValidate="tbxNationality"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhone">Phone Number</label>
                                <asp:TextBox ID="tbxPhone" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Phone Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Phone Number cannot be blank" ControlToValidate="tbxPhone"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <asp:TextBox ID="tbxEmail" runat="server" type="email" class="form-control" Style="border-radius: 0px" placeholder="Enter email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="tbxEmail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password </label>
                                <asp:TextBox ID="tbxPassword" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbxPassword" ErrorMessage="Password cannot be blank"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCPassword1">Confirm Password </label>
                                <asp:TextBox ID="tbxCpass" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Confirm Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tbxCpass" ErrorMessage="Confirm Password cannot be blank"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbxPassword" ControlToValidate="tbxCpass" ErrorMessage="Password must be same"></asp:CompareValidator>
                            </div>
                            <asp:Button ID="btnRegister" ForeColor="White" BackColor="#009688" runat="server" Text="Register" class="btn btn-sm btn-default" OnClick="btnRegister_Click" />
                        </asp:Panel>

                        <asp:Panel ID="pnlAttraction" Style="margin-top: 0px" runat="server">
                            <div class="form-group">
                                <asp:Label ID="lblARegID" runat="server" Text="Registration ID" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxARegID" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Registration ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Registration ID cannot be blank" ControlToValidate="tbxARegID"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblAName" runat="server" Text="Company Name" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxAName" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAName" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="tbxAName"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblAddressA" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxAddressA" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddressA" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="tbxAddressA"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPostalCode">Postal Code</label>
                                <asp:TextBox ID="tbxAPostalCode" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Postal Code"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPCA" runat="server" ErrorMessage="Postal Code cannot be blank" ControlToValidate="tbxAPostalCode"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblACity" runat="server" Text="City" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxACity" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter City"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCA" runat="server" ErrorMessage="City cannot be blank" ControlToValidate="tbxACity"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblACountry" runat="server" Text="Country" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxACountry" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Country"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCOA" runat="server" ErrorMessage="Country cannot be blank" ControlToValidate="tbxACountry"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhone">Phone Number</label>
                                <asp:TextBox ID="tbxAPhone" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Phone Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPA" runat="server" ErrorMessage="Phone Number cannot be blank" ControlToValidate="tbxAPhone"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblAHour" runat="server" Text="Opening Hours" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxAHour" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Opening Hours"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvOHA" runat="server" ErrorMessage="Opening Hours cannot be blank" ControlToValidate="tbxAHour"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <asp:TextBox ID="tbxAEmail" runat="server" type="email" class="form-control" Style="border-radius: 0px" placeholder="Enter email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEA" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="tbxAEmail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEA" runat="server" ControlToValidate="tbxAEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password </label>
                                <asp:TextBox ID="tbxAPassword" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPWA" runat="server" ControlToValidate="tbxAPassword" ErrorMessage="Password cannot be blank"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCPassword1">Confirm Password </label>
                                <asp:TextBox ID="tbxACpass" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Confirm Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvACP" runat="server" ControlToValidate="tbxACpass" ErrorMessage="Confirm Password cannot be blank"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvACP" runat="server" ControlToCompare="tbxAPassword" ControlToValidate="tbxACpass" ErrorMessage="Password must be same"></asp:CompareValidator>
                            </div>
                            <div class="form-group">
                                <label for="examplePhoto">Photo</label>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Required!" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>
                            </div>
                            <asp:Button ID="btnARegister" ForeColor="White" BackColor="#009688" runat="server" Text="Register" class="btn btn-sm btn-default" OnClick="btnARegister_Click" />
                        </asp:Panel>

                        <asp:Panel ID="pnlHotel" Style="margin-top: 0px" runat="server">
                            <div class="form-group">
                                <asp:Label ID="lblHRegID" runat="server" Text="Registration ID" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxHRegID" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Registration ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvHRegID" runat="server" ErrorMessage="Registration ID cannot be blank" ControlToValidate="tbxHRegID"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblHName" runat="server" Text="Company Name" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxHName" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvHName" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="tbxHName"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblHAddress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxHAddress" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvHAddress" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="tbxHAddress"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPostalCode">Postal Code</label>
                                <asp:TextBox ID="tbxHPostalCode" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Postal Code"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPCH" runat="server" ErrorMessage="Postal Code cannot be blank" ControlToValidate="tbxHPostalCode"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblHCity" runat="server" Text="City" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxHCity" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter City"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCH" runat="server" ErrorMessage="City cannot be blank" ControlToValidate="tbxHCity"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblHCountry" runat="server" Text="Country" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxHCountry" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Country"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCOH" runat="server" ErrorMessage="Country cannot be blank" ControlToValidate="tbxHCountry"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhone">Phone Number</label>
                                <asp:TextBox ID="tbxHPhone" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Phone Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPH" runat="server" ErrorMessage="Phone Number cannot be blank" ControlToValidate="tbxHPhone"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <asp:TextBox ID="tbxHEmail" runat="server" type="email" class="form-control" Style="border-radius: 0px" placeholder="Enter email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEH" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="tbxHEmail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEH" runat="server" ControlToValidate="tbxHEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password </label>
                                <asp:TextBox ID="tbxHPassword" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPWH" runat="server" ControlToValidate="tbxHPassword" ErrorMessage="Password cannot be blank"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCPassword1">Confirm Password </label>
                                <asp:TextBox ID="tbxHCpass" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Confirm Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvHCP" runat="server" ControlToValidate="tbxHCpass" ErrorMessage="Confirm Password cannot be blank"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvHCP" runat="server" ControlToCompare="tbxHPassword" ControlToValidate="tbxHCpass" ErrorMessage="Password must be same"></asp:CompareValidator>
                            </div>
                            <div class="form-group">
                                <label for="examplePhoto">Photo</label>
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Required!" ControlToValidate="FileUpload3"></asp:RequiredFieldValidator>
                            </div>
                            <asp:Button ID="btnHRegister" ForeColor="White" BackColor="#009688" runat="server" Text="Register" class="btn btn-sm btn-default" OnClick="btnHRegister_Click" />
                        </asp:Panel>

                        <asp:Panel ID="pnlRestaurant" Style="margin-top: 0px" runat="server">
                            <div class="form-group">
                                <asp:Label ID="lblRRegID" runat="server" Text="Registration ID" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxRRegID" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Registration ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRRegID" runat="server" ErrorMessage="Registration ID cannot be blank" ControlToValidate="tbxRRegID"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRName" runat="server" Text="Company Name" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxRName" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRName" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="tbxRName"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRAddress" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxRAddress" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRAddress" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="tbxRAddress"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPostalCode">Postal Code</label>
                                <asp:TextBox ID="tbxRPostalCode" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Postal Code"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPCR" runat="server" ErrorMessage="Postal Code cannot be blank" ControlToValidate="tbxRPostalCode"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRCity" runat="server" Text="City" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxRCity" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter City"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCR" runat="server" ErrorMessage="City cannot be blank" ControlToValidate="tbxRCity"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRCountry" runat="server" Text="Country" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxRCountry" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Country"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCOR" runat="server" ErrorMessage="Country cannot be blank" ControlToValidate="tbxRCountry"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPhone">Phone Number</label>
                                <asp:TextBox ID="tbxRPhone" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Phone Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPR" runat="server" ErrorMessage="Phone Number cannot be blank" ControlToValidate="tbxRPhone"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRHour" runat="server" Text="Opening Hours" Font-Bold="true"></asp:Label>
                                <asp:TextBox ID="tbxRHour" runat="server" class="form-control" Style="border-radius: 0px" placeholder="Enter Opening Hours"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvOHR" runat="server" ErrorMessage="Opening Hours cannot be blank" ControlToValidate="tbxRHour"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email</label>
                                <asp:TextBox ID="tbxREmail" runat="server" type="email" class="form-control" Style="border-radius: 0px" placeholder="Enter email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvER" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="tbxREmail"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revER" runat="server" ControlToValidate="tbxREmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password </label>
                                <asp:TextBox ID="tbxRPassword" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvPWR" runat="server" ControlToValidate="tbxRPassword" ErrorMessage="Password cannot be blank"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCPassword1">Confirm Password </label>
                                <asp:TextBox ID="tbxRCpass" runat="server" class="form-control" Style="border-radius: 0px" type="password" placeholder="Confirm Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvRCP" runat="server" ControlToValidate="tbxRCpass" ErrorMessage="Confirm Password cannot be blank"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvRCP" runat="server" ControlToCompare="tbxRPassword" ControlToValidate="tbxRCpass" ErrorMessage="Password must be same"></asp:CompareValidator>
                            </div>
                            <div class="form-group">
                                <label for="examplePhoto">Photo</label>
                                <asp:FileUpload ID="FileUpload4" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Required!" ControlToValidate="FileUpload4"></asp:RequiredFieldValidator>
                            </div>
                            <asp:Button ID="btnRRegister" ForeColor="White" BackColor="#009688" runat="server" Text="Register" class="btn btn-sm btn-default" OnClick="btnRRegister_Click" />
                        </asp:Panel>
                    </form>

                    <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

                </div>
            </div>
        </div>
    </div>



</asp:Content>


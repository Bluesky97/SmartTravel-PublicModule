<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GetRoom.aspx.cs" Inherits="GetRoom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 359px;
        }

        .auto-style2 {
            height: 20px;
            width: 660px;
        }

        .auto-style3 {
            width: 907px;
            height: 20px;
        }

        .auto-style5 {
            height: 20px;
            width: 1056px;
        }

        .auto-style6 {
            width: 660px;
        }

        .auto-style7 {
            width: 1056px;
        }

        .auto-style8 {
            width: 326px
        }
        .auto-style9 {
            width: 948px;
            height: 20px;
        }
        .auto-style10 {
            width: 1395px;
        }
        .auto1 {
            vertical-align: top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 style="text-align:center">Hotel Rooms</h2>
    <table class="nav-justified" >
        <tr>
            <td class="auto-style8" >
                <asp:Label ID="Label1" runat="server" Text="Check-In"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="tbxCheckIn" TextMode="Date" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Check-In Date cannot be blank!" ControlToValidate="tbxCheckIn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="Check-Out"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="tbxCheckOut" TextMode="Date" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbxCheckOut" ErrorMessage="*Check-Out Date cannot be blank!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Number of Room"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="tbxNoRoom" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbxNoRoom" ErrorMessage="*Number of Room cannot be blank!"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <table class="col-xxs-12">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblNoRoom" runat="server" Font-Size="X-Large" ForeColor="Red" Text="No Room for this accommodation"></asp:Label>

            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:ListView ID="lvRoom" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" OnPagePropertiesChanging="lvRoom_PagePropertiesChanging" OnSelectedIndexChanging="lvRoom_SelectedIndexChanging" OnItemCommand="lvRoom_ItemCommand">
                    <LayoutTemplate>
                        <table>
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        </table>
                    </LayoutTemplate>

                    <GroupTemplate>
                        <tr>
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td class="auto1">
                            <table class="auto-style1">
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="315px" ImageUrl='<%# "../images/"+Eval("Pictures") %>' Width="337px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp; Name:</td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("RoomName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp; Type:</td>
                                    <td>
                                        <asp:Label ID="lblType" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">&nbsp;&nbsp;&nbsp; Capacity:</td>
                                    <td class="auto-style2">
                                        <asp:Label ID="lblCapcaity" runat="server" Text='<%# Eval("Capacity") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp; Services:</td>
                                    <td>
                                        <asp:Label ID="lblServices" runat="server" Text='<%# Eval("Services") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp; Price:</td>
                                    <td>
                                        <asp:Label ID="lblPrice" runat="server" Text='<%# String.Format("{0:C}" ,Eval("price")) %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btnRoomBook" runat="server" BackColor="#009688" Height="42px" Text="Request To Book" Width="338px" CommandName="RoomBook" CommandArgument='<%# Eval("RoomID") %>' Font-Bold="False" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" />
                                    </td>
                                </tr>
                            </table>
                            <br />


                        </td>
                    </ItemTemplate>
                </asp:ListView>

            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style5">
                <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style5">
                <table class="col-xxs-12">
                    <tr>
                        <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style9">
                            <br />
                            <br />
                            <asp:DataPager ID="DPRoom" runat="server" PagedControlID="lvRoom" PageSize="6">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>


                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style3"></td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <footer class="tm-black-bg">
        <div class="container">
            <div class="row">
                <p class="tm-copyright-text">
                    Copyright &copy; 2018 SmartTravel
                
                | Designed by <a rel="nofollow" href="AboutUs.aspx" target="_parent">SmartTravel Team</a>
                </p>
            </div>
        </div>
    </footer>
</asp:Content>


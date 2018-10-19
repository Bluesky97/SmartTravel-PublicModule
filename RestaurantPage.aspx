<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RestaurantPage.aspx.cs" Inherits="RestaurantPage" %>

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
        .jumbotron{
            margin-top:-35px;
        }
         .auto0 {
            vertical-align: top;
            padding-bottom:20px;
        }
         .auto1{
            /*width: 400px;
            height: 40px;*/
            vertical-align: top;
        }
          .auto-style9 {
            width: 150px;
            height: 46px;
            vertical-align: top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron" id="header" style="height: 100px">
        <div class="container text-center">
            <asp:Label ID="Label1" runat="server" Text="Restaurant in " Font-Bold="true" Font-Size="Large"></asp:Label>
            <asp:Label ID="lblCountry" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
        </div>
    </div>
    <br />
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title">Restaurant Details</h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />
    <br />
    <br />
    <table class="col-xxs-12">

        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">

                <asp:Label ID="lblNoRestaurant" runat="server" Font-Size="X-Large" ForeColor="Red" Text="No Restaurant Available Currently"></asp:Label>

            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:ListView ID="lvRestaurant" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" OnPagePropertiesChanging="lvRestaurant_PagePropertiesChanging" OnSelectedIndexChanging="lvRestaurant_SelectedIndexChanging" OnItemCommand="lvRestaurant_ItemCommand">
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
                        <td class="auto0">
                            <table class="auto-style1">
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="315px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="337px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Name:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Address:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Postal Code:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblPCode" runat="server" Text='<%# Eval("PostalCode") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; City:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Country:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Description:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Contact No:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblContact" runat="server" Text='<%# Eval("contactNo") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Opening Hours:</td>
                                    <td class="auto1">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("openingHours") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp; Average Rating:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblRating" runat="server" Text='<%# Eval("starRating","{0:F2}") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" ForeColor="#009688" runat="server" CommandName="Restaurant" Font-Bold="True" CommandArgument='<%# Eval("RestaurantID") %>'>View Menu Items</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" ForeColor="#009688" runat="server" CommandName="Review" Font-Bold="True" CommandArgument='<%# Eval("RestaurantID") %>'>View Reviews and Ratings</asp:LinkButton>
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
                <table class="col-xxs-12">
                    <tr>
                        <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style3">
                            <br />
                            <br />
                            <asp:DataPager ID="DPRestaurant" runat="server" PagedControlID="lvRestaurant" PageSize="6">
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
</asp:Content>


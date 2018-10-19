<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HotelPage.aspx.cs" Inherits="HotelPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 364px;
        }

        .auto-style2 {
            width: 281px;
        }
        .auto-style3 {
            width: 504px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            width: 281px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
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
            <asp:Label ID="Label1" runat="server" Text="Hotel in " Font-Bold="true" Font-Size="Large"></asp:Label>
            <asp:Label ID="lblCountry" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
        </div>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />
    <br />
    <table class="nav-justified">

        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>

                <asp:Label ID="lblNoAcm" runat="server" Font-Size="X-Large" ForeColor="Red" Text="No Accommodation Available Currently or Destination City is Spelled Wrongly"></asp:Label>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>

                <asp:ListView ID="lvHotel"  runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" OnItemCommand="lvHotel_ItemCommand" OnPagePropertiesChanging="lvHotel_PagePropertiesChanging" OnSelectedIndexChanging="lvHotel_SelectedIndexChanging">
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
                                 <td colspan="2">
                                     &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="315px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="337px" />
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style9">&nbsp;&nbsp; Name:</td>
                                 <td class="auto1">
                                     <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'  ></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style9">&nbsp;&nbsp; Avg. Rating:</td>
                                 <td class="auto1">
                                     <asp:Label ID="lblRating" runat="server" Text='<%# Eval("StarRating","{0:F2}") %>' ></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style9">&nbsp;&nbsp; Address:</td>
                                 <td class="auto1">
                                     <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address")+", "+Eval("PostalCode")+", "+Eval("City")+",  "+Eval("Country") %>' ></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                     &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" ForeColor="#009688" runat="server" CommandName="Room" Font-Bold="True" CommandArgument='<%# Eval("HotelID") %>'>Select Rooms</asp:LinkButton>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                      &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" ForeColor="#009688" runat="server" CommandName="Review" Font-Bold="True" CommandArgument='<%# Eval("HotelID") %>'>View Reviews and Ratings</asp:LinkButton>
                                 </td>
                             </tr>
                         </table>
                            <br />
                            </td>
                    </ItemTemplate>
                </asp:ListView>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <table class="col-xxs-12">
                    <tr>
                        <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style3">
                            <br /><br />
                 <asp:DataPager ID="DPAccommodation" runat="server" PagedControlID="lvHotel" PageSize="6" >
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
                
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
      <br />
    <br /> <br />
    <br /> <br />
    <br /> <br />
    <br /> <br />
    <br /> <br />
    <br />

</asp:Content>


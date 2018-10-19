<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AttractionPage.aspx.cs" Inherits="AttractionPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            margin-top:0px;
             
        }

        .auto-style2 {
            height: 20px;
            width: 666px;
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
            width: 666px;
        }

        .auto-style7 {
            width: 1056px;
        }
        #header{
            margin-top:-35px;
        }
      
        
        .auto-style8 {
            width: 666px;
            height: 39px;
        }
        .auto-style9 {
            width: 150px;
            height: 46px;
            vertical-align: top;
        }
        .auto-style10 {
            width: 350px;
            margin-top: 0px;
            height: 39px;
        }
        .auto-style11 {
            width: 1056px;
            height: 39px;
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
        .auto-style12 {
            width: 368px;
        }
        .auto-style13 {
            width: 729px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <div class="jumbotron" id="header" style="height: 100px">
        <div class="container text-center">
            <asp:Label ID="Label1" runat="server" Text="Attraction in " Font-Bold="true" Font-Size="Large"></asp:Label>
            <asp:Label ID="lblCountry" runat="server" Text="" Font-Bold="True" Font-Size="Large"></asp:Label>
        </div>
    </div>
    <br />
    
    <table class="col-xxs-12">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style11">

                <asp:Label ID="lblNoAttraction" runat="server" Font-Size="X-Large" ForeColor="Red" Text="No Attraction Available Currently in This Country"></asp:Label>

            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                <asp:ListView ID="lvAttraction" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" OnPagePropertiesChanging="lvAttraction_PagePropertiesChanging" OnSelectedIndexChanging="lvAttraction_SelectedIndexChanging" OnItemCommand="lvAttraction_ItemCommand1">
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
                                    <td colspan="2">&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="315px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="337px"/>
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
                                    <td class="auto-style9">&nbsp;&nbsp; Average Rating:</td>
                                    <td class="auto1">
                                        <asp:Label ID="lblRating" runat="server" Text='<%# Eval("starRating","{0:F2}") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#009688" CommandName="Attraction" Font-Bold="True" CommandArgument='<%# Eval("AttractionID") %>'>View Attraction and Ticket Info.</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#009688" CommandName="Review" Font-Bold="True" CommandArgument='<%# Eval("AttractionID") %>'>View Reviews and Ratings</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                            
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
                        <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style13">
                            <br />
                            <br />
                            <asp:DataPager ID="DPAttraction" runat="server" PagedControlID="lvAttraction" PageSize="6">
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
</asp:Content>

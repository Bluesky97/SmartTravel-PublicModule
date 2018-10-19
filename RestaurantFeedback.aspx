<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RestaurantFeedback.aspx.cs" Inherits="RestaurantFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        .auto-style22 {
                width: 472px;
            }
        
        .auto-style1 {
            width: 364px;
        }

            .auto-style23 {
                width: 32px;
                height: 19px;
            }
            .auto-style24 {
                width: 401px;
            }
            .auto-style26 {
                width: 61px;
            }
            .auto-style27 {
                width: 81px;
            }
            .auto-style35 {
                width: 141px;
            }

            .auto-style37 {
                width: 384px;
            }
            .auto-style40 {
                width: 116px;
            }
            .auto-style41 {
                width: 122px;
            }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title">Reviews & Ratings</h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td>
               <asp:ListView ID="lvRestaurant" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" >
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
            <td>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="315px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="337px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp; Restaurant Name:</td>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp; Address:</td>
                        <td>
                            <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp; City:</td>
                        <td>
                            <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp; Country:</td>
                        <td>
                            <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                        </td>
                    </tr>
         
                    <tr>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp; Avg. Rating:</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("StarRating","{0:F2}") %>'></asp:Label>
                        </td>
                    </tr>
                </table>

                <br />
            </td>
        </ItemTemplate>
    </asp:ListView>
            </td>
            <td>
  
            </td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td>
                
                <asp:Label ID="lblOutput" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td>
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


    <table class="nav-justified">
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td><asp:GridView ID="resReviews" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="nav-justified">
                                    <tr>
                                        <td class="auto-style35">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CustEmail.Name") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style37">
                                            <asp:Label ID="Label2" runat="server" Text='<%# "Rating: "+Eval("Rating") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style41">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35"></td>
                                        <td class="auto-style37"></td>
                                        <td class="auto-style41"></td>
                                        <td class="auto-style27">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35">&nbsp;</td>
                                        <td class="auto-style26" colspan="2">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Feedback") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style26">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style23" colspan="3">
                                        </td>
                                        <td class="auto-style23">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35">
                                            &nbsp;</td>
                                        <td class="auto-style37">&nbsp;</td>
                                        <td class="auto-style41">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Time","{0:t}")+" "+Eval("Date","{0:d}") %>'></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style35">&nbsp;</td>
                                        <td class="auto-style37">&nbsp;</td>
                                        <td class="auto-style41">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
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


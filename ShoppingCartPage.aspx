<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCartPage.aspx.cs" Inherits="ShoppingCartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 484px;
        }

        .auto-style2 {
            width: 120px;
        }

        .auto-style3 {
            width: 249px;
        }

        .auto-style5 {
            width: 131px;
        }

        .auto-style6 {
            width: 131px;
            height: 8px;
        }

        .auto-style8 {
            width: 131px;
            height: 9px;
        }

        .auto-style11 {
            width: 189px;
            height: 8px;
        }

        .auto-style13 {
            width: 189px;
        }

        .auto-style14 {
            width: 189px;
            height: 9px;
        }

        .auto-style18 {
            width: 939px;
        }

        .auto-style19 {
            height: 45px;
        }

        .auto-style20 {
            width: 939px;
            height: 45px;
        }

        .auto-style21 {
            height: 10px;
        }

        .auto-style22 {
            width: 939px;
            height: 10px;
        }

        .auto-style23 {
            height: 11px;
        }

        .auto-style24 {
            width: 939px;
            height: 11px;
        }

        .auto-style25 {
            height: 50px;
        }

        .auto-style26 {
            width: 939px;
            height: 50px;
        }

        .auto-style27 {
            width: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-4 col-md-6 col-sm-6" style="text-align: center">
        <h2 class="tm-section-title">Shopping Cart</h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />
    <br />

    <table class="nav-justified">
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td>

                <asp:Label ID="lblNoItem" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>

            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <asp:Panel ID="pnlAcm" runat="server" Visible="false">
        <table class="col-xxs-12">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" Visible="false" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Hotel Booking"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:GridView ID="gvAccomodation" runat="server" AutoGenerateColumns="False" Width="1075px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvAccomodation_RowCommand">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl='<%# "../images/"+Eval("scRoom.Hotel.Photo") %>' Width="225px" />
                                    <itemstyle font-size="Medium" horizontalalign="Center" />

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Details">
                                <ItemTemplate>
                                    <itemstyle font-size="Medium" horizontalalign="Center" />
                                    <table class="col-xxs-12">
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Hotel Name:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label11" runat="server" Font-Size="Medium" Text='<%# Eval("SCRoom.Hotel.Name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style11"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Room ID:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text='<%# Eval("SCRoom.RoomID") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style11"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Room Type:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text='<%# Eval("RoomType") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style11"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Quantity:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label10" runat="server" Font-Size="Medium" Text='<%# Eval("NoofRoom") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style11"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Check-In Date:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text='<%# Eval("RoomCIDate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Check-Out Date:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text='<%# Eval("RoomCODate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Price:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text='<%# "$"+Eval("RoomTotalAmt") %>' Font-Bold="True"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandArgument='<%# Eval("SCRoom.RoomID") %>' CommandName="Select">Remove</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle Font-Size="Medium" HorizontalAlign="Center" />
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
                    </asp:GridView>

                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlTicket" runat="server" Visible="false">
        <table class="col-xxs-12">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Visible="false" Font-Bold="True" Font-Size="X-Large" Text="Ticket Booking"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:GridView ID="gvTicket" runat="server" AutoGenerateColumns="False" Width="1075px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvTicket_RowCommand">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl='<%# "../images/"+Eval("TICTicket.Attraction.Photo") %>' Width="225px" />
                                    <itemstyle font-size="Medium" horizontalalign="Center" />

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Details">
                                <ItemTemplate>
                                    <itemstyle font-size="Medium" horizontalalign="Center" />
                                    <table class="col-xxs-12">
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Attraction Name:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text='<%# Eval("TICTicket.Attraction.Name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style11"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Date:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text='<%# Eval("TICdate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Ticket Type:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label28" runat="server" Font-Size="Medium" Text='<%# Eval("TICtype") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; No of Guests:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label27" runat="server" Font-Size="Medium" Text='<%# Eval("TICqty") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Price:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text='<%# "$"+Eval("TICtotalAMT") %>' Font-Bold="True"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandArgument='<%# Eval("ticketID") %>' CommandName="Select">Remove</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle Font-Size="Medium" HorizontalAlign="Center" />
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
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlRestaurant" runat="server" Visible="false">
        <table class="col-xxs-12">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Visible="false" Font-Bold="True" Font-Size="X-Large" Text="Restaurant Booking"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
                    <asp:GridView ID="gvRestaurant" runat="server" AutoGenerateColumns="False" Width="1075px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvRestaurant_RowCommand">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl='<%# "../images/"+Eval("RESrestaurant.Photo") %>' Width="225px" />
                                    <itemstyle font-size="Medium" horizontalalign="Center" />

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Details">
                                <ItemTemplate>
                                    <itemstyle font-size="Medium" horizontalalign="Center" />
                                    <table class="col-xxs-12">
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Restaurant Name:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text='<%# Eval("RESrestaurant.Name") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6"></td>
                                            <td class="auto-style11"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Date:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text='<%# Eval("RESdate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; Time:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label28" runat="server" Font-Size="Medium" Text='<%# Eval("REStime") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8"></td>
                                            <td class="auto-style14"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp; No of Guests:</td>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label27" runat="server" Font-Size="Medium" Text='<%# Eval("RESguest") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandArgument='<%# Eval("restaurantID") %>' CommandName="Select">Remove</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle Font-Size="Medium" HorizontalAlign="Center" />
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
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlInfo" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
                <td class="auto-style19">
                    <asp:Label ID="lblTotalAmt" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <asp:Label ID="lblTotalAmt0" runat="server" Font-Size="Large">Coupon Code:</asp:Label>
                    <asp:TextBox ID="tbxDC" runat="server" Height="27px" placeholder="DC1" Width="140px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxDC" ErrorMessage="Required!" Font-Bold="False" Font-Names="Tahoma" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style23">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnApply" runat="server" Height="31px" Text="Apply" Width="142px" BackColor="#009688" Font-Bold="False" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" CausesValidation="False" OnClick="btnApply_Click" /></td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
                <td class="auto-style25">
                    <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Discounted Amount: "></asp:Label>
                    <asp:Label ID="lblDiscountAmt" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Net Amount: "></asp:Label>
                    <asp:Label ID="lblNetAmount" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <asp:Label ID="Label15" runat="server" Font-Size="Large" Text="Tax: "></asp:Label>
                    <asp:Label ID="lblTax" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Font-Size="Large" Text="Booking Charge: "></asp:Label>
                    <asp:Label ID="Label18" runat="server" Font-Size="Large">$7</asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <asp:Label ID="Label19" runat="server" Font-Size="Large" Text="Amt Payable: "></asp:Label>
                    <asp:Label ID="lblAmtPayable" runat="server" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnCheckOut" runat="server" Height="31px" Text="Check Out" Width="142px" BackColor="#009688" Font-Bold="False" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" CausesValidation="False" OnClick="btnCheckOut_Click" /></td>
            </tr>
        </table>
    </asp:Panel>
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


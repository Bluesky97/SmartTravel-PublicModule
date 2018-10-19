<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GetTicket.aspx.cs" Inherits="GetTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }

        .auto-style9 {
            width: 131px;
        }

        .auto-style12 {
            width: 600px;
        }
        

        .auto-style16 {
        }

        .auto-style18 {
            width: 193px;
        }

        .auto-style20 {
            width: 156px;
        }

        .auto-style21 {
            width: 401px;
        }

        .auto-style22 {
            width: 123px;
        }

        .auto-style23 {
            width: 131px;
            height: 11px;
        }

        .auto-style24 {
            height: 11px;
        }

        .auto-style25 {
            width: 123px;
            height: 11px;
        }

        .auto-style26 {
            width: 193px;
            height: 11px;
        }

        .auto-style27 {
            width: 315px;
            height: 11px;
        }

        .auto-style28 {
            width: 867px;
        }

        .auto-style29 {
            width: 1142px;
        }

        .auto-style30 {
            width: 344px;
        }

        .auto-style33 {
        }

        .auto-style34 {
            width: 401px;
            height: 8px;
        }

        .auto-style35 {
            width: 133px;
            height: 8px;
        }

        .auto-style36 {
            width: 227px;
            height: 8px;
        }

        .auto-style37 {
            width: 156px;
            height: 8px;
        }

        .auto-style38 {
            width: 1142px;
            height: 20px;
        }

        .auto-style39 {
            width: 344px;
            height: 20px;
        }

        .auto-style40 {
            width: 867px;
            height: 20px;
        }

        .auto-style41 {
            width: 1142px;
            height: 13px;
        }

        .auto-style42 {
            width: 344px;
            height: 13px;
        }

        .auto-style43 {
            width: 867px;
            height: 13px;
        }

        .auto-style44 {
            width: 133px;
        }
        .auto-style12{
            vertical-align: top;
        }
        .auto-style18{
             width: 150px;
            height: 46px;
            vertical-align: top;
        }
         .auto0 {
            vertical-align: top;
            padding-bottom:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title">Ticket Details</h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <asp:Label ID="lblNoOfTicket" runat="server" Text="No Ticket Available for this Attraction" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
    <br />
    <br />
    <br />
    <table class="col-xxs-12">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style1" colspan="2">
                <asp:ListView ID="lvTicket" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" OnItemCommand="lvTicket_ItemCommand">
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

                                    <td class="auto-style16" colspan="2">
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Ticket Information"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23"></td>
                                    <td class="auto-style24"></td>
                                    <td class="auto-style25"></td>
                                    <td class="auto-style26"></td>
                                    <td class="auto-style27"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">Ticket ID:</td>
                                    <td class="auto-style12">
                                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("ticketID") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Ticket Type:</td>
                                    <td class="auto-style12">
                                        <asp:Label ID="lblType" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Description:</td>
                                    <td class="auto-style12">
                                        <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style18">Price:</td>
                                    <td class="auto-style12">
                                        <asp:Label ID="lblPrice" runat="server" Text='<%# String.Format("{0:C}" ,Eval("price")) %>'></asp:Label>
                                    </td>
                                </tr>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" CommandName="Ticket" ForeColor="#009688" runat="server" CommandArgument='<%# Eval("ticketID") %>'>Select Ticket</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </ItemTemplate>
                </asp:ListView>
            </td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="lblTicket" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <asp:Panel ID="pnlDetail" runat="server">

            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style33" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Your Booking Details"></asp:Label>

                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35"></td>
                <td class="auto-style36"></td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style44">&nbsp;&nbsp;&nbsp; Date:</td>
                <td>
                    <asp:TextBox ID="tbxDate" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="*Date cannot be blank!" ControlToValidate="tbxDate"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style44">&nbsp;&nbsp;&nbsp; No. Of Guests:</td>
                <td>
                    <asp:TextBox ID="tbxNoOfGuests" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*No of Guest cannot be blank!" ControlToValidate="tbxNoOfGuests"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style44">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
        </asp:Panel>
    </table>
    <asp:Panel ID="pnlBook" runat="server">
        <div>

            <table class="col-xxs-12">
                <tr>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style30">
                        <asp:Button ID="btnBook" runat="server" BackColor="#009688" ForeColor="White" Font-Bold="True" Height="43px" Text="Add To Cart" Width="416px" Font-Names="Tahoma" OnClick="btnBook_Click" />
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style41"></td>
                    <td class="auto-style42"></td>
                    <td class="auto-style43"></td>
                </tr>
                <tr>
                    <td class="auto-style38"></td>
                    <td class="auto-style39">
                        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style40"></td>
                </tr>
                <tr>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                </tr>
            </table>
        </div>
    </asp:Panel>

</asp:Content>


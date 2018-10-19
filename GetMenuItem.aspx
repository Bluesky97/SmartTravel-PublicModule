<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GetMenuItem.aspx.cs" Inherits="GetMenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 227px;
            
        }

        .auto-style9 {
            width: 200px;
        }

        .auto-style21 {
            width: 814px;
        }

        .auto-style28 {
            width: 867px;
        }

        .auto-style29 {
            width: 908px;
        }

        .auto-style30 {
            width: 286px;
        }

        .auto-style33 {
        }

        .auto-style34 {
            width: 814px;
            height: 8px;
        }

        .auto-style36 {
            width: 564px;
            height: 8px;
        }

        .auto-style38 {
            width: 908px;
            height: 20px;
        }

        .auto-style39 {
            width: 286px;
            height: 20px;
        }

        .auto-style40 {
            width: 867px;
            height: 20px;
        }

        .auto-style41 {
            width: 908px;
            height: 13px;
        }

        .auto-style42 {
            width: 286px;
            height: 13px;
        }

        .auto-style43 {
            width: 867px;
            height: 13px;
        }

        .auto-style44 {
            width: 192px;
            height: 8px;
        }

        .auto-style45 {
            width: 192px;
        }

        .auto-style46 {
            width: 29px;
        }

        .auto-style47 {
            width: 29px;
            height: 8px;
        }

        .auto-style53 {
            width: 350px;
            height: 8px;
        }

        .auto-style54 {
            width: 350px;
        }

        .auto-style55 {
            width: 564px;
        }

        .auto-style56 {
            width: 814px;
            height: 10px;
        }

        .auto-style57 {
            width: 192px;
            height: 10px;
        }

        .auto-style58 {
            width: 564px;
            height: 10px;
        }

        .auto-style59 {
            width: 29px;
            height: 10px;
        }

        .auto-style60 {
            width: 350px;
            height: 10px;
        }
         .auto0 {
            
            vertical-align: top;
            padding-bottom:20px;
           
            padding-right:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title" style="text-align: center">Menu Item Details</h2>
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
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style1" colspan="2">&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Menu Items"></asp:Label>
            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style54"></td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style1" colspan="2">
                <asp:ListView ID="lvMenu" runat="server" GroupItemCount="3" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1">
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
                                    <td class="auto-style9">&nbsp;&nbsp;&nbsp; Name:</td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;&nbsp;&nbsp; Price:</td>
                                    <td>
                                        <asp:Label ID="lblPrice" runat="server" Text='<%# String.Format("{0:C}" ,Eval("price")) %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>

                        </td>
                    </ItemTemplate>
                </asp:ListView>

            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style33" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Your Booking Details"></asp:Label>

            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style56"></td>
            <td class="auto-style57">&nbsp;&nbsp;&nbsp; Restaurant Name:</td>
            <td class="auto-style58">
                <asp:Label ID="lblRname" runat="server"></asp:Label>
            </td>
            <td class="auto-style59"></td>
            <td class="auto-style60"></td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style44"></td>
            <td class="auto-style36"></td>
            <td class="auto-style47"></td>
            <td class="auto-style53">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style56"></td>
            <td class="auto-style57">&nbsp;&nbsp;&nbsp; Address:</td>
            <td class="auto-style58">
                <asp:Label ID="lblAddress" runat="server"></asp:Label>
            </td>
            <td class="auto-style59"></td>
            <td class="auto-style60"></td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style44"></td>
            <td class="auto-style36"></td>
            <td class="auto-style47"></td>
            <td class="auto-style53">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style56"></td>
            <td class="auto-style57">&nbsp;&nbsp;&nbsp; Date:</td>
            <td class="auto-style58">
                <asp:TextBox ID="tbxDate" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="tbxDate" ErrorMessage="*Cannot be blank for Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style59"></td>
            <td class="auto-style60"></td>
        </tr>
        <tr>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style56"></td>
            <td class="auto-style57">&nbsp;&nbsp;&nbsp; Time:</td>
            <td class="auto-style58">
                <asp:TextBox ID="tbxTime" runat="server" TextMode="Time"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTime" runat="server" ControlToValidate="tbxTime" ErrorMessage="*Cannot be blank for Time" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style59"></td>
            <td class="auto-style60"></td>
        </tr>
        <tr>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
            <td class="auto-style58">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style45">&nbsp;&nbsp;&nbsp; No. Of Guests:</td>
            <td class="auto-style55">
                <asp:TextBox ID="tbxGuest" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNoGuest5" runat="server" ControlToValidate="tbxGuest" ErrorMessage="*Cannot be blank for No. Of Guests" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
        </tr>
    </table>
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
                <td class="auto-style30"></td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
        </table>

    </div>
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


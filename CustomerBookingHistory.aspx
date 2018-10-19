<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerBookingHistory.aspx.cs" Inherits="CustomerBookingHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 20px;
            width: 206px;
        }

        .auto-style6 {
            width: 206px;
        }

        .auto-style7 {
            width: 281px;
            height: 20px;
        }

        .auto-style8 {
            width: 281px;
        }

        .auto-style24 {
            width: 66px;
        }

        .auto-style25 {
            width: 89px;
        }

        .auto-style26 {
            width: 83%;
            height: 436px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!--Heading-->
    <br />
    <br />
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title" style="text-align: center">Upcoming BOOKING</h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />
    <br />


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Booking ID:" Font-Names="Tahoma" Font-Size="Large" Font-Bold="True"></asp:Label>
    &nbsp;
                                 <asp:TextBox ID="tbxBookingID" runat="server" Height="43px" placeholder=" eg.BK00221" Width="271px"></asp:TextBox>
    &nbsp;
                             &nbsp;
    <asp:Button ID="btnSearch" runat="server" Height="42px" Text="Search" Width="142px" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" OnClick="btnSearch_Click" CausesValidation="False" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblNoResult" runat="server" Font-Size="Medium" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
    <br />

    <br />

    <table class="nav-justified">
        <tr>
            <td class="auto-style24">&nbsp;&nbsp;&nbsp; </td>
            <td>

                <asp:GridView ID="gvUpcoming" runat="server" AutoGenerateColumns="False" CellPadding="4" Height="215px" HorizontalAlign="Center" Width="1051px" OnRowCommand="gvUpcoming_RowCommand" ForeColor="#333333" GridLines="None" Font-Names="Tahoma" Font-Size="Small" AllowPaging="True" OnPageIndexChanging="gvUpcoming_PageIndexChanging1" PageSize="5">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="BookingID" HeaderText="Booking ID" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Time" HeaderText="Time" DataFormatString="{0:t}">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NetAmount" DataFormatString="{0:c}" HeaderText="Net Amount" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BookingCharges" DataFormatString="{0:c}" HeaderText="Booking Charges" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Tax" DataFormatString="{0:c}" HeaderText="Tax" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DiscountAmt" DataFormatString="{0:c}" HeaderText="Discount">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="AmtPayable" DataFormatString="{0:c}" HeaderText="Total">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="Details" SelectText="View " ShowSelectButton="True">
                            <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" BorderColor="#666666" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <br />
                <asp:DataList ID="dlRoom" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Tahoma" Font-Size="Medium" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="dlRoom_SelectedIndexChanged" RepeatColumns="2" OnItemCommand="dlRoom_ItemCommand">
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <ItemTemplate>
                        <table class="col-xxs-12">
                            <tr>
                                <td class="auto-style5">Hotel Name</td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text='<%# Eval("RoomID.Hotel.Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label42" runat="server" Text="Booking ID:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookingID.BookingID") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Image ID="Image2" runat="server" Height="157px" ImageUrl='<%# "../images/"+Eval("RoomID.Pictures") %>' Width="178px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label31" runat="server" Text="Room ID:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label32" runat="server" Text='<%# Eval("RoomID.RoomID") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Room:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("RoomID.Type") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="From:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("StartDate","{0:d}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="To:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("EndDate","{0:d}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Max no. of guest:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("RoomID.Capacity") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Size:"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("RoomID.RoomSize") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Description:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("RoomID.Desc") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Services:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("RoomID.Services") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Price:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("RoomID.Price","{0:c}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" Text="Remarks:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label23" runat="server" Text='<%# Eval("RoomID.Remarks") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label43" runat="server" Text="Status:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("ItemBookingStatus") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <br />
                                    <asp:Button ID="btnManageRooms" runat="server" CausesValidation="False" CommandArgument='<%# Eval("ItemBookingID") %>' CommandName="cancel" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" Text="Cancel Booking" Width="215px" />
                                    <ajaxToolkit:ConfirmButtonExtender ID="btnManageRooms_ConfirmButtonExtender" runat="server" BehaviorID="btnManageRooms_ConfirmButtonExtender" ConfirmText="Are you sure to cancel this room booking?" TargetControlID="btnManageRooms" />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <br />
                <asp:DataList ID="dlTicket" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Tahoma" Font-Size="Medium" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="dlTicket_SelectedIndexChanged" RepeatColumns="2" OnItemCommand="dlTicket_ItemCommand">
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <ItemTemplate>
                        <table class="col-xxs-12">
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text='<%# Eval("TicketID.Attraction.Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label42" runat="server" Text="Booking ID:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookingID.BookingID") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Image ID="Image3" runat="server" Height="215px" ImageUrl='<%# "../images/"+Eval("TicketID.Attraction.Photo") %>' Width="250px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label27" runat="server" Text="Ticket Type:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label28" runat="server" Text='<%# Eval("TicketID.Type") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Date:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("StartDate","{0:d}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label29" runat="server" Text="No. of guest:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label30" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Price:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("Price","{0:c}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;
                        <asp:Label ID="Label43" runat="server" Text="Status:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("ItemBookingStatus") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <br />
                                    <asp:Button ID="btnManage" runat="server" CausesValidation="False" CommandArgument='<%# Eval("ItemBookingID") %>' CommandName="cancel" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" Text="Cancel Booking" Width="215px" />
                                    <ajaxToolkit:ConfirmButtonExtender ID="btnManage_ConfirmButtonExtender" runat="server" BehaviorID="btnManage_ConfirmButtonExtender" ConfirmText="Are you sure to cancel this attraction ticket booking?" TargetControlID="btnManage" />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <br />
                <asp:DataList ID="dlRestaurant" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Tahoma" Font-Size="Medium" GridLines="Vertical" HorizontalAlign="Center" RepeatColumns="2" OnSelectedIndexChanged="dlRestaurant_SelectedIndexChanged" OnItemCommand="dlRestaurant_ItemCommand">
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <ItemTemplate>
                        <table class="col-xxs-12">
                            <tr>
                                <td class="auto-style5">&nbsp;&nbsp;
                        <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text="Restaurant: "></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text='<%# Eval("RestaurantID.Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label42" runat="server" Text="Booking ID:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookingID.BookingID") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Image ID="Image2" runat="server" Height="157px" Width="178px" ImageUrl='<%# "../images/"+Eval("RestaurantID.Photo") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label26" runat="server" Text="Address:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label27" runat="server" Text='<%# Eval("RestaurantID.Address") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label29" runat="server" Text="Date:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label28" runat="server" Text='<%# Eval("StartDate","{0:d}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Time:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("StartTime","{0:t}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="No. of guest:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Remarks:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("RestaurantID.Description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label43" runat="server" Text="Status:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("ItemBookingStatus") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <br />
                                    <asp:Button ID="btnManage" runat="server" CausesValidation="False" CommandArgument='<%# Eval("ItemBookingID") %>' CommandName="cancel" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" Text="Cancel Booking" Width="215px" />
                                    <ajaxToolkit:ConfirmButtonExtender ID="btnManage_ConfirmButtonExtender" runat="server" BehaviorID="btnManage_ConfirmButtonExtender" ConfirmText="Are you sure to cancel this resturant reservation?" TargetControlID="btnManage" />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <br />
                <!--Heading-->
                <br />
                <br />
                <div class="col-lg-4 col-md-3 col-sm-3">
                    <hr />
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <h2 class="tm-section-title" style="text-align: center">Past BOOKING</h2>
                </div>
                <div class="col-lg-4 col-md-3 col-sm-3">
                    <hr />
                </div>
                <br />
                <br />

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Booking ID:" Font-Names="Tahoma" Font-Size="Large" Font-Bold="True"></asp:Label>
                &nbsp;
                                 <asp:TextBox ID="tbxId" runat="server" Height="43px" placeholder=" eg.BK00221" Width="271px"></asp:TextBox>
                &nbsp;
                             &nbsp;
                <asp:Button ID="btnOldSearch" runat="server" Height="42px" Text="Search" Width="142px" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" OnClick="btnSearch2_Click" CausesValidation="False" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblNone" runat="server" Font-Size="Medium" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                <br />

                <br />

                <table class="nav-justified">
                    <tr>
                        <td class="auto-style25">&nbsp;&nbsp;&nbsp;</td>
                        <td>

                            <asp:GridView ID="gvHistory" runat="server" AutoGenerateColumns="False" CellPadding="4" Height="215px" HorizontalAlign="Center" Width="1051px" OnRowCommand="gvHistory_RowCommand" ForeColor="#333333" GridLines="None" Font-Names="Tahoma" Font-Size="Small" AllowPaging="True" OnPageIndexChanging="gvHistory_PageIndexChanging" PageSize="5">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="BookingID" HeaderText="Booking ID" ReadOnly="True">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" ReadOnly="True">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Time" HeaderText="Time" DataFormatString="{0:t}">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NetAmount" DataFormatString="{0:c}" HeaderText="Net Amount" ReadOnly="True">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="BookingCharges" DataFormatString="{0:c}" HeaderText="Booking Charges" ReadOnly="True">
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Tax" DataFormatString="{0:c}" HeaderText="Tax" ReadOnly="True">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="DiscountAmt" DataFormatString="{0:c}" HeaderText="Discount">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AmtPayable" DataFormatString="{0:c}" HeaderText="Total">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:CommandField HeaderText="Details" SelectText="View " ShowSelectButton="True">
                                        <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" HorizontalAlign="Center" />
                                    </asp:CommandField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" BorderColor="#666666" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <br />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style25">&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbladded" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:DataList ID="gvRoom" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Tahoma" Font-Size="Medium" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="gvRoom_SelectedIndexChanged" RepeatColumns="2" OnItemCommand="gvRoom_ItemCommand">
                    <AlternatingItemStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <ItemTemplate>
                        <table class="col-xxs-12">
                            <tr>
                                <td class="auto-style5"></td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text='<%# Eval("RoomID.Hotel.Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label42" runat="server" Text="Booking ID:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookingID.BookingID") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:Image ID="Image2" runat="server" Height="157px" ImageUrl='<%# "../images/"+Eval("RoomID.Pictures") %>' Width="178px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label31" runat="server" Text="Room ID:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label32" runat="server" Text='<%# Eval("RoomID.RoomID") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Room Type:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("RoomID.Type") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="From:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("StartDate","{0:d}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="To:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("EndDate","{0:d}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Max no. of guest:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("RoomID.Capacity") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Size:"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("RoomID.RoomSize") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Description:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("RoomID.Desc") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Services:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label21" runat="server" Text='<%# Eval("RoomID.Services") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Price:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("RoomID.Price","{0:c}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" Text="Remarks:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label23" runat="server" Text='<%# Eval("RoomID.Remarks") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label43" runat="server" Text="Status:"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("ItemBookingStatus") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <br />
                                    <asp:Button ID="btnManageRooms" runat="server" CausesValidation="False" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" Text="Give Feedback" Width="215px" CommandName="feedback" CommandArgument='<%# Eval("ItemBookingID") %>' />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
            <td></td>
        </tr>
    </table>

    <table class="auto-style26">
        <tr>
            <td class="auto-style25">
                <asp:Panel ID="pnlFeedback" runat="server" Height="323px" HorizontalAlign="Right" Width="455px" Visible="False">
                    <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633"></asp:Label>
                    <br />
                    <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633">We&#39;d Like To Hear From You!</asp:Label>
                    <br />

                    <table class="col-xxs-12">
                        <tr>
                            <td class="auto-style41">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                            <td class="auto-style30">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style41">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                            <td class="auto-style30">
                                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Comment:"></asp:Label>
                            </td>
                            <td class="auto-style15">
                                <asp:TextBox ID="tbxComment" runat="server" Height="94px" TextMode="MultiLine" Width="239px" BackColor="White"></asp:TextBox>
                                <asp:DropDownList ID="ddlHotel" runat="server">
                                    <asp:ListItem Text="None" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Reported!" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                                <ajaxToolkit:RoundedCornersExtender ID="tbxComment_RoundedCornersExtender" runat="server" BehaviorID="tbxComment_RoundedCornersExtender" TargetControlID="tbxComment" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style35"></td>
                            <td class="auto-style20"></td>
                            <td class="auto-style30">
                                <asp:Label ID="Label35" runat="server" Font-Size="Large" Text="Overall Rating:"></asp:Label>
                            </td>
                            <td class="auto-style15">

                                <ajaxToolkit:Rating ID="Rating1" runat="server" EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" StarCssClass="Star" WaitingStarCssClass="WaitingStar"></ajaxToolkit:Rating>

                                <asp:DropDownList ID="tbxRatings" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" Height="40px" Width="200px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>



                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style42"></td>
                            <td class="auto-style21"></td>
                            <td class="auto-style30"></td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style42"></td>
                            <td class="auto-style21">&nbsp;</td>
                            <td class="auto-style30"></td>
                            <td class="auto-style15">
                                <asp:Button ID="btnGiveFeedback" runat="server" CausesValidation="False" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" OnClick="btnGiveFeedback_Click" Text="Give Feedback" Width="215px" />
                                <ajaxToolkit:ConfirmButtonExtender ID="btnGiveFeedback_ConfirmButtonExtender" runat="server" BehaviorID="btnManage_ConfirmButtonExtender" ConfirmText="Confirm to submit feedback?" TargetControlID="btnGiveFeedback" />
                            </td>
                        </tr>

                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>

    <br />
    <asp:DataList ID="gvTicket" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Tahoma" Font-Size="Medium" GridLines="Vertical" HorizontalAlign="Center" OnSelectedIndexChanged="gvTicket_SelectedIndexChanged" RepeatColumns="2" OnItemCommand="gvTicket_ItemCommand">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
            <table class="col-xxs-12">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text='<%# Eval("TicketID.Attraction.Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label42" runat="server" Text="Booking ID:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookingID.BookingID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Image ID="Image3" runat="server" Height="215px" ImageUrl='<%# "../images/"+Eval("TicketID.Attraction.Photo") %>' Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label27" runat="server" Text="Ticket Type:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label28" runat="server" Text='<%# Eval("TicketID.Type") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Date:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("StartDate","{0:d}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label29" runat="server" Text="No. of guest:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label30" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Price:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("Price","{0:c}") %>'></asp:Label>
                    </td>
                </tr>
                <%--                <tr>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label14" runat="server" Text="Remarks:"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("TicketID.Remarks") %>'></asp:Label>
                    </td>
                </tr>--%>
                <tr>
                    <td class="auto-style6">&nbsp;
                        <asp:Label ID="Label43" runat="server" Text="Status:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("ItemBookingStatus") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">
                        <br />
                        <asp:Button ID="btnManage" runat="server" CausesValidation="False" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" Text="Give Feedback" Width="215px" CommandArgument='<%# Eval("ItemBookingID") %>' CommandName="feedback" />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <br />
    <asp:Panel ID="pnlFeedback0" runat="server" Height="296px" HorizontalAlign="Right" Width="446px" Visible="False">
        <asp:Label ID="lblTitle0" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633"></asp:Label>
        <br />
        <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633">We&#39;d Like To Hear From You!</asp:Label>
        <br />

        <table class="col-xxs-12">
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="Label37" runat="server" Font-Size="Large" Text="Comment:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="tbxComment0" runat="server" Height="78px" TextMode="MultiLine" Width="232px"></asp:TextBox>
                    <asp:DropDownList ID="ddlTicket" runat="server">
                        <asp:ListItem Text="None" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Reported!" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style20"></td>
                <td class="auto-style31">
                    <asp:Label ID="Label38" runat="server" Font-Size="Large" Text="Overall Rating:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <ajaxToolkit:Rating ID="Rating2" runat="server" EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" StarCssClass="Star" WaitingStarCssClass="WaitingStar" AutoPostBack="True">
                    </ajaxToolkit:Rating>



                    <asp:DropDownList ID="tbxRatings0" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" Height="40px" Width="200px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>



                </td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style21"></td>
                <td class="auto-style31"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style31"></td>
                <td class="auto-style15">
                    <asp:Button ID="btnGiveFeedback0" runat="server" CausesValidation="False" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" OnClick="btnGiveFeedback0_Click" Text="Give Feedback" Width="215px" />
                </td>
            </tr>

        </table>
    </asp:Panel>
    <br />
    <br />
    <br />
    <asp:DataList ID="gvRestaurant" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Tahoma" Font-Size="Medium" GridLines="Vertical" HorizontalAlign="Center" RepeatColumns="2" OnSelectedIndexChanged="gvRestaurant_SelectedIndexChanged" OnItemCommand="gvRestaurant_ItemCommand">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
            <table class="col-xxs-12">
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;
                        <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text="Restaurant: "></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633" Text='<%# Eval("RestaurantID.Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label42" runat="server" Text="Booking ID:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookingID.BookingID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Image ID="Image2" runat="server" Height="157px" Width="178px" ImageUrl='<%# "../images/"+Eval("RestaurantID.Photo") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label26" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label27" runat="server" Text='<%# Eval("RestaurantID.Address") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label29" runat="server" Text="Date:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label28" runat="server" Text='<%# Eval("StartDate","{0:d}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Time:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("StartTime","{0:t}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Text="No. of guest:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label20" runat="server" Text='<%# Eval("Qty") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Text="Remarks:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("RestaurantID.Description") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;
                        <asp:Label ID="Label43" runat="server" Text="Status:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("ItemBookingStatus") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">
                        <br />
                        <asp:Button ID="btnManage" runat="server" CausesValidation="False" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" Text="Give Feedback" Width="215px" CommandArgument='<%# Eval("ItemBookingID") %>' CommandName="feedback" />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:Panel ID="pnlFeedback1" runat="server" Height="381px" HorizontalAlign="Right" Width="441px" Visible="False">
        <asp:Label ID="lblTitle1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633"></asp:Label>
        <br />
        <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" ForeColor="#996633">We&#39;d Like To Hear From You!</asp:Label>
        <br />

        <table class="col-xxs-12">
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style32">
                    <asp:Label ID="Label40" runat="server" Font-Size="Large" Text="Comment:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="tbxComment1" runat="server" Height="116px" TextMode="MultiLine" Width="227px"></asp:TextBox>
                    <asp:DropDownList ID="ddlRestaurant" runat="server">
                        <asp:ListItem Text="None" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Reported!" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style20"></td>
                <td class="auto-style32">
                    <asp:Label ID="Label41" runat="server" Font-Size="Large" Text="Overall Rating:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <ajaxToolkit:Rating ID="Rating3" runat="server" EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" StarCssClass="Star" WaitingStarCssClass="WaitingStar" AutoPostBack="True">
                    </ajaxToolkit:Rating>



                    <asp:DropDownList ID="tbxRatings1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" Height="40px" Width="200px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>



                </td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style21"></td>
                <td class="auto-style32"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style32"></td>
                <td class="auto-style15">
                    <asp:Button ID="btnGiveFeedback1" runat="server" CausesValidation="False" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" ForeColor="White" BackColor="#009688" Height="42px" OnClick="btnGiveFeedback1_Click" Text="Give Feedback" Width="215px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
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
</asp:Content>


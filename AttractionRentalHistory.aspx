<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AttractionRentalHistory.aspx.cs" Inherits="AttractionRentalHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 289px;
        }

        .auto-style2 {
            width: 136px;
        }

        .auto-style3 {
            width: 297px
        }

        .auto-style4 {
            width: 505px;
        }

        .auto-style5 {
            width: 121px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--Heading-->
    <br />
    <br />
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title">
            <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />
    <br />
    <br />


    <table class="nav-justified">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>

                <asp:Label ID="Label1" runat="server" Text="Booking ID:" Font-Names="Tahoma" Font-Size="Large" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="tbxBookingID" runat="server" Height="43px" placeholder=" eg.BK00221" Width="271px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Height="42px" Text="Search" Width="142px" ForeColor="White" BackColor="#009688" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" OnClick="btnSearch_Click" CausesValidation="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Label ID="lblNoResult" runat="server" Font-Size="Medium" ForeColor="#FF3300" Text="Label"></asp:Label>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    &nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <br />


    <table class="nav-justified">
        <tr>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;</td>
            <td>

                <asp:GridView ID="gvUpcoming" runat="server" AutoGenerateColumns="False" CssClass="table table-nonfluid .table-striped .table-condensed table-responsive" CellPadding="3" Height="209px" HorizontalAlign="Center" Width="1026px" OnRowCancelingEdit="gvUpcoming_RowCancelingEdit" OnRowCommand="gvUpcoming_RowCommand" OnRowEditing="gvUpcoming_RowEditing" OnRowUpdating="gvUpcoming_RowUpdating" Font-Names="Tahoma" Font-Size="Small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:BoundField DataField="BookingID.BookingID" HeaderText="Booking ID" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TicketID.Attraction.Name" HeaderText="Attraction Name" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TicketID.Type" HeaderText="Ticket Type" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StartDate" DataFormatString="{0:d}" HeaderText="Start Date" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EndDate" DataFormatString="{0:d}" HeaderText="End Date" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BookingID.BookingCharges" DataFormatString="{0:c}" HeaderText="Booking Charges" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BookingID.Tax" DataFormatString="{0:c}" HeaderText="Tax" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ItemBookingStatus" HeaderText="Status">
                            <ItemStyle HorizontalAlign="Center" Width="200px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Customer">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("BookingID.CID.CustEmail") %>' CommandName="Customer" Text='<%# Eval("BookingID.CID.Name") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle ForeColor="#000099" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:CommandField SelectText="Manage" CancelText="   Cancel" DeleteText="" EditText="Manage" ShowEditButton="True" UpdateText="UpdateStatus">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Font-Bold="True" Font-Size="Medium" Font-Underline="False" ForeColor="#0066FF" HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" BorderColor="Yellow" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>


                <asp:GridView ID="gvHistory" runat="server" AutoGenerateColumns="False" CssClass="table table-nonfluid .table-striped .table-condensed table-responsive" CellPadding="3" Height="215px" HorizontalAlign="Center" Width="1051px" OnRowCancelingEdit="gvUpcoming_RowCancelingEdit" OnRowCommand="gvHistory_RowCommand" OnRowEditing="gvUpcoming_RowEditing" OnRowUpdating="gvUpcoming_RowUpdating" Font-Names="Tahoma" Font-Size="Small" AllowPaging="True" OnPageIndexChanging="gvHistory_PageIndexChanging" PageSize="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:BoundField DataField="BookingID.BookingID" HeaderText="Booking ID" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TicketID.Attraction.Name" HeaderText="Attraction Name" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TicketID.Type" HeaderText="Ticket Type" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StartDate" DataFormatString="{0:d}" HeaderText="Start Date" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EndDate" DataFormatString="{0:d}" HeaderText="End Date" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BookingID.BookingCharges" DataFormatString="{0:c}" HeaderText="Booking Charges" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BookingID.Tax" DataFormatString="{0:c}" HeaderText="Tax" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ItemBookingStatus" HeaderText="Status">
                            <ItemStyle HorizontalAlign="Center" Width="200px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Customer">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("BookingID.CID.CustEmail") %>' CommandName="Customer" Text='<%# Eval("BookingID.CID.Name") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="FeedBack" SelectText="View Feedback" ShowSelectButton="True">
                            <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" BorderColor="#666666" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>

                <br />

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style3">
                            <asp:LinkButton ID="lBtUpcoming" runat="server" Font-Names="Tahoma" Font-Size="X-Large" OnClick="lBtnUpcoming_Click">&lt;&lt;View Upcoming Booking </asp:LinkButton>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>
                            <asp:LinkButton ID="lBtnHistory" runat="server" Font-Names="Tahoma" Font-Size="X-Large" OnClick="lBtnHistory_Click">View Past Booking &gt;&gt;</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Label ID="lblCustomer" runat="server" Text="Customer Details" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="Black"></asp:Label>
                            <br />
                            <asp:DetailsView ID="dlCustomer" runat="server" AutoGenerateRows="False" CssClass="table table-nonfluid .table-striped .table-condensed table-responsive" CellPadding="4" ForeColor="#333333" GridLines="None" Height="151px" HorizontalAlign="Center" Width="297px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                <EditRowStyle BackColor="#999999" />
                                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="PersonalID" HeaderText="NRIC/PP No" />
                                    <asp:BoundField DataField="DateOfBirth" DataFormatString="{0:d}" HeaderText="DOB" />
                                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone " />
                                </Fields>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            </asp:DetailsView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />





    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6">
        <h2 class="tm-section-title">
            <asp:Label ID="lblFeedback" runat="server" Text="FeedBack"></asp:Label></h2>
    </div>
    <div class="col-lg-4 col-md-3 col-sm-3">
        <hr />
    </div>
    <br />
    <br />

    <br />
    <table class="nav-justified">
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;</td>
            <td>

                <asp:GridView ID="gvFeedback" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-nonfluid .table-striped .table-condensed table-responsive" Height="199px" HorizontalAlign="Center" Width="1071px" OnRowCancelingEdit="gvFeedback_RowCancelingEdit" OnRowCommand="gvHistory_RowCommand" OnRowEditing="gvFeedback_RowEditing" OnRowUpdating="gvFeedback_RowUpdating" ForeColor="#333333" GridLines="None" Font-Names="Tahoma" Font-Size="Small" AllowPaging="True" OnPageIndexChanging="gvFeedback_PageIndexChanging" PageSize="6">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="RevID" HeaderText="Review ID" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:d}" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Time" DataFormatString="{0:t}" HeaderText="Time" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Rating" HeaderText="Rating" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Feedback" HeaderText="Comment" ReadOnly="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ReportStatus" HeaderText="Status" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField CancelText="   Cancel" EditText="Take Action" ShowEditButton="True" UpdateText="Report">
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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


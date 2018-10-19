<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThingsToDo.aspx.cs" Inherits="ThingsToDo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #header {
            margin-top: -35px;
            background-image: url("images/travel.jpeg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            margin-bottom: 0;
        }

        .things {
            font-size: 30px;
        }

        .row {
            text-align: center;
        }

        .tb {
            margin-left: 145px;
        }

        .footer {
            margin-left: 145px;
        }

        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="jumbotron" id="header" style="height: 250px">
        <div class="container text-center">
            <div class="things">
                <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Things To Do in "></asp:Label>
                <asp:Label ID="lblCountry" runat="server" Text="" Font-Bold="true"></asp:Label>
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <div style="margin-left: 250px">
            <table id="tblWeather" runat="server" border="0" cellpadding="0" cellspacing="0"
                visible="false" style="margin-left: 250px">
                <tr>
                    <th colspan="2">Weather Information
                    </th>
                </tr>
                <tr>
                    <td rowspan="3">
                        <asp:Image ID="imgWeatherIcon" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCity_Country" runat="server" />
                        <asp:Label ID="lblDescription" runat="server" />
                        Humidity:
            <asp:Label ID="lblHumidity" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Temperature:
            (Min:
            <asp:Label ID="lblTempMin" runat="server" />
                        Max:
            <asp:Label ID="lblTempMax" runat="server" />
                        Day:
            <asp:Label ID="lblTempDay" runat="server" />)
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <table class="tb">
        <tr>
            <td>
                <div class="container-fluid bg-3 text-left">
                    <h1>Attraction</h1>
                    <div class="row">
                        <asp:DataList ID="dlAttraction" runat="server" CssClass="table table-nonfluid  .table-striped  .table-condensed table-responsive" RepeatColumns="4" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgAttraction" runat="server" Height="200px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="300px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Rating: "></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("StarRating") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
                <asp:LinkButton ID="btnAviewMore" runat="server" OnClick="btnAviewMore_Click">View More</asp:LinkButton>

            </td>
        </tr>


        <tr>
            <td>
                <div class="container-fluid bg-3 text-left">
                    <h1>Hotel</h1>
                    <div class="row">
                        <asp:DataList ID="dlHotel" runat="server" CellPadding="4" CssClass="table table-nonfluid  .table-striped  .table-condensed table-responsive" ForeColor="#333333" RepeatColumns="4" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgAttraction" runat="server" Height="200px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="300px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Rating: "></asp:Label>

                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("StarRating") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
                <asp:LinkButton ID="btnHviewMore" runat="server" OnClick="btnHviewMore_Click">View More</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <div class="container-fluid bg-3 text-left">
                    <h1>Restaurant</h1>
                    <div class="row">
                        <asp:DataList ID="dlRestaurant" runat="server" CellPadding="4" CssClass="table table-nonfluid  .table-striped  .table-condensed table-responsive" ForeColor="#333333" RepeatColumns="4" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="imgAttraction" runat="server" Height="200px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="300px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Rating: "></asp:Label>

                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("StarRating") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
                <asp:LinkButton ID="btnRviewMore" runat="server" OnClick="btnRviewMore_Click">View More</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <br />

    <table class="footer">
        <tr>
            <td>
                <h2>Ready for Travel?</h2>
                <div id="pTest">
                    <p>Make a Trip Planner from now for your holiday, business trips, etc...</p>
                </div>
            </td>
        </tr>
    </table>




</asp:Content>


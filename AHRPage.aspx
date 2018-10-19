<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AHRPage.aspx.cs" Inherits="AHRPage" %>

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

        .h2 {
            font-weight: bold;
        }
        .auto1 {
            margin-left: 20px;
        }
    </style>


    <link href="style/services.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="jumbotron" id="header" style="height: 250px">
        <div class="container text-center">
            <h1>Find out more to the specific countries...</h1>
            <asp:DropDownList ID="ddlSearch" placeholder="Search a Destination" runat="server" Width="211px">
                <asp:ListItem Text="China" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Indonesia"></asp:ListItem>
                <asp:ListItem Text="Malaysia"></asp:ListItem>
                <asp:ListItem Text="Myanmar"></asp:ListItem>
                <asp:ListItem Text="Singapore"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnSearch" runat="server" ForeColor="White" BackColor="#009688" Text="Find things to do" OnClick="btnSearch_Click" />
            <br />
            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <!-- Services section -->
    <section id="what-we-do">
        <div class="container-fluid">
            <h2 class="section-title mb-2 h1">What we do</h2>
            <p class="text-center text-muted h5">We provide YOU for those who are willing to travel overseas!</p>
            <div class="row mt-5">
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                    <div class="card">
                        <div class="card-block block-1">
                            <h3 class="card-title">Discover great things to do</h3>
                            <p class="card-text">Choose from 100.000 attractions, tours and activities</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                    <div class="card">
                        <div class="card-block block-2">
                            <h3 class="card-title">See the latest reviews</h3>
                            <p class="card-text">Read reviews and opinions from our global travel community</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                    <div class="card">
                        <div class="card-block block-3">
                            <h3 class="card-title">Plan YOUR trip</h3>
                            <p class="card-text">Help travelers to manage on their trips easily (include of food planner, hotel booking and make reservation)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Services section -->

    <div class="container-fluid bg-3 text-left" >
        <h1>Attraction</h1>
        <div class="row">
            <asp:DataList ID="dlAttraction" runat="server" CssClass="table table-nonfluid  .table-striped  .table-condensed table-responsive" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="imgAttraction" runat="server" Height="200px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="300px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <br />

    <div class="container-fluid bg-3 text-left">
        <h1>Hotel</h1>
        <div class="row">
            <asp:DataList ID="dlHotel" runat="server" CssClass="table table-nonfluid  .table-striped  .table-condensed table-responsive" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="imgHotel" runat="server" Height="200px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="300px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <br />

    <div class="container-fluid bg-3 text-left">
        <h1>Restaurant</h1>
        <div class="row">
            <asp:DataList ID="dlRestaurant" runat="server" CssClass="table table-nonfluid  .table-striped  .table-condensed table-responsive" RepeatColumns="4" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="imgRestaurant" runat="server" Height="200px" ImageUrl='<%# "../images/"+Eval("Photo") %>' Width="300px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <br />
        <div class="footerText">
            <div class="title">
                <h1>Do you run your own attraction, activity, or tour business?</h1>
            </div>
            <p>Get expert industry insights with SmartTravel's supplier resource centre. Learn how to reach more travellers, grow your sales, and stand out from the competition—from the world's leading online seller of in-destination experiences. Check it out here.</p>
            <br />
            <div class="secTitle">
                <h1>Top attractions near me</h1>
            </div>
            <p>Instantly find top-rated attractions nearby, even while you’re on the go: Download our app for iOS or Android.</p>
        </div>
    </div>



</asp:Content>


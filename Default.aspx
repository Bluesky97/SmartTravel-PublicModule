<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="../../favicon.ico" />
    <link href="style/workaround.css" rel="stylesheet" />
    <script src="script/warning.js"></script>
    <link href="style/carousel.css" rel="stylesheet" />

    <style>
        #myCarousel {
            margin-top: -35px;
        }

        .auto-style1 {
            position: absolute;
            right: 9%;
            bottom: 128px;
            left: 9%;
            z-index: 10;
            color: #fff;
            text-align: center;
            text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
            height: 195px;
            padding-top: 20px;
            padding-bottom: 30px;
        }

        .auto-style2 {
            width: 288px;
            margin-left: 79px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="auto-style1">
                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                    <table class="nav-justified">
                        <tr>
                            <td>
                                <h1>Tour & Travel Booking Form </h1>
                                <asp:Label ID="Label1" runat="server" Text="Destination"></asp:Label>
                                <asp:DropDownList ID="ddlSearch" runat="server" Width="211px" ForeColor="Black">
                                    <asp:ListItem Text="China" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Indonesia"></asp:ListItem>
                                    <asp:ListItem Text="Malaysia"></asp:ListItem>
                                    <asp:ListItem Text="Myanmar"></asp:ListItem>
                                    <asp:ListItem Text="Singapore"></asp:ListItem>
                                </asp:DropDownList>

                                <asp:Button ID="btnSearch" runat="server" Text="Search" CausesValidation="False" OnClick="btnSearch_Click" ForeColor="White" BackColor="#009688" />
                                <br />
                                <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
            <div class="item active">
                <img src="images/singapore.jpg" alt="First slide">
                <div class="container">
                </div>
            </div>
            <div class="item">
                <img src="images/malaysia.jpg" alt="Second slide">
                <div class="container">
                </div>
            </div>
            <div class="item">
                <img src="images/beijing.jpg" alt="Third slide">
                <div class="container">
                </div>
            </div>
            <div class="item">
                <img src="images/jakarta.jpg" alt="Fourth slide">
                <div class="container">
                </div>
            </div>
            <div class="item">
                <img src="images/yangon.jpg" alt="Fifth slide">
                <div class="container">
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- Page content -->
    <div class="w3-content" style="max-width: 1100px;">

        <!-- Good offers -->
        <div class="w3-container w3-margin-top">
            <h3>Top 5 Countries</h3>
        </div>
        <div class="w3-row-padding w3-text-white w3-large">
            <div class="w3-half w3-margin-bottom">
                <div class="w3-display-container">
                    <img src="images/klcc.jpg" alt="Cinque Terre" style="width: 515px; height: 525px">
                    <span class="w3-display-bottomleft w3-padding">Malaysia</span>
                </div>
            </div>
            <div class="w3-half">
                <div class="w3-row-padding" style="margin: 0 -16px">
                    <div class="w3-half w3-margin-bottom">
                        <div class="w3-display-container">
                            <img src="images/merlion.jpg" alt="New York" style="width: 250px; height: 250px">
                            <span class="w3-display-bottomleft w3-padding">Singapore</span>
                        </div>
                    </div>
                    <div class="w3-half w3-margin-bottom">
                        <div class="w3-display-container">
                            <img src="images/jakartahistory.jpg" alt="San Francisco" style="width: 250px; height: 250px">
                            <span class="w3-display-bottomleft w3-padding">Indonesia</span>
                        </div>
                    </div>
                </div>
                <div class="w3-row-padding" style="margin: 0 -16px">
                    <div class="w3-half w3-margin-bottom">
                        <div class="w3-display-container">
                            <img src="images/Sule-Pagoda.jpeg" alt="Pisa" style="width: 250px; height: 250px">
                            <span class="w3-display-bottomleft w3-padding">Myanmar</span>
                        </div>
                    </div>
                    <div class="w3-half w3-margin-bottom">
                        <div class="w3-display-container">
                            <img src="images/china.jpg" alt="Paris" style="width: 250px; height: 250px">
                            <span class="w3-display-bottomleft w3-padding">China</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Explore Nature -->
        <div class="w3-container">
            <h3>Explore Nature</h3>
            <p>Travel with us and see nature at its finest.</p>
        </div>
        <div class="w3-row-padding">
            <div class="w3-half w3-margin-bottom">
                <img src="images/ussticket.jpg" alt="Norway" style="width: 500px; height: 500px">
                <div class="w3-container w3-white">
                    <h3>Singapore, Singapore</h3>
                    <p class="w3-opacity">Start from $80</p>
                    <p>USS Ticket for Adult, Child and etc...</p>
                </div>
            </div>
            <div class="w3-half w3-margin-bottom">
                <img src="images/poster.jpg" alt="Austria" style="width: 500px; height: 500px">
                <div class="w3-container w3-white">
                    <h3>Special Offer</h3>
                    <p class="w3-opacity">Enjoy $15 OFF</p>
                    <p>Given by SmartTravel</p>
                </div>
            </div>
        </div>

        <!-- Newsletter -->
        <div class="w3-container">
            <div class="w3-panel w3-padding-16 w3-black w3-opacity w3-card w3-hover-opacity-off">
                <h2>Get the best offers first!</h2>
                <p>Join our newsletter.</p>
                <label>E-mail</label>
                <asp:TextBox ID="tbxEmail" placeholder="Your Email address" class="w3-input w3-border" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:Button ID="btnSubmit" class="w3-button w3-red w3-margin-top" runat="server" Text="Subscribe" OnClick="btnSubmit_Click" />
                <asp:Label ID="lblOutput0" runat="server" Text=""></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email cannot be blanks!" ControlToValidate="tbxEmail"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</asp:Content>


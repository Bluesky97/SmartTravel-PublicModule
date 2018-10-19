<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactPage.aspx.cs" Inherits="ContactPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="style/bootstrap.min.css" rel="stylesheet" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <body id="myPage">
        <!-- Google Maps -->
        <div id="googleMap" style="width: 100%; height: 420px;"></div>
        <script>
            function myMap() {
                myCenter = new google.maps.LatLng(1.337344, 103.849256);
                var mapOptions = {
                    center: myCenter,
                    zoom: 12, scrollwheel: true, draggable: true,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);

                var marker = new google.maps.Marker({
                    position: myCenter,
                });
                marker.setMap(map);
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-Brzltyb6U-xbPlQyCUM2n4F_c130xl0&callback=myMap"></script>
        <style>
            #googleMap {
                margin-top: -35px;
            }

            .auto-style1 {
                display: block;
                width: 100%;
                height: 115px;
                border-left-style: none;
                border-left-color: inherit;
                border-left-width: medium;
                border-right-style: none;
                border-right-color: inherit;
                border-right-width: medium;
                border-top-style: none;
                border-top-color: inherit;
                border-top-width: medium;
                border-bottom: 1px solid #ccc;
                padding: 8px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Contact Container -->
    <div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
        <div class="w3-row">
            <div class="w3-col m5">

                <div class="w3-padding-16"><span class="w3-xlarge w3-border-teal w3-bottombar">Contact Us</span></div>
                <h3>Address</h3>
                <p>Jackson Square Block A, #01-01, 11 Lor 3 Toa Payoh</p>
                <p><i class="fa fa-map-marker w3-text-teal w3-xlarge"></i>&nbsp;&nbsp;Singapore, SG</p>
                <p><i class="fa fa-phone w3-text-teal w3-xlarge"></i>&nbsp;&nbsp;+65 6390 9000</p>
                <p><i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>&nbsp;&nbsp;enquiry@smarttravel.com</p>

            </div>
            <div class="w3-col m7">
                <form class="w3-container w3-card-4 w3-padding-16 w3-white" action="/action_page.php" target="_blank">
                    <div class="w3-section">
                        <label>Name</label>
                        <asp:TextBox ID="tbxName" class="w3-input" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="tbxName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="w3-section">
                        <label>Email</label>
                        <asp:TextBox ID="tbxEmail" class="w3-input" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="tbxEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmail" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="w3-section">
                        <label>Message</label>
                        <asp:TextBox ID="tbxMessage" class="auto-style1" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Message cannot be blank" ControlToValidate="tbxMessage"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button ID="btnSend" class="w3-button w3-right w3-theme" ForeColor="White" BackColor="#009688" runat="server" Text="Send" OnClick="btnSend_Click" />
                    <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </form>
            </div>
        </div>
    </div>





    <!-- /.container -->
</asp:Content>


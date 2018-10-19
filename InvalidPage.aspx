<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InvalidPage.aspx.cs" Inherits="InvalidPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
        .center {
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            margin-top: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="span12">
                <div class="hero-unit center">
                    <h1>Sorry! </h1>
                    <h1><small><font face="Tahoma" color="red">Something went wrong.</font></small></h1>
                    <br />
                    <p>We apologise for any inconveniences caused.</p>
                    <p><b>Or you could just press this neat little button:</b></p>
                    <a href="Default.aspx" class="btn btn-large btn-info"><i class="icon-home icon-white"></i>Take Me Home</a>
                    <asp:Label ID="lblError" runat="server" Font-Names="Tahoma" Font-Size="Small"></asp:Label>
                </div>
                <br />
            </div>
        </div>
    </div>
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />
    <br /><br /><br />

</asp:Content>


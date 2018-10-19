<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageMenu.aspx.cs" Inherits="ManageMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: white;
        }

        * {
            box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

        /* Overwrite default styles of hr */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for the submit button */
        .registerbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

            .registerbtn:hover {
                opacity: 1;
            }

        /* Add a blue text color to links */
        a {
            color: dodgerblue;
        }

        /* Set a grey background color and center the text of the "sign in" section */
        .signin {
            background-color: #f1f1f1;
            text-align: center;
        }

        .text {
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="text">
        <h3>Show Menu Item By Restaurant Owner</h3>
        <p>
    </div>
    <asp:Label ID="Label1" runat="server" ForeColor="black" Text="Restaurant in "></asp:Label>
    <asp:Label ID="lblName" runat="server" ForeColor="black" Text=""></asp:Label>
    </p>
    <asp:GridView ID="gvMenu" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-nonfluid .table-striped .table-condensed table-responsive" ForeColor="#333333" GridLines="None" OnRowDeleting="gvMenu_RowDeleting" OnRowEditing="gvMenu_RowEditing" OnRowUpdating="gvMenu_RowUpdating" OnRowCancelingEdit="gvMenu_RowCancelingEdit">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Menu Item ID">
                <EditItemTemplate>
                    <asp:Label ID="lblMenuID" runat="server" Text='<%# Eval("menuItemID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("menuItemID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="tbxMname" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="tbxMdesc" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="tbxMprice" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("price", "{0:C}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo">
                <EditItemTemplate>
                    <asp:FileUpload ID="fuPhoto" runat="server" ></asp:FileUpload>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("photo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="true" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
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
    <br />
    <form action="/action_page.php">
        <div class="container">
            <h1>Add Menu Item by Owner</h1>
            <p>Please fill in this form to add a Menu Item.</p>
            <hr>

            <label for="sD"><b>Menu Item Name</b></label>
            <asp:TextBox ID="tbxName" runat="server"></asp:TextBox>

            <label for="sT"><b>Price</b></label>
            <asp:TextBox ID="tbxPrice" runat="server"></asp:TextBox>

            <label for="sT"><b>Description</b></label>
            <asp:TextBox ID="tbxDesc" runat="server"></asp:TextBox>

            <label for="sT"><b>Photo</b></label>
            <asp:FileUpload ID="FileUpload1" runat="server" />

            <asp:Button ID="btnSubmit" ForeColor="White" BackColor="#009688" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
        </div>

    </form>
</asp:Content>


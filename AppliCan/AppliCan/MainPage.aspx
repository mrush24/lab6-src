<%@ Page Title="AppliCan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="AppliCan.MainPage" %>
<asp:Content ID="ContentMainH" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="ContentMainB" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
        <br />
        <asp:Label ID="Label3" runat="server" Text="To add a new job/company application to your list click “Create New Entry” <br>To remove an entry click on the desired entry and click “Delete”" Font-Size="Small"></asp:Label>
    </div>
    <br />
    <hr />
    <br />
    <div>
        <asp:Button ID="CreateButton" runat="server" Text="Create New Entry" OnClick="CreateButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="SearchTextBox" runat="server" Width="196px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="SearchButton" runat="server" Text="Search" />
    </div>
    <br />
    <asp:GridView ID="AccountGridView" runat="server">
</asp:GridView>
    <br />
    <hr />
    </asp:Content>
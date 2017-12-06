<%@ Page Title="AppliCan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="AppliCan.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <img alt="logo" class="auto-style1" src="file://myhome.itap.purdue.edu/puhome/pu.data/Desktop/AppliCanLogo.png" /><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="To add a new job/company application to your list click “Create New Entry” <br>To remove an entry click on the desired entry and click “Delete”" Font-Size="Small"></asp:Label>
    </div>
    <br />
    <hr />
    <br />
    <div>
        <asp:Button ID="CreateButton" runat="server" Text="Create New Entry" OnClick="CreateButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="SearchButton" runat="server" Text="Search" />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </div>
    <br />
    <asp:Table ID="Table1" runat="server" Height="57px" Width="143px"></asp:Table>
    <br />
    <hr />
    </asp:Content>
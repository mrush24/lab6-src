<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="AppliCan.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
    </div>
    <br />
    <hr />
    <br />
    <div>
        <asp:Button ID="Button1" runat="server" Text="Create New Entry" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Search" />
    </div>
    <br />
    <hr />
    <br />
    <asp:Table ID="Table1" runat="server" Height="105px" Width="178px"></asp:Table>
</asp:Content>
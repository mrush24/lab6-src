<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="AppliCan.SignUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Label ID="SignUpLabel" runat="server" Text="Create An Account" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </div>
    <br />
    <hr />
    <br />
    <br />
    <div align="center">
        <asp:Label ID="UsernameLabel" runat="server" Text="Username:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
    </div>
    <br />
    <div align="center">
        <asp:Label ID="PasswordLabel" runat="server" Text="Password:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
    </div>
    <br />
    <div align="center">
        <asp:Button ID="SignMeUpButton" runat="server" Text="Sign me up!" Font-Bold="True" onClick="SignMeUpButton_Click"/>
    </div>
    <br />
    <br />
    <hr />
    <br />
    <br />
    <div align="center">
        <asp:Label ID="AlreadyLabel" runat="server" Text="Already have an account?"></asp:Label>
        <br />
        <br />
        <asp:Button ID="LoginHereButton" runat="server" Text="Login Here!" Font-Bold="True" OnClick="LoginHereButton_Click" />
    </div>
</asp:Content>


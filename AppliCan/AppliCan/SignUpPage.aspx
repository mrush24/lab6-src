<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="AppliCan.SignUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 200px;
            height: 106px;
        }
        .SignMeUpButton {
            padding: 12px 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="usernamehide" runat="server" />
    <h2>Create Account</h2>
    <div align="center">
    <img alt="dfsd" class="auto-style4" longdesc="sdfsd" src="Images/applicanlogogogogoo.png" /><br />
         </div>
   <br />
    <div align="center">
        <label><b>Username</b></label> <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="UsernameTextBox" runat="server" Width="188px"></asp:TextBox>
    </div>
    <br />
    <div align="center">
        <label><b>Password</b></label> <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTextBox" runat="server" Width="189px"></asp:TextBox>
    </div>
    <br />
    <div align="center">
        <asp:Button class="SignMeUpButton" runat="server" Text="Sign me up!" Font-Bold="True" onClick="SignMeUpButton_Click" BackColor="#8BCCA4"/>
    </div>
    <br />
    <br />
    <div align="center">
        <asp:Label ID="AlreadyLabel" runat="server" Text="Already have an account?"></asp:Label>
        <br />
        <br />
        <asp:Button ID="LoginHereButton" runat="server" Text="Login Here" Font-Bold="True" onClick="LoginHereButton_Click" BackColor="#8BCCA4" />
    </div>
</asp:Content>


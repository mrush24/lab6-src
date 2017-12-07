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
        <asp:Button class="SignMeUpButton" runat="server" Text="Sign me up!" Font-Bold="True" onClick="SignMeUpButton_Click" BackColor="#8BCCA4"/>
    </div>
    <br />
    <br />
    <br />
    <br />
    <div align="center">
        <asp:Label ID="AlreadyLabel" runat="server" Text="Already have an account?"></asp:Label>
        <br />
        <br />
<<<<<<< HEAD
        <asp:Button ID="LoginHereButton" runat="server" Text="Login Here" Font-Bold="True" onClick="LoginHereButton_Click" BackColor="#8BCCA4" />
=======
<<<<<<< HEAD
        <asp:Button ID="LoginHereButton" runat="server" Text="Login Here!" Font-Bold="True" onClick="LoginHereButton_Click"/>
=======
        <asp:Button ID="LoginHereButton" runat="server" Text="Login Here!" Font-Bold="True" onClick="LoginHereButton_Click" />
>>>>>>> c4b86313396ed0f117e1a6bb207f56e04c7180cb
>>>>>>> 51c86c41151769b01b25c6b502586c028af4bd3b
    </div>
</asp:Content>


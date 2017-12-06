<%@ Page Title ="Login Page" Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="AppliCan.LoginPage" %>

<asp:Content ID="ContentLogin" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:HiddenField ID="usernamehide" runat="server" />
        <div align="center">
            <br />
            Username:  &nbsp; &nbsp; 
        <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Password: &nbsp; &nbsp; 
        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Button ID="LoginButton" runat="server" Text="Login" Width="100px" OnClick="LoginButton_Click" />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </div>
    </asp:Content>
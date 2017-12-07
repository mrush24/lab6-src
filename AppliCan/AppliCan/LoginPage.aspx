<%@ Page Title ="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="AppliCan.LoginPage" %>



<asp:Content ID="ContentLogin" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:HiddenField ID="usernamehide" runat="server" />
    <h2>Login</h2>
        <div class="container" align ="center">
            <img alt="lgog" class="auto-style4" longdesc="go" src="Images/applicanlogogogogoo.png" /><br />
            <label><b>Username</b></label>  
        <br />
        <asp:TextBox ID="UserNameTextBox" runat="server" OnTextChanged="UserNameTextBox_TextChanged" Width="188px" style="margin-left: 0px"></asp:TextBox>
        <br />
        <br />
        <label><b>Password</b></label> &nbsp; &nbsp; <br />
        <asp:TextBox ID="PasswordTextBox" runat="server" Width="189px"></asp:TextBox>
        <br />
        <br />
            <asp:Button ID="LoginButton" runat="server" Text="Login" Width="133px" OnClick="LoginButton_Click" Font-Bold="true" BackColor="#8BCCA4" />
    <p>
            <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="CreateAccount_Click" Font-Bold="true" BackColor="#8BCCA4" />
            </p>
            <asp:CheckBox ID="RememberMe" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="     Remember me" /> <br /><br />
            <span class="psw"><a href="#">Forgot password?</a></span>
    <p>
        &nbsp;</p>
    </div>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style3 {
        width: 229px;
        height: 121px;
    }
</style>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="AppliCan.DefaultPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align ="center">
    <table style="width:100%; height:100%;">
        
        <td class="auto-style2">
            <asp:Button ID="LoginButton" runat="server" Text="Log In" width="100px" PostBackUrl="~/LoginPage.aspx"/>
        </td>
        <td class="auto-style2">
            <asp:Button ID="SignupButton" runat="server" Text="Sign Up"  width="100px" PostBackUrl="~/SignUpPage.aspx" />
        </td>
            
    </table>
     </div>
    
</asp:Content>

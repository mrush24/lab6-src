﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="AppliCan.DefaultPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 111px;
        }
        .auto-style3 {
            height: 200px;
            width: 414px;
        }
        .auto-style4 {
            height: 200px;
            width: 383px;
        }
        .LoginButton {
            padding: 14px 20px;
            border-radius: inherit;
        }
        .SignupButton {
            padding: 14px 20px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align ="center">
    <table style="width:100%; height:100%;">
        
        <td alight="center">
            <asp:Button class="LoginButton" runat="server" Text="Log In" width="201px" border-radius="12px" PostBackUrl="~/LoginPage.aspx" BackColor="#8BCCA4"/>
            <br /><br />
            <asp:Button class="SignupButton" runat="server" Text="Sign Up"  width="204px" PostBackUrl = "~/SignUpPage.aspx" BackColor="#8BCCA4"/>
        </td>
                 
    </table>
     </div>
    
</asp:Content>

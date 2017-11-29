<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="AppliCan.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1><asp:Label ID="Label2" runat="server" Text="AppliCan"></asp:Label></h1>
         <br />
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
        <br />
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="AppliCan.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1><asp:Label ID="Label2" runat="server" Text="AppliCan"></asp:Label></h1>
    </div>
    <br />
    <div>
        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
    </div>
    <br />
    <hr />
    <br />
    <div>
        <asp:Label ID="Label1" runat="server" Text="Job Title/Company Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <br />
    <div>
        <asp:Label ID="Label11" runat="server" Text="Favorite"></asp:Label>
        <asp:CheckBox ID="CheckBox2" runat="server" BorderColor="Yellow" BorderStyle="Solid" Text=" " />
    </div>
    <br />
    <div>
        <asp:Label ID="Label4" runat="server" Text="Applied?"></asp:Label>
        <asp:CheckBox ID="CheckBox1" runat="server" Text=" " />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
            <asp:ListItem>In progress</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <br />
    <div>
        <asp:Label ID="Label5" runat="server" Text="Date Applied:"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
    </div>
    <br />
    <div>
        <asp:Label ID="Label6" runat="server" Text="Date Application Closes:"></asp:Label>
        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
    </div>
    <br />
    <div>
        <asp:Label ID="Label7" runat="server" Text="Contact Info (email, url, etc.)"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="62px" Width="222px"></asp:TextBox>
    </div>
    <br />
    <div>
        <asp:Label ID="Label8" runat="server" Text="Asked for Interview?"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
            <asp:ListItem>Unsure</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    <br />
    <div>
        <asp:Label ID="Label9" runat="server" Text="Interview Date:"></asp:Label>
        <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
    </div>
    <br />
    <div>
        <asp:Label ID="Label10" runat="server" Text="Notes"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="159px" Width="253px"></asp:TextBox>
    </div>
</asp:Content>
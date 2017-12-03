<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEntry.aspx.cs" Inherits="AppliCan.CreateEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
            <asp:Label ID="Label12" runat="server" Text="Location"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label11" runat="server" Text="Favorite"></asp:Label>
            <asp:CheckBox ID="CheckBox2" runat="server" BorderColor="Yellow" BorderStyle="Solid" Text=" " />
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="Applied?"></asp:Label>
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
            <asp:Label ID="Label10" runat="server" Text="Notes about position:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="159px" Width="253px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label14" runat="server" Text="Notes about company:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Height="159px" Width="253px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label13" runat="server" Text="Offer?"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList3" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Unsure</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label15" runat="server" Text="Offer Info:"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Height="102px" Width="234px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label16" runat="server" Text="Offer given"></asp:Label>
            <asp:Calendar ID="Calendar4" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
            <asp:Label ID="Label17" runat="server" Text="Offer deadline"></asp:Label>
            <asp:Calendar ID="Calendar5" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
            <asp:Button ID="Button1" runat="server" Text="CREATE" Height="40px" OnClick="Button1_Click" Width="94px" />
        </div>
    </div>
    </form>
</body>
</html>

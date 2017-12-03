﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEntry.aspx.cs" Inherits="AppliCan.CreateEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create New Entry</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:Label ID="CreateNewLabel" runat="server" Text="Create New"></asp:Label>
        </div>
        <br />
        <hr />
        <br />
        <table style="width:100%;">
            <tr>
                <td>
                    <div>
                        <asp:Label ID="JobTCompNLabel" runat="server" Text="Job Title/Company Name:"></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="JobTCompN" runat="server" Width="200px"></asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="LocationLabel" runat="server" Text="Location:"></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="CountryDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CountryDropDownList_SelectedIndexChanged">
                            
                        </asp:DropDownList>
                        &nbsp;
                        <asp:DropDownList ID="StateDropDownList" runat="server" Visible="False" OnSelectedIndexChanged="StateDropDownList_SelectedIndexChanged">
                            
                        </asp:DropDownList>
                        &nbsp;
                        <asp:DropDownList ID="CityDropDownList" runat="server" Visible="False">
                            
                        </asp:DropDownList>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="FavLabel" runat="server" Text="Favorite:"></asp:Label>
                        &nbsp;
                        <asp:CheckBox ID="FavCheckBox" runat="server" BorderColor="Yellow" BorderStyle="Solid" Text=" " />
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="AppliedLabel" runat="server" Text="Applied?"></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="AppliedDDL" runat="server" OnSelectedIndexChanged="AppliedDDL_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>In Progress</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <asp:Panel ID="AppliedPanel" runat="server" Visible="False">
                        <div>
                            <asp:Label ID="DateAppliedLabel" runat="server" Text="Date Applied:"></asp:Label>
                            <asp:Calendar ID="DateAppliedCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                            <asp:Label ID="DateAppClosesLabel" runat="server" Text="Date Application Closes:"></asp:Label>
                            <asp:Calendar ID="DateAppClosesCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                            <asp:Label ID="ContactLabel" runat="server" Text="Contact Info: (email, url, etc.)"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="ContactTextBox" runat="server" Height="100px" Width="250px"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="AskedInterviewLabel" runat="server" Text="Asked for Interview?"></asp:Label>
                            &nbsp;
                            <asp:DropDownList ID="AskedInterviewDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="AskedInterviewDropDownList_SelectedIndexChanged">
                                <asp:ListItem>TBD</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <asp:Panel ID="InterviewPanel" runat="server" Visible="False">
                            <div>
                                <asp:Label ID="InterviewDateLabel" runat="server" Text="Interview Date:"></asp:Label>
                                <asp:Calendar ID="InterviewDateCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                        </asp:Panel>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="EntireLeftColumnPanel" runat="server" Visible="False">
                        <div>
                            &nbsp;
                            <asp:Label ID="NotesPositionLabel" runat="server" Text="Notes about position:"></asp:Label>
                            <asp:TextBox ID="NotesPositionTextBox" runat="server" Height="100px" Width="250px"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="NotesCompLabel" runat="server" Text="Notes about company:"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="NotesCompTextBox" runat="server" Height="100px" Width="250px"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="OfferLabel" runat="server" Text="Offer?"></asp:Label>
                            &nbsp;
                            <asp:DropDownList ID="OfferDropDownList" runat="server" OnSelectedIndexChanged="OfferDropDownList_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>TBD</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <br />
                        <asp:Panel ID="OfferPanel" runat="server" Visible="False">
                            <div aria-orientation="horizontal">
                                <asp:Label ID="OfferInfoLabel" runat="server" Text="Offer Info:"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="OfferInfoTextBox" runat="server" Height="100px" Width="250px"></asp:TextBox>
                            </div>
                            <br />
                            <div>
                                <asp:Label ID="OfferGivenLabel" runat="server" Text="Offer given"></asp:Label>
                                <asp:Calendar ID="OfferGivenCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                                <asp:Label ID="OfferDeadlineLabel" runat="server" Text="Offer deadline"></asp:Label>
                                <asp:Calendar ID="OfferDeadlineCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        
        
        
        
        <br />
        <div>
            <asp:Button ID="CreateButton" runat="server" Text="CREATE" Height="40px" Width="94px" />
            <asp:Button ID="PopUp" runat="server" Text="PopUp" OnClientClick="popuppp()" />
            <script type="text/javascript">
                function popuppp() {
                    var popup = window.open("MainPage.aspx", "PopupExample", "scrollbars=yes,resizable=1,height=1000,width=1000");
                    popup.moveTo(5, 5);
                    popup.focus();
                }
            </script>
        </div>
    </div>
    </form>
</body>
</html>
<%@ Page Title="AppliCan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="AppliCan.MainPage" %>
<asp:Content ID="ContentMainH" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="ContentMainB" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function loadingname() {
            var user = '<%=Session["Data"]%>'
            var userhide = document.getElementById('<%= usernamehidden.ClientID%>').value
            userhide.value = user
            var post = isPosted()
            if (post == 'False') {
                document.forms[0].submit()
            }
        }
        function isPosted() {
            var ret = '<%= Page.IsPostBack%>'
            return ret
        }
    </script>
    <body onload="loadingname();" align="center">
    <asp:HiddenField ID="usernamehidden" runat="server" />

    <div>
        
        <br />
        <asp:Label ID="Label3" runat="server" Text="To add a new job/company application to your list click “Create New Entry” <br>To remove an entry click on the desired entry and click “Delete”" Font-Size="Small"></asp:Label>
    </div>
    <br />
    <hr />
    <br />
    <div>
        <asp:Button ID="CreateButton" runat="server" Text="Create New Entry" OnClick="CreateButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="SearchTextBox" runat="server" Width="196px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="SearchButton" runat="server" Text="Search" />
    </div>
    <br />
    <asp:GridView ID="AccountGridView" runat="server" OnRowDataBound="AccountGridView_RowDataBound" AutoGenerateColumns="False" DataSourceID="AccountInfoSqlDataSource">
        <Columns>
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" SortExpression="JobTitle" />
            <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
            <asp:BoundField DataField="HasApplied" HeaderText="Applied?" SortExpression="HasApplied" />
            <asp:BoundField DataField="DateAppCloses" HeaderText="Apply By" SortExpression="DateAppCloses" />
            <asp:BoundField DataField="DateInterview" HeaderText="Interview Date" SortExpression="DateInterview" />
            <asp:BoundField DataField="DateOfferDeadline" HeaderText="Offer Deadline" SortExpression="DateOfferDeadline" />
        </Columns>
</asp:GridView>
        <script type="text/javascript">
            function ShowPopup(user) {
                var popup = window.open("PopUp1.aspx", "ApplicationDetails");
                popup.moveTo(10, 10);
                var gridview = document.getElementById('<%=AccountGridView.ClientID%>')
                gridview.setAttribute("onclick", user)
            }
        </script>
        <asp:SqlDataSource ID="AccountInfoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:applicanConnectionString %>" SelectCommand="SELECT [JobTitle], [CompanyName], [HasApplied], [DateAppCloses], [DateInterview], [DateOfferDeadline] FROM [AppliCanEntries] WHERE ([Enabled] = @Enabled)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Enabled" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
    <hr />


        <asp:Panel ID="ErrorPanel" runat="server" Visible="False">
            <div align="center">
                <asp:Label ID="PageNotFoundLabel" runat="server" Text="Page Not Found"></asp:Label>
                <br />
                <br />
                <hr />
                <br />
                <asp:Button ID="ReturnButton" runat="server" Text="Return To Start Page" onClick="ReturnButton_Click" Font-Bold="True"/>
            </div>
        </asp:Panel>


        </body>
    </asp:Content>
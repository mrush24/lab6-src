﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUp1.aspx.cs" Inherits="AppliCan.PopUp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Pop Up</title>
	</head>

<body>
	<form id="form1" runat="server">
    <div>
			<div>
                <asp:Label ID="TitleName" runat="server" Text="Entry data"></asp:Label>
			</div>
            <br />
			<hr />
            <br />
              <table style="width:100%;">
            <tr>
                <td>
                    <div>
					    
                        <asp:Label ID="JobTCompN" runat="server" Text="Company Name:"></asp:Label>
					    <br /><br />
                        <asp:Label ID="DueDate" runat="server" Text="Date Application Closes:"></asp:Label>
						<br /><br />
				        <asp:Label ID="DateApplied" runat="server" Text="Date Applied:"></asp:Label>
					    <br /><br />
	                    <asp:Label ID="AskedforInterview" runat="server" Text="Asked for interview?"></asp:Label>
						<br /><br />
                        <asp:Label ID="OfferInfo" runat="server" Text="Offer Details:"></asp:Label>
						<br /><br />
                        <asp:Label ID="Deadline" runat="server" Text="Offer Deadline:"></asp:Label>
						<br /><br />
					    <asp:Label ID="Notes" runat="server" Text="Notes:"></asp:Label>


                    </div>
				</td>
				
			</tr>
               </table>
			</div>
	</form>
			
</body>
</html>
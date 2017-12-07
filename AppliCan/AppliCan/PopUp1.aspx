<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUp1.aspx.cs" Inherits="AppliCan.PopUp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Pop Up</title>
	</head>

<body onload ="">
	<form id="form1" runat="server">
    <div>
			<div>
                Details</div>
            <br />
			<hr />
            <br />
              <table style="width:100%;">
            <tr>
                <td>
                    <div>
					    <div>
                            <asp:Label ID="JobTitleLabel" runat="server" Text="Job Title:"></asp:Label>
                            &nbsp;
                            <asp:Label ID="JobTitleHere" runat="server"></asp:Label>
                        </div>
					    <br />
                        <div>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text="Company Name:"></asp:Label>
                            &nbsp;
					        <asp:Label ID="CompanyNameHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="LocationLabel" runat="server" Text="Company Name:"></asp:Label>
                            &nbsp;
					        <asp:Label ID="LocationHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="FavoriteLabel" runat="server" Text="Favorite:"></asp:Label>
                            &nbsp;
                            <asp:Label ID="FavoriteHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="HasAppliedLabel" runat="server" Text="Has Applied:"></asp:Label>
                            &nbsp;
                            <asp:Label ID="HasAppliedHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="DateAppClosesLabel" runat="server" Text="Date Application Closes:"></asp:Label>
						    &nbsp;
                            <asp:Label ID="DateAppClosesHere" runat="server"></asp:Label>
                        </div>
						<br />
                        <div>
				            <asp:Label ID="DateAppliedLabel" runat="server" Text="Date Applied:"></asp:Label>
					        &nbsp;
                            <asp:Label ID="DateAppliedHere" runat="server"></asp:Label>
					    </div>
                        <br />
                        <div>
                            <asp:Label ID="PositionNotesLabel" runat="server" Text="Notes about position:"></asp:Label>
                            &nbsp;
                            <asp:Label ID="PositionNotesHere" runat="server"></asp:Label>
                        </div>
                        <br  />
                        <div>
                            <asp:Label ID="CompanyNotesLabel" runat="server" Text="Notes about company:"></asp:Label>
                            &nbsp;
                            <asp:Label ID="CompanyNotesHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="ContactInfoLabel" runat="server" Text="Contact Info: (email, url, etc.)"></asp:Label>
                            &nbsp;
                            <asp:Label ID="ContactInfoHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="HasInterviewLabel" runat="server" Text="Label"></asp:Label>
                            &nbsp;
                            <asp:Label ID="HasInterviewHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="DateInterviewLabel" runat="server" Text="Label"></asp:Label>
                            &nbsp
                            <asp:Label ID="DateInterviewHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="HasOfferLabel" runat="server" Text="Label"></asp:Label>
                            &nbsp;
                            <asp:Label ID="HasOfferHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="OfferNotesLabel" runat="server" Text="Label"></asp:Label>
                            &nbsp;
                            <asp:Label ID="OfferNotesHere" runat="server"></asp:Label>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            &nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </div>
	                    <asp:Label ID="AskedforInterview" runat="server" Text="Asked for interview?"></asp:Label>
						&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
						<br /><br />
                        <asp:Label ID="OfferInfo" runat="server" Text="Offer Details:"></asp:Label>
						&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
						<br /><br />
                        <asp:Label ID="Deadline" runat="server" Text="Offer Deadline:"></asp:Label>
						&nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
						<br /><br />
					    <asp:Label ID="Notes" runat="server" Text="Notes:"></asp:Label>


                    &nbsp;<asp:Label ID="Label7" runat="server"></asp:Label>


                    </div>
				</td>
				
			</tr>
               </table>
			</div>
	</form>
			
</body>
</html>
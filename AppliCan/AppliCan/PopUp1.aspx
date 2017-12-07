<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUp1.aspx.cs" Inherits="AppliCan.PopUp1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Entry Details</title>
	</head>

<body onload ="">
	<form id="form1" runat="server">
    <div>
			<div><h2>Entry Details</h2></div>
            <br />
			<hr />
            <br />
              <table style="width:100%;">
            <tr>
                <td>
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
                                <asp:Label ID="PositionNotesLabel" runat="server" Text="Notes about position:"></asp:Label>
                                &nbsp;
                                <asp:Label ID="PositionNotesHere" runat="server"></asp:Label>
                            </div>
                            <br />
                            <div>
                                <asp:Label ID="CompanyNotesLabel" runat="server" Text="Notes about company:"></asp:Label>
                                &nbsp;
                                <asp:Label ID="CompanyNotesHere" runat="server"></asp:Label>
                            </div>
                        </td>
                        <td>
                            <asp:Panel ID="AppliedPanel" runat="server" Visible="False">
                                <div>
				                    <asp:Label ID="DateAppliedLabel" runat="server" Text="Date Applied:"></asp:Label>
					                &nbsp;
                                    <asp:Label ID="DateAppliedHere" runat="server"></asp:Label>
					            </div>
                                <br />
                                <div>
                                    <asp:Label ID="ContactInfoLabel" runat="server" Text="Contact Info: (email, url, etc.)"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="ContactInfoHere" runat="server"></asp:Label>
                                </div>
                                <br />
                                <div>
                                    <asp:Label ID="HasInterviewLabel" runat="server" Text="Interview:"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="HasInterviewHere" runat="server"></asp:Label>
                                </div>
                                <asp:Panel ID="InterviewPanel" runat="server" Visible="false">
                                    <br />
                                    <div>
                                        <asp:Label ID="DateInterviewLabel" runat="server" Text="Interview Date:"></asp:Label>
                                        &nbsp
                                        <asp:Label ID="DateInterviewHere" runat="server"></asp:Label>
                                    </div>
                                    <br />
                                    <div>
                                        <asp:Label ID="HasOfferLabel" runat="server" Text="Offer:"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="HasOfferHere" runat="server"></asp:Label>
                                    </div>
                                    <asp:Panel ID="OfferPanel" runat="server" Visible="false">
                                        <br />
                                        <div>
                                            <asp:Label ID="OfferNotesLabel" runat="server" Text="Offer Info:"></asp:Label>
                                            &nbsp;
                                            <asp:Label ID="OfferNotesHere" runat="server"></asp:Label>
                                        </div>
                                        <br />
                                        <div>
                                            <asp:Label ID="DateOfferGivenLabel" runat="server" Text="Offer Given:"></asp:Label>
                                            &nbsp;
                                            <asp:Label ID="DateOfferGivenHere" runat="server"></asp:Label>
                                        </div>
                                        <br />
                                        <div>
                                            <asp:Label ID="DateOfferDeadlineLabel" runat="server" Text="Offer Deadline:"></asp:Label>
                                            &nbsp;
                                            <asp:Label ID="DateOfferDeadlineHere" runat="server"></asp:Label>
                                        </div>
                                    </asp:Panel>
                                </asp:Panel>
                            </asp:Panel>
				</td>
				
			</tr>
               </table>
			</div>
        <br />
        <hr />
        <br />
        <div align="center">
            <asp:Button ID="EditButton" runat="server" Text="Edit" onClick="EditButton_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="RemoveButton" runat="server" Text="Remove" />
        </div>

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
	</form>
			
</body>
</html>
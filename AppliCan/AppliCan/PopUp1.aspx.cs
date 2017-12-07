using System;
using System.Web;
using System.Web.UI;
namespace AppliCan
{
    public partial class PopUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (applicanEntities ae = new applicanEntities())
            {
                var entry = new AppliCanEntry();
                //entry.AccountUser = textbox.text;
                JobTitleHere.Text = entry.JobTitle;
                CompanyNameHere.Text = entry.CompanyName;
                //Check what type this is
                if (entry.Favorite == 0)
                {
                    FavoriteHere.Text = "No";
                }
                else if (entry.Favorite == 1)
                {
                    FavoriteHere.Text = "Yes";
                }
                LocationHere.Text = entry.Location;
                DateAppClosesHere.Text = entry.DateAppCloses + "";
                DateAppliedHere.Text = entry.HasApplied;
                PositionNotesHere.Text = entry.PositionNotes;
                CompanyNotesHere.Text = entry.CompanyNotes;
                if (entry.HasApplied == "Yes")
                {
                    AppliedPanel.Visible = true;
                    DateAppliedHere.Text = entry.DateApplied + "";
                    HasInterviewHere.Text = entry.HasInterview;
                    if (entry.HasInterview == "Yes")
                    {
                        InterviewPanel.Visible = true;
                        DateInterviewHere.Text = entry.DateInterview + "";
                        HasOfferHere.Text = entry.HasOffer;
                        if (entry.HasOffer == "Yes")
                        {
                            OfferPanel.Visible = true;
                            OfferNotesHere.Text = entry.OfferNotes;
                            DateOfferGivenHere.Text = entry.DateOfferGiven + "";
                            DateOfferDeadlineHere.Text = entry.DateOfferDeadline + "";
                            ContactInfoHere.Text = entry.ContactInfo;
                        }
                    }
                }
            }
        }
    }
    
}

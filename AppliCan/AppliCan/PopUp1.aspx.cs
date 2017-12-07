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
                var entry = ae.AppliCanEntries.;
                //entry.AccountUser = textbox.text;
                JobTitleHere.Text = entry.JobTitle;
                CompanyNameHere.Text = entry.CompanyName;
                //Check what type this is
                FavoriteHere.Text = entry.Favorite;
                LocationHere.Text = entry.Location;
                DateAppClosesHere.Text = entry.DateAppCloses;
                DateAppliedHere.Text = entry.HasApplied;
                PositionNotesHere.Text = entry.PositionNotes;
                CompanyNotesHere.Text = entry.CompanyNotes;
                if (entry.HasApplied == "Yes")
                {
                    DateAppliedCalendar.SelectedDate = entry.DateApplied;
                    AskedInterviewDropDownList.SelectedValue = entry.HasInterview;
                    if (entry.HasInterview == "Yes")
                    {
                        entry.DateInterview = InterviewDateCalendar.SelectedDate;
                        entry.HasOffer = OfferDropDownList.SelectedValue;
                        if (entry.HasOffer == "Yes")
                        {
                            OfferNotes.Text = entry.OfferNotes;
                            DateOfferGiven.text = entry.DateOfferGiven;
                            DateOfferDeadline.text = entry.DateOfferDeadline;
                            ContactInfo.Text = entry.ContactInfo;
                        }
                    }
                }
        }
    }
    
}

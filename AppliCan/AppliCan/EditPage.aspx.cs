using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppliCan
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (applicanEntities ae = new applicanEntities())
            {
                var entry = new AppliCanEntry();
                JobTitleTextBox.Text = entry.JobTitle;
                CompanyNameTextBox.Text = entry.CompanyName;
                var location = entry.Location;
                Char[] split = { ',', ' ' };
                String[] country = location.Split(split);
                CountryDropDownList.SelectedValue = country[0];
                StateDropDownList.SelectedValue = country[2];
                if (entry.Favorite == 0)
                {
                    FavCheckBox.Checked = false;
                }
                else if (entry.Favorite == 1)
                {
                    FavCheckBox.Checked = true;
                }
                AppliedDDL.SelectedValue = entry.HasApplied;
                DateAppClosesCalendar.SelectedDate = (System.DateTime)entry.DateAppCloses;
                NotesPositionTextBox.Text = entry.PositionNotes;
                NotesCompTextBox.Text = entry.CompanyNotes;
                ContactTextBox.Text = entry.ContactInfo;
                if (entry.HasApplied == "Yes")
                {
                    AppliedPanel.Visible = true;
                    MiddleAppliedPanel.Visible = true;
                    DateAppliedCalendar.SelectedDate = (System.DateTime)entry.DateApplied;
                    AskedInterviewDropDownList.SelectedValue = entry.HasInterview;
                    if (entry.HasInterview == "Yes")
                    {
                        InterviewPanel.Visible = true;
                        EntireRightColumnPanel.Visible = true;
                        InterviewDateCalendar.SelectedDate = (System.DateTime)entry.DateInterview;
                        OfferDropDownList.SelectedValue = entry.HasOffer;
                        if (entry.HasOffer == "Yes")
                        {
                            OfferPanel.Visible = true;
                            OfferInfoTextBox.Text = entry.OfferNotes;
                            OfferGivenCalendar.SelectedDate = (System.DateTime)entry.DateOfferGiven;
                            OfferDeadlineCalendar.SelectedDate = (System.DateTime)entry.DateOfferDeadline;
                        }
                    }
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppliCan
{
    public partial class CreateEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // JobTCompN.Text = "YOOOOOOO";
            }
        }

        protected void AppliedDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (AppliedDDL.SelectedValue == "Yes")
            {
                AppliedPanel.Visible = true;
                EntireRightColumnPanel.Visible = true;
                MiddleAppliedPanel.Visible = true;
            }
            else
            {
                AppliedPanel.Visible = false;
                EntireRightColumnPanel.Visible = false;
                InterviewPanel.Visible = false;
                OfferPanel.Visible = false;
                MiddleAppliedPanel.Visible = false;
                AskedInterviewDropDownList.SelectedValue = "TBD";
                OfferDropDownList.SelectedValue = "TBD";
            }
        }

        protected void CountryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            StateDropDownList.Visible = true;
        }

        protected void StateDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CityDropDownList.Visible = true;
        }

        protected void AskedInterviewDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (AskedInterviewDropDownList.SelectedValue == "Yes")
            {
                InterviewPanel.Visible = true;
            }
            else
            {
                InterviewPanel.Visible = false;
            }
        }

        protected void OfferDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (OfferDropDownList.SelectedValue == "Yes")
            {
                OfferPanel.Visible = true;
            }
            else
            {
                OfferPanel.Visible = false;
            }
        }

        protected void ReturnButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DefaultPage.aspx");
        }

        protected void CreateButton_Click(object sender, EventArgs e)
        {
            using (applicanEntities ae = new applicanEntities())
            {
                var entry = ae.AppliCanEntries.;
                //entry.AccountUser = textbox.text;
                entry.JobTitle = JobTitleTextBox.Text;
                entry.CompanyName = CompanyNameTextBox.Text;
                //Check what type this is
                entry.Favorite = FavCheckBox.Checked;
                entry.Location = CountryDropDownList.SelectedValue + " " + StateDropDownList.SelectedValue + " " + CityDropDownList;
                entry.HasApplied = AppliedDDL.SelectedValue;
                entry.DateAppCloses = DateAppClosesCalendar.SelectedDate;
                entry.PositionNotes = NotesPositionTextBox.Text;
                entry.CompanyNotes = NotesCompTextBox.Text;
                if (entry.HasApplied == "Yes")
                {
                    entry.DateApplied = DateAppliedCalendar.SelectedDate;
                    entry.HasInterview = AskedInterviewDropDownList.SelectedValue;
                    if (entry.HasInterview == "Yes")
                    {
                        entry.DateInterview = InterviewDateCalendar.SelectedDate;
                        entry.HasOffer = OfferDropDownList.SelectedValue;
                        if (entry.HasOffer == "Yes")
                        {
                            entry.OfferNotes = OfferInfoTextBox.Text;
                            entry.DateOfferGiven = OfferGivenCalendar.SelectedDate;
                            entry.DateOfferDeadline = OfferDeadlineCalendar.SelectedDate;
                            entry.ContactInfo = ContactTextBox.Text;
                        }
                    }
                }
                //entry.enabled = 0;
            }
        }
    }
}
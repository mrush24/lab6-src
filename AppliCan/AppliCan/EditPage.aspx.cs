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
            if (!IsPostBack)
            {
                CountryDropDownList.AppendDataBoundItems = true;
                CountryDropDownList.Items.Insert(0, new ListItem("--select--", "0"));
                StateDropDownList.AppendDataBoundItems = true;
                StateDropDownList.Items.Insert(0, new ListItem("--select--", "0"));
            }
            if (IsPostBack)
            {
                if (usernamehidden.Value != null)
                {
                    ErrorPanel.Visible = false;
                    Hide.Visible = true;

                    using (applicanEntities ae = new applicanEntities())
                    {
                        var num = Convert.ToInt32(IDhidden.Value);
                        var entry = ae.AppliCanEntries.Find(num);
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
                       // ae.AppliCanEntries.Add(entry);
                       // ae.SaveChanges();
                    }
                }
                else
                {
                    ErrorPanel.Visible = true;
                    Hide.Visible = false;
                }
            }
            
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            using (applicanEntities ae = new applicanEntities())
            {
                var num = Convert.ToInt32(IDhidden.Value);
                var entry = ae.AppliCanEntries.Find(num);
                //entry.AccountUser = textbox.text;
                entry.JobTitle = JobTitleTextBox.Text;
                entry.CompanyName = CompanyNameTextBox.Text;
                //Check what type this is
                if (FavCheckBox.Checked)
                {
                    entry.Favorite = 1;
                }
                else
                {
                    entry.Favorite = 0;
                }
                entry.Location = CountryDropDownList.SelectedValue + ", " + StateDropDownList.SelectedValue;
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
                entry.Enabled = 1;
                ae.SaveChanges();
            }
            Session["ID"] = IDhidden.Value;
            Session["Data"] = usernamehidden.Value;
        }

        protected void CountryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AppliedDDL_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AskedInterviewDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void OfferDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ReturnButton_Click(object sender, EventArgs e)
        {

        }
    }
}
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
               // StateDropDownList.AutoPostBack = true;
                StateDropDownList.Visible = true;
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
                        if (JobTitleTextBox.Text == "")
                        {
                            JobTitleTextBox.Text = entry.JobTitle;
                        }
                        if (CompanyNameTextBox.Text == "")
                        {
                            CompanyNameTextBox.Text = entry.CompanyName;
                        }
                        
                        if (CountryDropDownList.SelectedValue == "0")
                        {
                            var location = entry.Location;
                            Char[] split = { ',', ' ' };
                            String[] country = location.Split(split);
                            if (country[0] != "")
                            {
                                CountryDropDownList.SelectedValue = country[0];
                                if (country[0] == "USA")
                                {
                                    //StateDropDownList.Visible = true;
                                    if (country[2] != "")
                                    {
                                        StateDropDownList.SelectedValue = country[2];
                                    }
                                    else
                                    {
                                        StateDropDownList.SelectedValue = "0";
                                    }
                                }
                                else
                                {
                                    StateDropDownList.Visible = false;
                                }
                            }
                            else
                            {
                                CountryDropDownList.SelectedValue = "0";
                            }
                        }
                        
                        if (entry.Favorite == 0)
                        {
                            FavCheckBox.Checked = false;
                        }
                        else if (entry.Favorite == 1)
                        {
                            FavCheckBox.Checked = true;
                        }
                        if (AppliedDDL.SelectedValue == "No")
                        {
                            AppliedDDL.SelectedValue = entry.HasApplied;
                        }
                        if (DateAppClosesCalendar.SelectedDate == DateTime.Today)
                        {
                            DateAppClosesCalendar.SelectedDate = (System.DateTime)entry.DateAppCloses;

                        }
                        if (NotesPositionTextBox.Text == "")
                        {
                            NotesPositionTextBox.Text = entry.PositionNotes;
                        }
                        if (NotesCompTextBox.Text == "")
                        {
                            NotesCompTextBox.Text = entry.CompanyNotes;
                        }
                        if (ContactTextBox.Text == "")
                        {
                            ContactTextBox.Text = entry.ContactInfo;
                        }
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
               // ContactTextBox.Text = "PLEASE?";
                entry.ContactInfo = ContactTextBox.Text;
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
                            //entry.ContactInfo = ContactTextBox.Text;
                        }
                    }
                }
                entry.Enabled = 1;
                ae.SaveChanges();
            }
            Session["ID"] = IDhidden.Value;
            Session["Data"] = usernamehidden.Value;
            string script1 = "alert('This record has been saved.');";
            string script2 = "window.close();";
            string scriptTry = "window.opener.location.reload();";
            string script3 = "window.opener.document.forms[0].submit();";
            string script = script1 + script2 + scriptTry;// script3;
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        }

      

        protected void ReturnButton_Click(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Web;
using System.Web.UI;
namespace AppliCan
{
    public partial class PopUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (usernamehide.Value != null || usernamehide.Value != "")
                {
                    ErrorPanel.Visible = false;
                    Hide.Visible = true;

                    using (applicanEntities ae = new applicanEntities())
                    {
                        int num = Convert.ToInt32(IDhidden.Value);
                        var entry = ae.AppliCanEntries.Find(num);
                        if (entry.Enabled == 1)
                        {
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
                            HasAppliedHere.Text = entry.HasApplied;
                            DateAppClosesHere.Text = entry.DateAppCloses + "";
                            DateAppliedHere.Text = entry.HasApplied;
                            PositionNotesHere.Text = entry.PositionNotes;
                            CompanyNotesHere.Text = entry.CompanyNotes;
                            ContactInfoHere.Text = entry.ContactInfo;
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
                                    }
                                }
                            }
                        }
                        else
                        {
                            ErrorPanel.Visible = true;
                            Hide.Visible = false;
                        }
                    }
                }
                else
                {
                    ErrorPanel.Visible = true;
                    Hide.Visible = false;
                }
            }
            
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            
            Session["ID"] = IDhidden.Value;
            Session["Data"] = usernamehide.Value;
            Response.Redirect("~/EditPage.aspx");
        }

        protected void RemoveButton_Click(object sender, EventArgs e)
        {
            using (applicanEntities ae = new applicanEntities())
            {
                var num = Convert.ToInt32(IDhidden.Value);
                var entry = ae.AppliCanEntries.Find(num);
                entry.Enabled = 0;
                ae.SaveChanges();
            }
            //Response.Redirect("~/MainPage.aspx");
            Session["ID"] = IDhidden.Value;
            Session["Data"] = usernamehide.Value;
            string script1 = "alert('This record has been deleted.');";
            string script2 = "window.close();";
            string script3 = "window.opener.document.forms[0].submit();";
            string script = script1 + script2 + script3;
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        }

        protected void ReturnButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DefaultPage.aspx");
        }
    }
    
}

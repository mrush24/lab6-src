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
                EntireLeftColumnPanel.Visible = true;
            }
            else
            {
                AppliedPanel.Visible = false;
                EntireLeftColumnPanel.Visible = false;
                InterviewPanel.Visible = false;
                OfferPanel.Visible = false;
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
    }
}
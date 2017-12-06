using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppliCan
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlDataSource GridSqlDataSource = new SqlDataSource();
                GridSqlDataSource.ID = "GridSqlDataSource";
                this.Page.Controls.Add(GridSqlDataSource);
                GridSqlDataSource.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["applican"].ConnectionString;
                GridSqlDataSource.SelectCommand = "SELECT * JobTitle, CompanyName, Location, HasApplied, DateApplied, DateAppCloses, "
                    + "HasInterview, DateInterview, HasOffer, OfferNotes, DateOfferGiven, DateOfferDeadline, ContactInfo "
                    + "WHERE ";
                AccountGridView.DataSource = GridSqlDataSource;
                AccountGridView.DataBind();
            }
        }

        protected void CreateButton_Click(object sender, EventArgs e)
        {
            //create a new element
            //& save all entered variables
            Response.Redirect("~/CreateEntry.aspx");
        }
    }
}
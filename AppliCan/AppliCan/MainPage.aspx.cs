using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;

namespace AppliCan
{
    public partial class MainPage : System.Web.UI.Page
    {
        static string prevPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                prevPage = Request.UrlReferrer.AbsolutePath;
            }
            if (IsPostBack)
            {
               if (usernamehidden.Value == null)
                {

                }
               else
                {
                    if (prevPage.Contains("LoginPage"))
                    {
                        SqlDataSource GridSqlDataSource = new SqlDataSource();
                        GridSqlDataSource.ID = "GridSqlDataSource";
                        this.Page.Controls.Add(GridSqlDataSource);
                        //RDSContext.Create();
                        GridSqlDataSource.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["applican"].ConnectionString;
                        GridSqlDataSource.SelectCommand = "SELECT distinct JobTitle, CompanyName, Location, HasApplied, DateApplied, DateAppCloses, "
                            + "HasInterview, DateInterview, HasOffer, OfferNotes, DateOfferGiven, DateOfferDeadline, ContactInfo "
                            + "WHERE AccountUser = '" + usernamehidden.Value + "'";
                        AccountGridView.DataSource = GridSqlDataSource;
                        AccountGridView.DataBind();
                    }
                    else
                    {

                    }
                }
            }
        }

        protected void CreateButton_Click(object sender, EventArgs e)
        {
            //create a new element
            //& save all entered variables
            Response.Redirect("~/CreateEntry.aspx");
        }

        protected void AccountGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#00438B';this.style.color='#DEE5EF'";
                e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';this.style.color='black'";

                e.Row.ToolTip = "Click to select row";
            }
        }
    }
}
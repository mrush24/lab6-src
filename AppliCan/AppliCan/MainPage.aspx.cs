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
        //static string prevPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              //  prevPage = Request.UrlReferrer.AbsolutePath;
            }
            if (IsPostBack)
            {
               if (usernamehidden.Value == null)
                {
                    ErrorPanel.Visible = false;
                    Hide.Visible = true;
                }
               else
                {
                    //if (prevPage.Contains("LoginPage"))
                    //{
                        string query = "SELECT [JobTitle], [CompanyName], [HasApplied], [DateAppCloses], [DateInterview], [DateOfferDeadline] FROM [AppliCanEntries] WHERE([Enabled] = @Enabled)  AND [AccountUser] = '" + usernamehidden.Value + "'";
                        //AccountInfoSqlDataSource.SelectCommand = AccountInfoSqlDataSource.SelectCommand + " AND [AccountUser] = '"+ usernamehidden.Value + "'";
                        AccountInfoSqlDataSource.SelectCommand = query;
                    //}
                    //else
                    //{

                    //}
                }
            }
        }

        protected void CreateButton_Click(object sender, EventArgs e)
        {
            //create a new element
            //& save all entered variables
            Session["Data"] = usernamehidden.Value;
            Response.Redirect("~/CreateEntry.aspx");
        }

        protected void AccountGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#00438B';this.style.color='#DEE5EF'";
                e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';this.style.color='black'";

                e.Row.ToolTip = "Click to see details.";
                e.Row.Attributes["onclick"] = "ShowPopup('"+ usernamehidden.Value +"')";
            }
        }
       protected void LogoutButton_Click(object sender, EventArgs e)
        {
           Response.Redirect("~/LoginPage.aspx");
           Session["Data"] = usernamehidden.Value;

        }

        protected void ReturnButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DefaultPage.aspx");
        }
    }
}
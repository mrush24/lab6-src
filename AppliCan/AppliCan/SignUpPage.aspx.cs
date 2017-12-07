using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppliCan
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignMeUpButton_Click(object sender, EventArgs e)
        {
            using (var ae = new applicanEntities())
            {
                var entry = new AppliCanAccount();
                string user = UsernameTextBox.Text;
                string pass = PasswordTextBox.Text;
                var userExists = ae.AppliCanAccounts.SingleOrDefault(acc => acc.Username == user);
                if (userExists == null)
                {
                    entry.Username = user;
                    entry.Password = pass;
                    ae.AppliCanAccounts.Add(entry);
                    ae.SaveChanges();
                        //go to mainpage with hidden field of username
                    usernamehide.Value = user;
                    Session["Data"] = usernamehide.Value;
                        //where to redirect?
                        //Response.Redirect("~/LoginPage.aspx");
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    string script = "alert('Username already taken.')";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
                }

            }
            
        }

        protected void LoginHereButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}
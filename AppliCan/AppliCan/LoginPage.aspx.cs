using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppliCan
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CreateAccount_Click(object sender, EventArgs e) {  

                        Response.Redirect("SignUpPage.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            using (applicanEntities ae = new applicanEntities())
            {
                string user = UserNameTextBox.Text;
                string pass = PasswordTextBox.Text;
                bool userExists = ae.AppliCanAccounts.Any(Username => Username.Equals(user));
                if (userExists)
                {
                    bool passExists = ae.AppliCanAccounts.Any(Password => Password.Equals(pass));
                    if (passExists)
                    {
                        //go to mainpage with hidden field of username
                        usernamehide.Value = user;
                        Session["Data"] = usernamehide.Value;

                        Response.Redirect("MainPage.aspx");
                    }
                }

            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void UserNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DataSet1TableAdapters;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        UserTableAdapter userdata = new UserTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string name = Login1.UserName.Trim();
            string password = Login1.Password.Trim();
            if ((userdata.GetUserData(name, password)).Rows.Count > 0)
            {
                Session["Uname"] = name;
                CheckBox RememberMe = (CheckBox)(Login1.FindControl("RememberMe"));
                if (RememberMe.Checked)
                {
                    if (Request.Cookies["username"] == null)
                    {
                        Response.Cookies["username"].Expires = DateTime.Now.AddDays(30);
                        Response.Cookies["userpwd"].Expires = DateTime.Now.AddDays(30);
                        Response.Cookies["username"].Value = Login1.UserName.Trim();
                        Response.Cookies["userpwd"].Value = Login1.Password.Trim();
                    }
                }
                Response.Redirect("index.aspx");
            }
            else
            {
                
            }
        }
    }
}
/// <summary>
/// The main login page.
/// Contains all the functionality to perform foms authentication
/// </summary>

using FinalAssignment.dsProjectsTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class Login : System.Web.UI.Page
    {
        UserTableAdapter adpSeller = new UserTableAdapter();
        dsProjects.UserDataTable tblUser = new dsProjects.UserDataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuyerLogin_Click(object sender, EventArgs e)
        {
            string username = txtEmailId.Text;
            //string password = Encrypter.EncryptText(txtSellerPassword.Text);
            string password = txtLoginPassword.Text;
            tblUser = adpSeller.GetDataBy(username, password);
            
            //Checking if table is having any row or not

            if (tblUser.Count == 1)
            {
                var row = tblUser[0];
                FormsAuthentication.Initialize();
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                    1,
                    username,
                    DateTime.Now,
                    DateTime.Now.AddMinutes(30),
                    chkRememberLogin.Checked,
                    row.role,
                    FormsAuthentication.FormsCookiePath
                    );

                string hashedTicket = FormsAuthentication.Encrypt(ticket);

                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hashedTicket);
                if (ticket.IsPersistent)
                {
                    cookie.Expires = ticket.Expiration;
                }

                Response.Cookies.Add(cookie);

                string returnUrl = Request.QueryString["ReturnUrl"];


                //checking the connection string 
                //based on the connection string sending user to the specific page
                if (returnUrl == null)
                {
                    if (row.role == "Seller")
                    {
                        returnUrl = "~/seller";
                    }
                    else if (row.role == "Buyer")
                    {
                        returnUrl = "~/buyer";
                    }
                    else returnUrl = "~/Default.aspx";
                }


                //stroing data on the session
                Session["username"] = username;
                Session["role"] = row.role;
                Session["userId"] = row.Id;

                Response.Redirect(returnUrl);

            }
            else lblMessage.Text = "Login failed please try again";

        }

        protected void btnSendToRegisterPage_Click(object sender, EventArgs e)
        {
           Response.Redirect("~/register.aspx");
        }
    }
    }

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalAssignment;
using FinalAssignment.dsProjectsTableAdapters;


namespace Project.buyer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        UserTableAdapter adpBuyer = new UserTableAdapter();
        dsProjects.UserDataTable tblBuyer = new dsProjects.UserDataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuyerLogin_Click(object sender, EventArgs e)
        {
            string username = txtBuyerName.Text;
            //string password = Encrypter.EncryptText(txtBuyerPassword.Text);
            string password = txtBuyerPassword.Text;
            tblBuyer = adpBuyer.GetDataBy(username, password);
            if (tblBuyer.Count == 1)
            {
                var row = tblBuyer[0];
                FormsAuthentication.Initialize();
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                    1,
                    username,
                    DateTime.Now,
                    DateTime.Now.AddMinutes(30),
                    chkRememberBuyer.Checked,
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

                if (returnUrl == null)
                {
                    if (row.role == "Buyer")
                    {
                        returnUrl = "~/Default.aspx";
                    }
                    else if (row.role == "Seller")
                    {
                        returnUrl = "~/seller/sellerLogin.aspx";
                    }
                    else returnUrl = "~/Default.aspx";
                }

                Session["username"] = username;
                Session["role"] = row.role;

                Response.Redirect(returnUrl);

            }
            else lblMessage.Text = "Login failed please try again";

        }
    }
}
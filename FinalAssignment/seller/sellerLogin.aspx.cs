using FinalAssignment;
using FinalAssignment.dsProjectsTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.seller
{
    public partial class sellerLogin : System.Web.UI.Page
    {
        UserTableAdapter adpSeller = new UserTableAdapter();
        dsProjects.UserDataTable tblSeller = new dsProjects.UserDataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuyerLogin_Click(object sender, EventArgs e)
        {
            string username = txtSellerId.Text;
            //string password = Encrypter.EncryptText(txtSellerPassword.Text);
            string password = txtSellerPassword.Text;
            tblSeller = adpSeller.GetDataBy(username, password);
            if (tblSeller.Count == 1)
            {
                var row = tblSeller[0];
                FormsAuthentication.Initialize();
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                    1,
                    username,
                    DateTime.Now,
                    DateTime.Now.AddMinutes(30),
                    chkRememberSeller.Checked,
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
                    if (row.role == "Seller")
                    {
                        returnUrl = "~/Default.aspx";
                    }
                    else if (row.role == "Buyer")
                    {
                        returnUrl = "~/buyer/buyerLogin.aspx";
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalAssignment.dsProjectsTableAdapters;

namespace Project
{
    public partial class register : System.Web.UI.Page
    {
        UserTableAdapter adpUser = new UserTableAdapter();
        //FinalAssignment.UserDataTable tblUser = new Project.UserDataTable();

        private bool UserExists(string email)
        {
            int? result = adpUser.UserExist(email);
            return result == 1;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlRole.Items.Insert(0,(new ListItem("Select a role", "-1")));
                
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (ddlRole.SelectedIndex != 0)
                {

                    string name = txtName.Text.Trim();
                    string pass = txtPassword.Text.Trim();
                    string email = txtEmail.Text.Trim();
                    string company = txtCompany.Text.Trim();
                    string role = ddlRole.SelectedValue;
                    var userExist = adpUser.UserExist(email);
                    if (!UserExists(email))
                    {
                        //tblUser.Rows.Add(name, pass, role, email, -1, company);
                        adpUser.Insert(name, email, pass, company, role);
                        lblMessage.Text = "registration successful";
                        txtCompany.Text = txtEmail.Text = txtName.Text = txtPassword.Text = "";
                        Server.Transfer("~/Default.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "User already exist. Use another email.";
                    }
                }

                else
                {
                    lblMessage.Text = "Enter Credentials.";
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}
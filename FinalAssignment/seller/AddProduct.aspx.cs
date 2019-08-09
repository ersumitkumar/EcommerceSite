///<summary>
///This is the main add product class.
///This class contains all the functionality to add products
///based on category
/// </summary>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalAssignment;
using FinalAssignment.dsProjectsTableAdapters;

namespace Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        CategoryTableAdapter adpCat = new CategoryTableAdapter();
        dsProjects.CategoryDataTable tblCategory = new dsProjects.CategoryDataTable();
        ProductTableAdapter adpProd = new ProductTableAdapter();


        //setting the drop down list on the page load event
        protected void Page_Load(object sender, EventArgs e)
        {
            tblCategory = adpCat.GetCategory();
            ddl_Category.DataSource = tblCategory;
            if (!IsPostBack)
            {
                ddl_Category.DataTextField = "CategoryName";
                ddl_Category.DataValueField = "CategoryId";
                ddl_Category.DataBind();
                ddl_Category.Items.Insert(0, new ListItem("Select Category", "-1"));
            }

        }


        //code to add product into the data base
        protected void btn_add_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {


                if (ddl_Category.SelectedIndex > 0)
                {
                    string name = txtname.Text;
                    string desc = txtdesc.Text;
                    decimal price = decimal.Parse(txtprice.Text);
                    int qty = Int32.Parse(txtqty.Text);
                    int Cat = ddl_Category.SelectedIndex;

                    adpProd.Insert(name, desc, price, qty, Cat);

                    lblMessage.Text = "Product" + name + "Added Successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    RefreshTable();
                }
            }
            else
            {
                lblMessage.Text = "Validation Failed!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }


        protected void RefreshTable()
        {
            txtname.Text = txtprice.Text = txtdesc.Text = txtqty.Text = " ";
            ddl_Category.SelectedIndex = -1;
        }


    }
}

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
    public partial class Default : System.Web.UI.Page
    {
        CategoryTableAdapter categoryAdpter =
            new CategoryTableAdapter();
        dsProjects.CategoryDataTable tblCategory = 
            new dsProjects.CategoryDataTable();

        ProductTableAdapter productAdapter =
            new ProductTableAdapter();
        dsProjects.ProductDataTable tblProducts = new dsProjects.ProductDataTable();

        ProductsByCategoryTableAdapter adapter = new ProductsByCategoryTableAdapter();
        dsProjects.ProductsByCategoryDataTable tblProductByCategory = new dsProjects.ProductsByCategoryDataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tblCategory = categoryAdpter.GetCategory();
                ddl_Category.DataSource = tblCategory;
                ddl_Category.DataTextField = "CategoryName";
                ddl_Category.DataValueField = tblCategory.CategoryIdColumn.ToString();
               
                ddl_Category.DataBind();

                ddl_Category.Items.Insert(0, new ListItem("Select Category", "-1"));

                tblProducts = productAdapter.GetProduct();
                ddl_Product.DataSource = tblProducts;
                ddl_Product.DataTextField = "ProductName";
                ddl_Product.DataValueField = tblProducts.ProductIdColumn.ToString();
                ddl_Product.DataBind();

                ddl_Product.Items.Insert(0, new ListItem("Select Product", "-1"));
                
                tblProductByCategory = adapter.GetProductsByCategory();
                grdProducts.DataSource = tblProductByCategory;
                grdProducts.DataBind();

            }

        }

        protected void ddl_Seller_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      
    }
}
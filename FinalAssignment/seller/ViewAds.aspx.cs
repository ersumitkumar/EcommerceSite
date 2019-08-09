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
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        ProductsByCategoryTableAdapter adapter = new ProductsByCategoryTableAdapter();
        dsProjects.ProductsByCategoryDataTable tblProductsCat = new dsProjects.ProductsByCategoryDataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tblProductsCat = adapter.GetProductsByCategory();
                grdAds.DataSource = tblProductsCat;
                grdAds.DataBind();
            }
        }
    }
}
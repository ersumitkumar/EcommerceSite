using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class NestedMasterPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcome.Text = "Welcome";
        }

        protected void btn_ViewAds_Click(object sender, EventArgs e)
        {
           Server.Transfer("~/ViewAds.aspx");
        }

        protected void btn_buy_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Default.aspx");
        }
    }
}
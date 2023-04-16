using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            meerinfo.Visible = false;
        }

        protected void StartScanBttn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("GegevensPage.aspx");
        }

        protected void MeerInfo_Click(object sender, EventArgs e)
        {
            Response.Redirect("SdgInfoPage.aspx");
        }

        protected void AdminBttn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class AdminEditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void HomeBttn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void DataBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Data.aspx");
        }

        protected void OpslaanBttn_Click(object sender, EventArgs e)
        {

        }
    }
}
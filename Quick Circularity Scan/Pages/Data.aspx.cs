using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class Data : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=QCS Product;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }

        protected void HomeBttn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        void GetData()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from Resultaten", conn);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                ResultatenGrid.DataSource = dr;
                ResultatenGrid.DataBind();

                dr.Close();

            }

            SqlCommand cmd1 = new SqlCommand("SELECT * from Gegevens", conn);
            SqlDataReader dr1 = cmd1.ExecuteReader();

            if (dr1.HasRows == true)
            {
                GebruikersGrid.DataSource = dr1;
                GebruikersGrid.DataBind();

                dr1.Close();

            }

            conn.Close();
        }

    }
}
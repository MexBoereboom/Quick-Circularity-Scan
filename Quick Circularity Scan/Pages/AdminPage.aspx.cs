using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quick_Circularity_Scan.Pages;
using System.Data.SqlClient;
using System.Data;

namespace Quick_Circularity_Scan.Pages
{
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=QCS Product;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void HomeBttn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void LoginBttn_Click(object sender, EventArgs e)
        {
            string GebruikersnaamAdmin, WachtwoordAdmin;

            GebruikersnaamAdmin = GebruikersnaamAdminInput.Text;
            WachtwoordAdmin = WachtwoordAdminInput.Text;

            try
            {
                string querry = "SELECT * FROM AdminLogin WHERE Gebruikersnaam = '" + GebruikersnaamAdmin + "' AND Wachtwoord = '" + WachtwoordAdmin + "'";
                SqlDataAdapter sda = new SqlDataAdapter(querry, conn);

                DataTable dtable = new DataTable();
                sda.Fill(dtable);

                if (dtable.Rows.Count > 0)
                {
                    Response.Redirect("AdminEditPage.aspx");
                }

                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrecte inloggegevens')", true);
                }
            }
            finally
            {
                conn.Close();
            }
            
        }

    }
}
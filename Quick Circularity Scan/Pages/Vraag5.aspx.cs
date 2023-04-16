using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class Vraag5 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=QCS Product;Integrated Security=True");
        string user1;
        protected void Page_Load(object sender, EventArgs e)
        {
            user1 = (string)Session["Gebruiker"];
        }

        protected void HomeBttn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void VerderBttn_Clicked(object sender, EventArgs e)
        {
            // R3 & Product
            conn.Open();

            if (Vraag5A.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag6.aspx");
            }
            else if (Vraag5B.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag6.aspx");
            }
            else if (Vraag5C.Checked)
            {
                Response.Redirect("Vraag6.aspx");
            }
            else if (Vraag5D.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag6.aspx");
            }
            else if (Vraag5E.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag6.aspx");
            }
            else if (Vraag5F.Checked)
            {
                Response.Redirect("Vraag6.aspx");
            }
            else if (Vraag5G.Checked)
            {
                Response.Redirect("Vraag6.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Geef een antwoord')", true);
            }
        }
    }
}
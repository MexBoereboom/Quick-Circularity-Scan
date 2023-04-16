using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class Vraag13 : System.Web.UI.Page
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
            // R5, R6 en R7 & Product
            conn.Open();

            if (Vraag13A.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Repair = Repair + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("UPDATE Resultaten SET Refurbish = Refurbish + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd3.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag14.aspx");
            }
            else if (Vraag13B.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Repair = Repair + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("UPDATE Resultaten SET Refurbish = Refurbish + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd3.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag14.aspx");
            }
            else if (Vraag13C.Checked)
            {
                Response.Redirect("Vraag14.aspx");
            }
            else if (Vraag13D.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Repair = Repair - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("UPDATE Resultaten SET Refurbish = Refurbish - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd3.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag14.aspx");
            }
            else if (Vraag13E.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Repair = Repair - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("UPDATE Resultaten SET Refurbish = Refurbish - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd2.ExecuteNonQuery();

                SqlCommand cmd3 = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd3.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag14.aspx");
            }
            else if (Vraag13F.Checked)
            {
                Response.Redirect("Vraag14.aspx");
            }
            else if (Vraag13G.Checked)
            {
                Response.Redirect("Vraag14.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Geef een antwoord')", true);
            }
        }
    }
}
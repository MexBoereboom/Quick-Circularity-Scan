using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class Vraag22 : System.Web.UI.Page
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
            // R10 & Proces
            conn.Open();

            if (Vraag22A.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Recover = Recover + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("ResultatenPage.aspx");
            }
            else if (Vraag22B.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Recover = Recover + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("ResultatenPage.aspx");
            }
            else if (Vraag22C.Checked)
            {
                Response.Redirect("ResultatenPage.aspx");
            }
            else if (Vraag22D.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Recover = Recover - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("ResultatenPage.aspx");
            }
            else if (Vraag22E.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Recover = Recover - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("ResultatenPage.aspx");
            }
            else if (Vraag22F.Checked)
            {
                Response.Redirect("ResultatenPage.aspx");
            }
            else if (Vraag22G.Checked)
            {
                Response.Redirect("ResultatenPage.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Geef een antwoord')", true);
            }
        }
    }
}
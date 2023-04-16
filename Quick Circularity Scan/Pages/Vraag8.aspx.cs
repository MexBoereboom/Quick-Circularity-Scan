using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class Vraag8 : System.Web.UI.Page
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
            // R3 & Proces
            conn.Open();

            if (Vraag8A.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag9.aspx");
            }
            else if (Vraag8B.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag9.aspx");
            }
            else if (Vraag8C.Checked)
            {
                Response.Redirect("Vraag9.aspx");
            }
            else if (Vraag8D.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag9.aspx");
            }
            else if (Vraag8E.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Rethink = Rethink - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag9.aspx");
            }
            else if (Vraag8F.Checked)
            {
                Response.Redirect("Vraag9.aspx");
            }
            else if (Vraag8G.Checked)
            {
                Response.Redirect("Vraag9.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Geef een antwoord')", true);
            }
        }
    }
}
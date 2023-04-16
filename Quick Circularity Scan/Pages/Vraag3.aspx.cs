using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class Vraag3 : System.Web.UI.Page
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
            // R2 & Product
            conn.Open();

            if (Vraag3A.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Reduce = Reduce + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag4.aspx");
            }
            else if (Vraag3B.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Reduce = Reduce + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag4.aspx");
            }
            else if (Vraag3C.Checked)
            {
                Response.Redirect("Vraag4.aspx");
            }
            else if (Vraag3D.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Reduce = Reduce - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag4.aspx");
            }
            else if (Vraag3E.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Reduce = Reduce - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProductType = ProductType - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag4.aspx");
            }
            else if (Vraag3F.Checked)
            {
                Response.Redirect("Vraag4.aspx");
            }
            else if (Vraag3G.Checked)
            {
                Response.Redirect("Vraag4.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Geef een antwoord')", true);
            }
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class Vraag17 : System.Web.UI.Page
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
            // R7 & Proces
            conn.Open();

            if (Vraag17A.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType + 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag18.aspx");
            }
            else if (Vraag17B.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType + 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag18.aspx");
            }
            else if (Vraag17C.Checked)
            {
                Response.Redirect("Vraag18.aspx");
            }
            else if (Vraag17D.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType - 1 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag18.aspx");
            }
            else if (Vraag17E.Checked)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Resultaten SET Remanufacture = Remanufacture - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("UPDATE Resultaten SET ProcesMatigType = ProcesMatigType - 2 WHERE PersoonsNaam='" + user1 + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Vraag18.aspx");
            }
            else if (Vraag17F.Checked)
            {
                Response.Redirect("Vraag18.aspx");
            }
            else if (Vraag17G.Checked)
            {
                Response.Redirect("Vraag18.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Geef een antwoord')", true);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class GegevensPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=QCS Product;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void HomeBttn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void VerderGegevens_Click(object sender, EventArgs e)
        {
            Session["Gebruiker"] = PersoonsNaam.Text;

            string DoelList;
            string SectorList;
            int Refuce1 = 0;
            int Reduce1 = 0;
            int Rethink1 = 0;
            int Reuse1 = 0;
            int Repair1 = 0;
            int Refurbish1 = 0;
            int Remanufacture1 = 0;
            int Repurpose1 = 0;
            int Recycle1 = 0;
            int Recover1 = 0;
            int Product1 = 0;
            int Proces1 = 0;



            if(PersoonsNaam.Text == "" || PersoonsMail.Text == ""  )
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Vul de verplichte velden in!')", true);
            }
            else 
            {
                if (Bedrijf.Selected)
                {
                    DoelList = "Bedrijfs Doel";
                }
                else if (EigenBelang.Selected)
                {
                    DoelList = "Eigen Doel";
                }
                else if (GeenDoel.Selected)
                {
                    DoelList = "Geen Doel";
                }
                else
                {
                    DoelList = "Geen Doel ingevuld";
                }


                if(k1.Selected)
                {
                    SectorList = "Reparatie en installatie machines";
                }
                else if (k2.Selected)
                {
                    SectorList = "Transportmiddelen";
                }
                else if (k3.Selected)
                {
                    SectorList = "Machine";
                }
                else if (k4.Selected)
                {
                    SectorList = "Elektrische en elektronische apparaten";
                }
                else if (k5.Selected)
                {
                    SectorList = "Voedingsmiddelen";
                }
                else if (k6.Selected)
                {
                    SectorList = "Rubber en kunstof";
                }
                else if (k7.Selected)
                {
                    SectorList = "Chemische producten";
                }
                else if (k8.Selected)
                {
                    SectorList = "Geen van bovenstaand";
                }
                else
                {
                    SectorList = "Niet ingevuld";
                }



                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into Gegevens(Doel, Bedrijfsnaam, BedrijfsLocatie, BedrijfsMail, Sector, PersoonsNaam, Functie, Mail, Telefoonnummer) values('"+ DoelList  +"', '"+Bedrijfsnaam.Text+ "', '" + Bedrijfslocatie.Text + "', '" + Bedrijfsmail.Text + "', '" + SectorList +"', '" +PersoonsNaam.Text+ "', '" + Functie.Text + "', '" + PersoonsMail.Text + "', '" + Telefoonnummer.Text + "')", conn);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("insert into Resultaten(PersoonsNaam, Refuse, Reduce, Rethink, Reuse, Repair, Refurbish, Remanufacture, Repurpose, Recycle, Recover, ProductType, ProcesMatigType) values('"+PersoonsNaam.Text+"', '"+Refuce1+ "', '" + Reduce1 + "',  '" + Rethink1 + "',  '" + Reuse1 + "',  '" + Repair1 + "', '" + Refurbish1 + "', '" + Remanufacture1 + "', '" + Repurpose1 + "', '" + Recycle1 + "', '" + Recover1 + "', '" + Product1 + "', '" + Proces1 + "')", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("Vraag1.aspx");
            }
        }
    }
}
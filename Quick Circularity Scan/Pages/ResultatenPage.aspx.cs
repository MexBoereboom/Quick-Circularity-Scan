using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace Quick_Circularity_Scan.Pages
{
    public partial class ResultatenPage : System.Web.UI.Page
    {


        SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=QCS Product;Integrated Security=True");
        string user1;
        protected void Page_Load(object sender, EventArgs e)
        {
            user1 = (string)Session["Gebruiker"];

            //fillchart();

            puntentelling();


            Productbttn.Visible = false;
            Procesbttn.Visible = false;

        }

        void fillchart()
        {
            // Begin data in diagram

            //DataTable dt = new DataTable();
            //conn.Open();
            //SqlDataAdapter da = new SqlDataAdapter("SELECT ProductType,ProcesMatigType FROM Resultaten WHERE PersoonsNaam='" + user1 + "'", conn);
            //da.Fill(dt);
            //Chart1.DataSource = dt;
            //conn.Close();

            //Chart1.Series["Resultaten"].XValueMember = "ProductType";
            //Chart1.Series["Resultaten"].YValueMembers = "ProcesMatigType";
            //Chart1.Titles.Add("Proces en Product");

        }

        void puntentelling()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT Refuse, Reduce, Rethink, Reuse, Repair, Refurbish, Remanufacture, Repurpose, Recycle, Recover, ProductType, ProcesMatigType FROM Resultaten WHERE PersoonsNaam='" + user1 + "'", conn);
            SqlDataReader reader1;
            reader1 = cmd.ExecuteReader();

            if (reader1.Read())
            {
                ProductResultaat.Text = "Behaalde punten: " + reader1["ProductType"].ToString();
                ProductMax.Text = "Te behalen punten: 20";

                ProcesResultaat.Text = "Behaalde punten: " + reader1["ProcesMatigType"].ToString();
                ProcesMax.Text = "Te behalen punten: 24";

                RefuseResultaat.Text = "Behaalde punten: " + reader1["Refuse"].ToString();
                RefuseMax.Text = "Te behalen punten: 4";

                ReduceResultaat.Text = "Behaalde punten: " + reader1["Reduce"].ToString();
                ReduceMax.Text = "Te behalen punten: 4";

                RethinkResultaat.Text = "Behaalde punten: " + reader1["Rethink"].ToString();
                RethinkMax.Text = "Te behalen punten: 8";

                ReuseResultaat.Text = "Behaalde punten: " + reader1["Reuse"].ToString();
                ReuseMax.Text = "Te behalen punten: 8";

                RepairResultaat.Text = "Behaalde punten: " + reader1["Repair"].ToString();
                RepairMax.Text = "Te behalen punten: 6";

                RefurbishResultaat.Text = "Behaalde punten: " + reader1["Refurbish"].ToString();
                RefurbishMax.Text = "Te behalen punten: 4";

                RemanufactureResultaat.Text = "Behaalde punten: " + reader1["Remanufacture"].ToString();
                RemanufactureMax.Text = "Te behalen punten: 6";

                RepurposeResultaat.Text = "Behaalde punten: " + reader1["Repurpose"].ToString();
                RepurposeMax.Text = "Te behalen punten: 2";

                RecycleResultaat.Text = "Behaalde punten: " + reader1["Recycle"].ToString();
                RecycleMax.Text = "Te behalen punten: 4";

                RecoverResultaat.Text = "Behaalde punten: " + reader1["Recover"].ToString();
                RecoverMax.Text = "Te behalen punten: 2";
            }
        }

        protected void HomeBttn_Clicked(object sender, EventArgs e)
        {
        }

        protected void ProductBttn_Click(object sender, EventArgs e)
        {
            
        }

        protected void RefuseBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RefuseInfo.aspx");
        }

        protected void ReduceBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReduceInfo.aspx");
        }

        protected void RethinkBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RethinkInfo.aspx");
        }

        protected void ReuseBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReuseInfo.aspx");
        }

        protected void RepairBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RepairInfo.aspx");
        }

        protected void RefurbishBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RefurbishInfo.aspx");
        }

        protected void ProcesBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void RemanufactureBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RemanufactureInfo.aspx");
        }

        protected void RepurposeBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RepurposeInfo.aspx");
        }


        protected void RecycleBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecycleInfo.aspx");
        }

        protected void RecoverBttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecoverInfo.aspx");
        }
    }
}
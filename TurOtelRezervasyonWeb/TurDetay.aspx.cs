using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TurOtelRezervasyonWeb.Classes;

namespace TurOtelRezervasyonWeb
{
    public partial class TurDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string turID = Request.QueryString["TurID"];

                if (!string.IsNullOrEmpty(turID))
                {
                    SqlCommand commandDetay = new SqlCommand("SELECT*, ImageURL FROM Tours INNER JOIN TourImages ON Tours.TourID = TourImages.TourID WHERE Tours.TourID = @turID", SqlConnectionClass.connection);
                    commandDetay.Parameters.AddWithValue("@turID", turID);
                    SqlConnectionClass.CheckConnection();

                    SqlDataReader drTur = commandDetay.ExecuteReader();

                    if (drTur.Read())
                    {
                        TurAdi.Text = drTur["TourName"].ToString();
                        Aciklama.Text = drTur["Description"].ToString();
                        Baslangic.Text = drTur["StartDate"].ToString();
                        Bitis.Text = drTur["EndDate"].ToString();
                        Ucret2.Text = drTur["Price"].ToString();
                        DetayFoto.ImageUrl = drTur["ImageURL"].ToString();
                    }

                    drTur.Close();

                    DataBind(); // Veri bağlama işlemi
                }
                
            }
        }
    }
}
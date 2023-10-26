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
    public partial class OtelFiltre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SearchButton_Click(object sender, EventArgs e)
        {
            // Kullanıcının girdiği filtre parametreleri
            string city = cityInput.Value; // Kullanıcının girdiği şehir adını al
            string country = countryInput.Value; // Kullanıcının girdiği ülke adını al
            string hotelName = hotelNameInput.Value; // Kullanıcının girdiği otel adını al
            int starRating = Convert.ToInt32(starRatingSelect.Value); // Kullanıcının girdiği yıldız sayısını al

            SqlCommand commandFiltre = new SqlCommand("SELECT * FROM Hotel WHERE City = @city AND Country = @country AND" +
                " (@hotelName = '' OR HotelName LIKE '%' + @hotelName + '%') " +
                "AND Star >= @starRating", SqlConnectionClass.connection);

            // SqlConnectionClass'taki bağlantıyı kontrol etme yöntemini çağırma
            SqlConnectionClass.CheckConnection();

            // Veritabanı bağlantısı
            SqlConnection connection = SqlConnectionClass.connection;

            commandFiltre.Parameters.AddWithValue("@city", city);
            commandFiltre.Parameters.AddWithValue("@country", country);
            commandFiltre.Parameters.AddWithValue("@hotelName", hotelName);
            commandFiltre.Parameters.AddWithValue("@starRating", starRating);

            // Sorguyu çalıştırma ve sonuçları alıp işleme
            SqlDataReader reader = commandFiltre.ExecuteReader();
            // Sonuçları işleme
            while (reader.Read())
            {
                // Her bir otelin bilgilerini al
                int hotelId = (int)reader["HotelId"];
                string hotelCity = (string)reader["City"];
                string hotelCountry = (string)reader["Country"];
                string otelName = (string)reader["HotelName"];
                string hotelAddress = (string)reader["Address"];

                // Filtrelenmiş otellerle istediğiniz işlemi yapabilirsiniz
               
            }

            // Temizlik ve bağlantıyı kapatma
            reader.Close();
            connection.Close();
        }
       
    }
}

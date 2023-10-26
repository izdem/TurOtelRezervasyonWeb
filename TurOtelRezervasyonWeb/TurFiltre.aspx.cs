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
    public partial class TurFiltre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Tur_Button_Click(object sender, EventArgs e)
        {
            string city = CityInput.Value; // Kullanıcının girdiği şehir adını al
            string country = CountryInput.Value; // Kullanıcının girdiği ülke adını al
            decimal minPrice = decimal.Parse(minPriceInput.Value);
            decimal maxPrice = decimal.Parse(maxPriceInput.Value);

            SqlCommand commandTur = new SqlCommand("SELECT * FROM tours WHERE City = @city AND Country = @country AND Price >= @minPrice AND Price <= @maxPrice",
                SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            SqlConnection connection = SqlConnectionClass.connection;

            commandTur.Parameters.AddWithValue("@city", city);
            commandTur.Parameters.AddWithValue("@country", country);
            commandTur.Parameters.AddWithValue("@minPrice", minPrice);
            commandTur.Parameters.AddWithValue("@maxPrice", maxPrice);
            SqlDataReader reader = commandTur.ExecuteReader();

            while (reader.Read())
            {
                string tourName = (string)reader["TourName"];
                string description = (string)reader["Description"];
                decimal price = (decimal)reader["Price"];
            }
       
        reader.Close();
            connection.Close();
        }
    }
}
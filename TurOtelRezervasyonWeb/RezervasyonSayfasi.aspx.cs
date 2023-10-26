using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TurOtelRezervasyonWeb.Classes;

namespace TurOtelRezervasyonWeb
{
    public partial class RezervasyonSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                CalculateTotalPrice();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Value;

            // Kullanıcıyı Users tablosunda ara ve ilgili kullanıcının ID'sini al
            int userId = GetUserIdByEmail(email);
            if (userId == -1)
            {
                // Kullanıcı bulunamadı, hata işlemlerini gerçekleştirin veya kullanıcıya hata mesajını gösterin
                return;
            }

            DateTime checkInDate;
            DateTime checkOutDate;

            if (!DateTime.TryParse(txtCheckIn.Value, out checkInDate) || !DateTime.TryParse(txtCheckOut.Value, out checkOutDate))
            {
                // Tarih dönüşümü başarısız
                // Hata işlemlerini gerçekleştirin veya kullanıcıya hata mesajını gösterin
                return;
            }

            int numAdults = int.Parse(ddlNumAdults.Value);
            int numChildren = int.Parse(ddlNumChildren.Value);
            decimal totalPrice = decimal.Parse(txtTotalPrice.Value);

            // Veritabanına kayıt işlemi
            SqlConnectionClass.CheckConnection();
            string query = "INSERT INTO Reservation (UserID, CheckInDate, CheckOutDate, NumAdults, NumChildren, TotalPrice) " +
                           "VALUES (@UserID, @CheckInDate, @CheckOutDate, @NumAdults, @NumChildren, @TotalPrice)";
            SqlCommand command = new SqlCommand(query, SqlConnectionClass.connection);
            command.Parameters.AddWithValue("@UserID", userId);
            command.Parameters.AddWithValue("@CheckInDate", checkInDate);
            command.Parameters.AddWithValue("@CheckOutDate", checkOutDate);
            command.Parameters.AddWithValue("@NumAdults", numAdults);
            command.Parameters.AddWithValue("@NumChildren", numChildren);
            command.Parameters.AddWithValue("@TotalPrice", totalPrice);

            command.ExecuteNonQuery();

            // Veritabanı bağlantısını kapat
            SqlConnectionClass.connection.Close();

            // Rezervasyon tamamlandıktan sonra kullanıcıyı OdemeSayfasi.aspx sayfasına yönlendir
            Response.Redirect("OdemeSayfasi.aspx");
        }

        private void CalculateTotalPrice()
        {
            // Toplam fiyatı hesaplama işlemleri burada yapılabilir
        }

        private int GetUserIdByEmail(string email)
        {
            int userId = -1;

            // Users tablosunda ilgili kullanıcıyı bul ve ID'sini al
            SqlConnectionClass.CheckConnection();
            string query = "SELECT UserID FROM Users WHERE Email = @Email";
            SqlCommand command = new SqlCommand(query, SqlConnectionClass.connection);
            command.Parameters.AddWithValue("@Email", email);

            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    userId = reader.GetInt32(0);
                }
            }

            // Veritabanı bağlantısını kapat
            SqlConnectionClass.connection.Close();

            return userId;
        }

    }
    
}
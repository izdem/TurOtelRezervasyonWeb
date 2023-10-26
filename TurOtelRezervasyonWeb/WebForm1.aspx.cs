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
    public partial class WebForm1 : System.Web.UI.Page
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
            string name = txtName.Value;
            string email = txtEmail.Value;
            string phone = txtPhone.Value;
            DateTime checkInDate = DateTime.Parse(txtCheckIn.Value);
            DateTime checkOutDate = DateTime.Parse(txtCheckOut.Value);

            if (!DateTime.TryParse(txtCheckIn.Value, out checkInDate))
            {
                // Tarih dönüşümü başarısız
                // Hata işlemlerini gerçekleştirin veya kullanıcıya hata mesajını gösterin
                return;
            }


            if (!DateTime.TryParse(txtCheckOut.Value, out checkOutDate))
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
            string query = "INSERT INTO Reservation (Name, Email, Phone, CheckInDate, CheckOutDate, NumAdults, NumChildren, TotalPrice) " +
                           "VALUES (@Name, @Email, @Phone, @CheckInDate, @CheckOutDate, @NumAdults, @NumChildren, @TotalPrice)";
            SqlCommand command = new SqlCommand(query, SqlConnectionClass.connection);
            command.Parameters.AddWithValue("@Name", name);
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@Phone", phone);
            command.Parameters.AddWithValue("@CheckInDate", checkInDate);
            command.Parameters.AddWithValue("@CheckOutDate", checkOutDate);
            command.Parameters.AddWithValue("@NumAdults", numAdults);
            command.Parameters.AddWithValue("@NumChildren", numChildren);
            command.Parameters.AddWithValue("@TotalPrice", totalPrice);

            command.ExecuteNonQuery();

            // Veritabanı bağlantısını kapat
            SqlConnectionClass.connection.Close();

            // Rezervasyon tamamlandıktan sonra kullanıcıyı başka bir sayfaya yönlendirebilirsin
            Response.Redirect("OdemeSayfasi.aspx");
        }

        private void CalculateTotalPrice()
        {
            // Toplam fiyatı hesaplama işlemleri burada yapılabilir
        }

    
    }
}
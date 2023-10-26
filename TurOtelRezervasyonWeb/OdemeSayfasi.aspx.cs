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
    public partial class OdemeSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Ödeme işlemi gerçekleştirilmeden önce yapılacak işlemler
            }
        }

        protected void btnCompletePayment_Click(object sender, EventArgs e)
        {


            string cardNumber = txtCardNumber.Value;
            string expirationDate = txtExpirationDate.Value;
            string cvv = txtCVV.Value;
            string paymentMethod = ddlPaymentMethod.Value;

            SqlConnectionClass.CheckConnection();

            string query = "INSERT INTO Payment (CardNumber, ExpirationDate, CVV, PaymentMethod) VALUES (@CardNumber, @ExpirationDate, @CVV, @PaymentMethod)";
            SqlCommand command = new SqlCommand(query, SqlConnectionClass.connection);
            command.Parameters.AddWithValue("@CardNumber", cardNumber);
            command.Parameters.AddWithValue("@ExpirationDate", expirationDate);
            command.Parameters.AddWithValue("@CVV", cvv);
            command.Parameters.AddWithValue("@PaymentMethod", paymentMethod);

            command.ExecuteNonQuery();
            SqlConnectionClass.connection.Close();

            // Ödeme işlemi tamamlandıktan sonra yapılacak işlemler

            bool odemeBasarili = OdemeBasariliMi();

            if (odemeBasarili)
            {
                // Başarılı bir ödeme tamamlandıysa
                lblMessage.Text = "Ödeme işlemi başarıyla tamamlandı.";
            }
            else
            {
                // Başarısız bir ödeme tamamlandıysa
                lblMessage.Text = "Ödeme işlemi başarısız oldu.";
            }
        }
        private bool OdemeBasariliMi()
        {
            // Ödeme işleminin kontrolünü gerçekleştiren kodlar burada yer alır
            // Ödeme işlemi başarılıysa true, aksi halde false döndürür

            // Örnek kontrol:
            bool odemeBasarili = true; // Ödeme işlemi başarılı
                                       // Diğer kontrol işlemleri burada yapılır

            return odemeBasarili;
        }
    }
}
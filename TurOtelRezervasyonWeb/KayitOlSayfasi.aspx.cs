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
    public partial class KayitOlSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void KayitOlButton_Click(object sender, EventArgs e)/*kayıt ol butonuna basıldığında verileri veritabanına kayıt edecek fonksiyon*/
        {
            SqlCommand commandKayitOl = new SqlCommand("insert into Users(FirstName,LastName,Email,Password,PhoneNumber)" +
                " values(@firstname,@lastname,@email,@password,@phone)",SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string newPass = Sha256Converter.ComputeSha256Hash(txtPassword.Text);/*şifrelerin sha256 formata dönüşmesini sağlar.güvenlik için kullandık.*/

            commandKayitOl.Parameters.AddWithValue("@firstname",txtFirstName.Text);
            commandKayitOl.Parameters.AddWithValue("@lastname", txtLastName.Text);
            commandKayitOl.Parameters.AddWithValue("@email", txtEmail.Text);
            commandKayitOl.Parameters.AddWithValue("@password", newPass);
            commandKayitOl.Parameters.AddWithValue("@phone", txtPhoneNumber.Text);

            commandKayitOl.ExecuteNonQuery();
        }
    }
}
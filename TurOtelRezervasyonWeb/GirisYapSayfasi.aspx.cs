using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using TurOtelRezervasyonWeb.Classes;
using System.Data;

namespace TurOtelRezervasyonWeb
{
    public partial class GirisYapSayfasi : System.Web.UI.Page



    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblMessage.Text = "";
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand commandGirisYap = new SqlCommand("select Email,Password from Users Where Email=@email AND Password=@password",
                SqlConnectionClass.connection);
            String shaPass = Sha256Converter.ComputeSha256Hash(txtPassword.Text);
            commandGirisYap.Parameters.AddWithValue("@email", txtEmail.Text);
            commandGirisYap.Parameters.AddWithValue("@password", shaPass);
            DataTable dt = new DataTable();/*bu kod boş bir tablo oluşturur*/
            SqlDataAdapter da = new SqlDataAdapter(commandGirisYap);/*dataAdapter ile boş olan tabloyu doldur komutu verdik*/
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string email = dt.Rows[0]["Email"].ToString();
                if (txtEmail.Text == "admin@gmail.com")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Redirect("Kullanici.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Mail adresi veya Şifre Hatalı";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
}
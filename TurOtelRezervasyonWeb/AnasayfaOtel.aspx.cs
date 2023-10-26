using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using TurOtelRezervasyonWeb.Classes;

namespace TurOtelRezervasyonWeb
{
    public partial class AnasayfaOtel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTours();
            }
        }

        protected void LoadTours()
        {
            SqlCommand commandList = new SqlCommand("SELECT *, ImageURL FROM Tours INNER JOIN TourImages ON Tours.TourID = TourImages.TourID", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            SqlDataReader dr = commandList.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ShowDetails")
            {
                string tourID = e.CommandArgument.ToString();
                // TurDetay.aspx sayfasına yönlendirin ve turID'yi query string olarak iletişim sağlayın
                Response.Redirect("TurDetay.aspx?TourID=" + tourID);
            }
        }




    }
}
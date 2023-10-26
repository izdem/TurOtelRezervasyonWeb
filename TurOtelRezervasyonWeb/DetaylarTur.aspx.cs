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
    public partial class DetaylarTur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            SqlCommand commandList = new SqlCommand("SELECT *, ImageURL FROM Tours INNER JOIN TourImages ON Tours.TourID = TourImages.TourID",
                SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            SqlDataReader dr = commandList.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();


        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TurOtelRezervasyonWeb.Classes
{
    public class SqlConnectionClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-E9K7BQT;Initial Catalog=TurOtelRez;Integrated Security=True");
             public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        } 
    
    }
}
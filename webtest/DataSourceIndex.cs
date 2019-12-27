using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace webtest
{
    public class DataSourceIndex
    {
        public static DataTable GetProducts()
        {
            SqlConnection connection = new SqlConnection(@"Data Source=.\SqlExpress; Initial Catalog=AdventureWorksLT2008; Integrated Security=True;");
            SqlDataAdapter da = new SqlDataAdapter("Select * from sanpham", connection);
            DataSet ds = new DataSet();
            da.Fill(ds, "sanpham");
            return ds.Tables["sanpham"];
        }
    }
}
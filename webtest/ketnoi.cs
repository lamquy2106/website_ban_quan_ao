using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace webtest
{
    public class ketnoi
    {
        public string chuoiketnoi = "workstation id=wsbanquanao.mssql.somee.com;packet size=4096;user id=meoden0209_SQLLogin_1;pwd=g5wustbhb1;data source=wsbanquanao.mssql.somee.com;persist security info=False;initial catalog=wsbanquanao";
        public DataTable sql_select(string sql_query)
        {
            DataTable dt = new DataTable();
            SqlConnection sql_conn = new SqlConnection(chuoiketnoi);
            sql_conn.Open();
            SqlCommand sql_comm = new SqlCommand(sql_query, sql_conn);
            SqlDataReader sql_data_reader = sql_comm.ExecuteReader();
            dt.Load(sql_data_reader);
            sql_conn.Close();
            return dt;
        }
        public void sql_insert_delete_update(string sql_query)
        {
            SqlConnection sql_conn = new SqlConnection(chuoiketnoi);
            sql_conn.Open();
            SqlCommand sql_comm = new SqlCommand(sql_query, sql_conn);
            int TTH = sql_comm.ExecuteNonQuery();
            sql_conn.Close();

        }
    }
}
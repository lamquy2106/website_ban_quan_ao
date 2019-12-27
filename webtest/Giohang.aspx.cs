using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webtest
{
    public partial class Giohang : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("Dangnhap.aspx");

            }
            else
            {
                GridView1.DataSource = (List<Cart>)Session["Cart"];
                GridView1.DataBind();
            }
        }
        public static int spdaco (int masp,DataTable dt)
        {
            int dong = -1;
            for(int i=0;i<dt.Rows.Count;i++)
            {
                if(int.Parse(dt.Rows[i]["masp"].ToString())==masp)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }
        
        protected void btThanhtoan_Click(object sender, EventArgs e)
        {
            Response.Redirect("Thanhtoan.aspx");
            
        }
        

        protected void btxoagio_Click(object sender, EventArgs e)
        {
            Session["Cart"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}
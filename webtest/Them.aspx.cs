using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webtest
{
    public partial class Them : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("Dangnhap.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string sTenfile = "";
                sTenfile = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/image/" + sTenfile));
                kn.sql_insert_delete_update("insert into sanpham values('" + txtMasp.Text + "', '" + txtTensp.Text + "', '" + txtLoai.Text + "', '" + txtGia.Text + "', '" + txtMota.Text + "', '/image/"+sTenfile+"')");
                Response.Write("<script>alert('Thêm thành công')</script>");
                Response.Redirect("~/admin.aspx");
                
            
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webtest
{
    public partial class Addadmin : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("Dangnhap.aspx");

            }
        }
        protected void btDangky_Click(object sender, EventArgs e)
        {
            try
            {
                kn.sql_insert_delete_update("insert into khachhang(Hoten,Gioitinh,Dienthoai,Taikhoan,Matkhau,quyen) values('" + txtHoten.Text + "', '" + txtGioitinh.Text + "', '" + txtDienthoai.Text + "', '" + txtUsername.Text + "', '" + txtPass.Text + "', 'admin')");
                Response.Write("<script>alert('Đăng ký thành công')</script>");
                Response.Redirect("~/Dangnhap.aspx");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Đăng ký không thành công')</script>");
                return;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webtest
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangnhap_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "")
            {
                if (txtPass.Text != "")
                {
                    DataTable dt = kn.sql_select("select * from khachhang where Taikhoan='" + txtUsername.Text + "' and Matkhau='" + txtPass.Text + "' ");
                    if (dt.Rows.Count != 0)
                    {
                        DataTable dtt = kn.sql_select("select * from khachhang where Taikhoan='" + txtUsername.Text + "' and Matkhau='" + txtPass.Text + "' and quyen = 'admin' ");
                        if(dtt.Rows.Count !=0)
                        {
                            Session["TenDN"] = txtUsername.Text;
                            Response.Redirect("~/admin.aspx");
                            return;
                        }
                        else
                        {
                            Session["TenDN"] = txtUsername.Text;
                            Response.Redirect("~/Default.aspx");
                            return;
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Đăng nhập không thành công');</script>");
                    }
                }
            }
        }
    }
}
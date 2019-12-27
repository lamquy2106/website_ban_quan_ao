using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webtest
{
    public partial class Thanhtoan : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        private int s = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("Dangnhap.aspx");
            }
            else
            {
                if (Session["Cart"] == null)
                {
                    Response.Redirect("Default.aspx");
                }

                GridView1.DataSource = (List<Cart>)Session["Cart"];
                GridView1.DataBind();
            }
            String a = "", b = "";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                a = GridView1.Rows[i].Cells[0].Text.ToString();
                b = GridView1.Rows[i].Cells[1].Text.ToString();
                s += (int.Parse(a) * int.Parse(b));
            }
            txtThanhtien.Text = s.ToString();

        }

        protected void btDathang_Click(object sender, EventArgs e)
        {
            if(txtDiachi.Text != "")
            {
                try
                {

                    kn.sql_insert_delete_update("insert into donhang values('" + Session["TenDN"] + "', '" + txtDiachi.Text + "', '" + txtThanhtien.Text + "')");
                    Response.Write("<script>alert('Chúc mừng bạn đã đặt hàng thành công hàng sẽ được giao đến bạn trong thời gian sớm nhất')</script>");
                    Session["Cart"] = null;
                    
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Lỗi trong quá trình đặt hàng')</script>");
                    return;
                }
            }
            else
            {
                Response.Write("<script>alert('Bạn chưa nhập địa chỉ vui lòng nhập địa chỉ')</script>");
                txtDiachi.Focus();
            }
        }
    }
}
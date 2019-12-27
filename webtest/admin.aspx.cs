using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webtest
{
    public partial class admin : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"]!= null)
            {
                if (!Page.IsPostBack)
                {
                    load_data();
                }
            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
            

        }
        void load_data()
        {
            DataTable dt = kn.sql_select("select * from sanpham");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string masp = GridView1.DataKeys[e.RowIndex].Value.ToString();
            kn.sql_insert_delete_update("delete sanpham where Masp='" + masp + "' ");
            load_data();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            load_data();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string masp = (GridView1.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text;
            string tensp = (GridView1.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string loai = (GridView1.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string gia = (GridView1.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string mota = (GridView1.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            FileUpload fileUpload = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            string hinh = fileUpload.FileName;
            if (hinh != null)
            {
                kn.sql_insert_delete_update("update sanpham set Masp=N'" + masp + "', Tensp=N'" + tensp + "',loai=N'" + loai + "',Gia=N'" + gia + "',Mota=N'" + mota + "' where Masp='" + masp + "' ");
                GridView1.EditIndex = -1;
            }
            else
            {
                
                fileUpload.SaveAs(Server.MapPath("~/image/" + hinh));
                kn.sql_insert_delete_update("update sanpham set Masp=N'" + masp + "', Tensp=N'" + tensp + "',loai=N'" + loai + "',Gia=N'" + gia + "',Mota=N'" + mota + "',Hinh=N'/image/" + hinh + "'  where Masp='" + masp + "' ");
                GridView1.EditIndex = -1;

            }
            load_data();


        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            load_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Them.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Addadmin.aspx");
        }
    }
}
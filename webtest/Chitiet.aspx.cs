using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webtest
{
    public partial class Chitiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] == null)
            {
                Response.Redirect("Dangnhap.aspx");

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if(Session["Cart"] == null)
            {
                List<Cart> cart = new List<Cart>();
               
                
                Cart item = new Cart()
                {
                    masp = int.Parse(GridView1.Rows[0].Cells[0].Text),
                    name = GridView1.Rows[0].Cells[2].Text.ToString(),
                    gia = int.Parse(GridView1.Rows[0].Cells[4].Text.ToString()),
                    quantity=1
                   
                };
                cart.Add(item);
                Session["Cart"] = cart;
            }
            else
            {
                List<Cart> cart = (List<Cart>)Session["Cart"];
                int check = 0,index=0;
                for(int i = 0; i < cart.Count; i++)
                {
                    if(cart[i].masp == int.Parse(GridView1.Rows[0].Cells[0].Text.ToString()))
                    {
                        check = 1;
                        index = i;
                        break;
                    }
                }
                if (check != 1)
                {
                    Cart item = new Cart()
                    {
                        masp = int.Parse(GridView1.Rows[0].Cells[0].Text.ToString()),
                        name = GridView1.Rows[0].Cells[2].Text.ToString(),
                        gia = int.Parse(GridView1.Rows[0].Cells[4].Text.ToString()),
                        quantity = 1
                    };
                    cart.Add(item);
                }
                else
                {
                    cart[index].quantity += 1;
                    
                }
                Session["Cart"] = cart;
            }   
        }
    }
}
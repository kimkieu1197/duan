using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Đăng_nhập : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tendangnhap = txttendangnhap.Text;
            string matkhau = txtmatkhau.Text;

            string query = "SELECT Count(*) From Userinformation where tendangnhap = '" + tendangnhap + "' and Matkhau = '" + matkhau + "'";

           UserDao DAO = new UserDao();

            bool result = DAO.GetQuery(query);

            if (result)
            {
                Response.Redirect("dangnhap.aspx");
            }
            else
            {
                lblThongbao.Text = "tendangnhap or Password is not correct";
            }
        }
    }
}
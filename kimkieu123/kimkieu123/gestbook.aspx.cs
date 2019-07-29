using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kimkieu123
{
    public partial class gestbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadComment();
        }

        protected void btngnd_Click(object sender, EventArgs e)
        {
            //lưu nội dung comment mới vào file
            //tạo file theo đường dẫn của website
            string sfile = Server.MapPath(@"\") + "data.txt";
            //mở file nếu khác null(mở được) thì bắt đầu thêm
            using (StreamWriter Writer = new StreamWriter(sfile, true))
            {
                //Thêm các thông tin của entry comment mới vào
                Writer.WriteLine(txttieude.Text);
                Writer.WriteLine(txthoten.Text);
                Writer.WriteLine(txtemail.Text);
                Writer.WriteLine(txtnoidung.Text);
                //Thêm kí hiệu nhận dạng kết thúc một entry->để sau này lọc
                //ra từng entry
                Writer.WriteLine("#END");
                Writer.Close();//đóng file sau khi gửi

            }


        }
        private void ReadComment()
        {
            //hàm đọc tất cả các comment và đưa lleen table trên web
            string file = Server.MapPath(@"\") + "data.txt";
            //mở file nếu khác null thì bắt đầu đọc
            using (StreamReader reader=new StreamReader(file))
            {
                string noidung = reader.ReadToEnd();//đọc toanf bộ file
                //sử dụng mảng chuổi kết thúc entry
                string[] delimiter = { "#END" };
                //lọc ra từng entry và đưa vào mảng chuổi
                string[] arr=noidung.Split(delimiter,
                   StringSplitOptions.RemoveEmptyEntries );

                foreach (string s in arr)//duyệt va từng entry
                {
                    string stemp;
                    //thay thế kí tự xuống dòng bằng dấu dòng bằng cách tạo break
                    stemp = Regex.Replace(s,@"\r\n",@"<br/>");
                    string entry = string.Format("<tr><td colspan=\"2\"{0} </td></tr>",stemp);
                   Entrycoment.InnerHtml += entry;
                }


            }
        }
    }
}
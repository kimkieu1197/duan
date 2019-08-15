using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class User
    {
        string tendangnhap;
        string matkhau;
        string nhaplaimatkhau;
        bool email;
        string hoten;
        public string Tendangnhap
        {
            get { return tendangnhap; }
            set { tendangnhap = value; }
        }
        public string Matkhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }

        public string Email
        {
            get { return Email; }
            set { Email = value; }
        }
        public string Hoten
        {
            get { return hoten; }
            set { hoten = value; }
        }
        public string Nhaplaimatkhau
        {
            get { return nhaplaimatkhau; }
            set { nhaplaimatkhau = value; }
        }
    }
}
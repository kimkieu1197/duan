using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
USE [master]
GO

/****** Object:  Database [UserInfor]    Script Date: 08/15/2019 09:36:38 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'UserInfor')
DROP DATABASE [UserInfor]
GO

USE [master]
GO

/****** Object:  Database [UserInfor]    Script Date: 08/15/2019 09:36:38 ******/
CREATE DATABASE [UserInfor] ON  PRIMARY 
( NAME = N'UserInfor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\UserInfor.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UserInfor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\UserInfor_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [UserInfor] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserInfor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [UserInfor] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [UserInfor] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [UserInfor] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [UserInfor] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [UserInfor] SET ARITHABORT OFF 
GO

ALTER DATABASE [UserInfor] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [UserInfor] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [UserInfor] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [UserInfor] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [UserInfor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [UserInfor] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [UserInfor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [UserInfor] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [UserInfor] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [UserInfor] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [UserInfor] SET  DISABLE_BROKER 
GO

ALTER DATABASE [UserInfor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [UserInfor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [UserInfor] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [UserInfor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [UserInfor] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [UserInfor] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [UserInfor] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [UserInfor] SET  READ_WRITE 
GO

ALTER DATABASE [UserInfor] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [UserInfor] SET  MULTI_USER 
GO

ALTER DATABASE [UserInfor] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [UserInfor] SET DB_CHAINING OFF 
GO
        }
        protected void btndangki_Click(object sender, EventArgs e)
        {
            string tendangnhap = txttendangnhap.Text;
            string matkhau = txtmatkhau.Text;
            string nhaplaimatkhau = txtnhaplaimatkhau.Text;
            string email = txtemail.Text;
            string hoten = txthoten.Text;
            UserDao DAO = new UserDao();

            bool exist = DAO.CheckUser(tendangnhap);

            if (exist)
                lbltb.Text = " Tai khoan da ton tai";
            else
            {
                User user = new User
                {
                    Tendangnhap = tendangnhap,
                    Matkhau = matkhau,
                    Nhaplaimatkhau = nhaplaimatkhau,
                    Email = email,
                    Hoten = hoten,

                };
                bool result = DAO.Insert(user);
                if (result)
                {
                    lbltb.Text = "Đăng ký thành công!";
                }
                else
                {
                    lbltb.Text = "Có lỗi. Vui lòng thử lại sau";
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public class UserDao
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MyData"].ConnectionString;



    public bool CheckUser(string userName)
    {
        string sql = @"SELECT COUNT (*) From Userinformation where tendangnhap = @Tendangnhap";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@tendangnhap",tendangnhap);
            connection.Open();
            int count = (int)command.ExecuteScalar();

            return (count >= 1);
        }
    }

    public bool GetQuery(string query)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int count = (int)command.ExecuteScalar();
            return (count >= 1);
        }
    }

    public bool Insert( User user)
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string sql = "INSERT INTO Userinformation values('a', @tendangnhap, @matkhau, @nhaplaimatkhau, @email, @hoten)";
            SqlCommand com = new SqlCommand(sql, connection);
            com.Parameters.AddWithValue("@tendangnhap", user.Tendangnhap);
            com.Parameters.AddWithValue("@matkhau", user.Matkhau);
            com.Parameters.AddWithValue("@nhaplaimatkhau", user.Nhaplaimatkhau);
            com.Parameters.AddWithValue("@email", user.Email);
            com.Parameters.AddWithValue("@hoten", user.Hoten);

            connection.Open();
            int result = com.ExecuteNonQuery();
            return (result >= 1);
        }
    }
	public UserDao()
	{
        //
        //
    }
}
}
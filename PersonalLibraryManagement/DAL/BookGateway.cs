using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using PersonalLibraryManagement.Model;
using System.Data.SqlClient;

namespace PersonalLibraryManagement.DAL
{
    public class BookGateway
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionDb"].ConnectionString;

        public int SaveBook(Book aBook)
        {
            string query = "INSERT INTO Book_tbl Values('"+aBook.Title+"','"+aBook.Author+"','"+aBook.Publisher+"')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }
        public bool IfBookExist(Book aBook)
        {
            string query = "SELECT * FROM Book_tbl WHERE Title='"+aBook.Title+"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public List<Book> GetAllBookInfo()
        {
            List<Book> bookList = new List<Book>();
            string query = "SELECT * FROM Book_tbl";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read()){
                Book aBook = new Book();
                aBook.Id = int.Parse(reader["Id"].ToString());
                aBook.Title = reader["Title"].ToString();
                bookList.Add(aBook);
            }
            reader.Close();
            connection.Close();
            return bookList;
        }
        public Book GetAllBooks(int id)
        {
            Book aBook = new Book();
            string query = "SELECT * FROM Book_tbl WHERE Id='"+id+"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                
                aBook.Id = int.Parse(reader["Id"].ToString());
                aBook.Title = reader["Title"].ToString();
                aBook.Author = reader["Author"].ToString();
                aBook.Publisher = reader["Publisher"].ToString();
            }
            reader.Close();
            connection.Close();
            return aBook;
        }
    }
}
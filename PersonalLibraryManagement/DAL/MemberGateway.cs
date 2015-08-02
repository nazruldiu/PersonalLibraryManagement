using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using PersonalLibraryManagement.Model;

namespace PersonalLibraryManagement.DAL
{
    public class MemberGateway
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionDb"].ConnectionString;

        public int SaveMember(Member aMember)
        {
            string query = "INSERT INTO Member_tbl Values('" +aMember.Number + "','" + aMember.Name + "')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }

        public bool IfNumberExist(Member aMember)
        {
            string query = "SELECT * FROM Member_tbl WHERE Number='" + aMember.Number + "'";
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
        public int GetMemberId(Member aMember)
        {
            int id = 0;
            string query = "SELECT * FROM Member_tbl WHERE Number='" + aMember.Number + "'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read()){
                id = int.Parse(reader["Id"].ToString());
            }
            return id;
        }

        public int SaveBorrowBook(int memberId, int bookId)
        {
            string query = "INSERT INTO Relation_tbl Values('" + memberId + "','" +bookId + "')";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;

        }

        public List<Book> GetBookId(int id)
        {
            List<Book> bookIdList = new List<Book>();
            string query = "SELECT * FROM Relation_tbl WHERE MemberId='"+id+"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Book aBook = new Book();
                aBook.Id = int.Parse(reader["BookId"].ToString());
                int bookId = aBook.Id;
                aBook = GetAllBookTitle(bookId);
                bookIdList.Add(aBook);
                
            }
            reader.Close();
            connection.Close();
            return bookIdList;
        }
        public Book GetAllBookTitle(int id)
        {
            Book aBook = new Book();
            string query = "SELECT * FROM Book_tbl WHERE Id='"+id+"'";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                
                aBook.Title = reader["Title"].ToString();
               
            }
            reader.Close();
            connection.Close();
            return aBook;
        }
        public bool ReturnBook(int id)
        {
            string query = "DELETE  FROM Relation_tbl WHERE MemberId='" + id + "'";
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
    }
}
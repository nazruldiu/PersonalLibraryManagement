using PersonalLibraryManagement.DAL;
using PersonalLibraryManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalLibraryManagement.BLL
{
    public class BookManager
    {
        BookGateway bookGateway = new BookGateway();
        public string SaveBook(Book aBook)
        {
            int value = bookGateway.SaveBook(aBook);
            if (value > 0)
            {
                return "This book has been saved.";
            }
            else
            {
                return "Sorry! Book saved failed.";
            }
        }
        public bool IfBookExists(Book aBook)
        {
            return bookGateway.IfBookExist(aBook);
        }
        public List<Book> GetAllBookInfo()
        {
            return bookGateway.GetAllBookInfo();
        }
        public Book GetAllBooks(int id)
        {
            return bookGateway.GetAllBooks(id);
        }
    }
}
using PersonalLibraryManagement.BLL;
using PersonalLibraryManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalLibraryManagement.UI
{
    public partial class BookEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        BookManager bookManager = new BookManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Book aBook = new Book();

            aBook.Title = titleTextBox.Text;
            aBook.Author = authorTextBox.Text;
            aBook.Publisher = publisherTextBox.Text;

            if(bookManager.IfBookExists(aBook)){
                msgLabel.Text = "Sorry, Book Already Exists.";
                return;
            }

            msgLabel.Text = bookManager.SaveBook(aBook);
        }
    }
}
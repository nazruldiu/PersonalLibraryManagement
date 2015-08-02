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
    public partial class BorrowBook : System.Web.UI.Page
    {
        BookManager bookManager = new BookManager();
        MemberManager memberManager = new MemberManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                bookDropDownList.DataSource = bookManager.GetAllBookInfo();
                bookDropDownList.DataTextField = "Title";
                bookDropDownList.DataValueField = "Id";
                bookDropDownList.DataBind();
            }
        }

        protected void borrowButton_Click(object sender, EventArgs e)
        {
            Member aMember = new Member();

            aMember.Number = memberNoTextBox.Text;
            int memberid = memberManager.GatMemberId(aMember);
            int bookId = int.Parse(bookDropDownList.SelectedValue);

            if(!memberManager.IfNymberExists(aMember)){
                msgBorrowLabel.Text = "Sorry, member number does not exists.";
                return;
            }

            memberManager.SaveBorrowBook(memberid, bookId);
            msgBorrowLabel.Text = "This Book is borrowed by member whose number is:"+aMember.Number;


        }

        protected void bookDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(bookDropDownList.SelectedValue);
            authorTextBox.Text = bookManager.GetAllBooks(id).Author;
            publishedTextBox.Text = bookManager.GetAllBooks(id).Publisher;
        }
    }
}
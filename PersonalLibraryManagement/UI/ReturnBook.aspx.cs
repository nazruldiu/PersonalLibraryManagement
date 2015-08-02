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
    public partial class ReturnBook : System.Web.UI.Page
    {
     
        MemberManager memberManager = new MemberManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Member aMember = new Member();
            aMember.Number = memberNoTextBox.Text;

           int  memberId = memberManager.GatMemberId(aMember);

            borrowedBookDropDownList.DataSource = memberManager.GetBookId(memberId);
            borrowedBookDropDownList.DataTextField = "Title";
            borrowedBookDropDownList.DataBind();
        }

        protected void returnButton_Click(object sender, EventArgs e)
        {
            Member aMember = new Member();
            aMember.Number = memberNoTextBox.Text;
           int memberid= memberManager.GatMemberId(aMember);

           if (memberManager.ReturnBook(memberid))
           {
               return;
           }
           else
           {
               return;
           }

        }
    }
}
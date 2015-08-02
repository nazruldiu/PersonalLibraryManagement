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
    public partial class MemberEntry : System.Web.UI.Page
    {
        MemberManager memberManager = new MemberManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Member aMember = new Member();
            aMember.Number = numberTextBox.Text;
            aMember.Name = nameTextBox.Text;
            if(memberManager.IfNymberExists(aMember)){
                msgMemberLabel.Text = "Sorry, Member already exists.";
                return;
            }

            msgMemberLabel.Text = memberManager.SaveMember(aMember);
        }
    }
}
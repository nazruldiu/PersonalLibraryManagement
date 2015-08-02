using PersonalLibraryManagement.DAL;
using PersonalLibraryManagement.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PersonalLibraryManagement.BLL
{
    public class MemberManager
    {
        MemberGateway memberGateway = new MemberGateway();
        public string SaveMember(Member aMember)
        {
            int value = memberGateway.SaveMember(aMember);
            if (value > 0)
            {
                return "This Member has been saved.";
            }
            else
            {
                return "Sorry! Member saved failed.";
            }
        }
        public bool IfNymberExists(Member aMember)
        {
            return memberGateway.IfNumberExist(aMember);
        }
        public int GatMemberId(Member aMember)
        {
            return memberGateway.GetMemberId(aMember);
        }
        public int SaveBorrowBook(int memberId, int bookId)
        {
            return memberGateway.SaveBorrowBook(memberId, bookId);
        }
        public List<Book> GetBookId(int id)
        {
            return memberGateway.GetBookId(id);
        }
        public bool ReturnBook(int id)
        {
            return memberGateway.ReturnBook(id);
        }
    }
}
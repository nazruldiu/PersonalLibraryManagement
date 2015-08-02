<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberEntry.aspx.cs" Inherits="PersonalLibraryManagement.UI.MemberEntry" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Entry</title>
    <link href="reset.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <header>
            <h1> MEMBER ENTRY</h1>
        </header>
        <nav>
            <ul>
                <li><a href="BookEntry.aspx">BOOK ENTRY</a></li>
                <li> <a href="MemberEntry.aspx">MEMBER ENTRY</a></li>
                <li> <a href="BorrowBook.aspx">BORROW BOOK</a></li>
                <li> <a href="ReturnBook.aspx">RETURN BOOK</a></li>
            </ul>
        </nav>
        <div class="container">
            <br />
        <asp:Label ID="Label1" runat="server" Text="Number"></asp:Label>
        <asp:TextBox ID="numberTextBox" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msgMemberLabel" runat="server" Text=""></asp:Label>
            </div>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookEntry.aspx.cs" Inherits="PersonalLibraryManagement.UI.BookEntry" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book entry</title>
    <link href="reset.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <header>
            <h1> BOOK ENTRY</h1>
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
        <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
        <asp:TextBox ID="titleTextBox" runat="server"></asp:TextBox><br /><br />
         <asp:Label ID="Label2" runat="server" Text="Author"></asp:Label>
        <asp:TextBox ID="authorTextBox" runat="server"></asp:TextBox><br /><br />
         <asp:Label ID="Label3" runat="server" Text="Publisher"></asp:Label>
        <asp:TextBox ID="publisherTextBox" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" /><br /><br />
        <asp:Label ID="msgLabel" runat="server" Text=""></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>

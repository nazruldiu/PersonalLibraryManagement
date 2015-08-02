<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnBook.aspx.cs" Inherits="PersonalLibraryManagement.UI.ReturnBook" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Return Book</title>
    <link href="reset.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <header>
            <h1>RETURN BOOK</h1>
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
        <asp:Label ID="Label1" runat="server" Text="Enter member no."></asp:Label>
        <asp:TextBox ID="memberNoTextBox" runat="server" Height="29px" Width="197px"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Show Borrowed Books" OnClick="Button1_Click" Width="156px" /><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Borrowed booklist"></asp:Label>
        <asp:DropDownList ID="borrowedBookDropDownList" runat="server" Height="17px" Width="156px"></asp:DropDownList><br /><br />

        <asp:Button ID="returnButton" runat="server" Text="Return" OnClick="returnButton_Click" />
        <br />
            </div>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrowBook.aspx.cs" Inherits="PersonalLibraryManagement.UI.BorrowBook" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Borrow Book</title>
    <link href="reset.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <header>
            <h1> BORROW BOOK</h1>
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
        <asp:TextBox ID="memberNoTextBox" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Select a Book"></asp:Label>
        <asp:DropDownList ID="bookDropDownList" runat="server" AutoPostBack="True" Height="18px" OnSelectedIndexChanged="bookDropDownList_SelectedIndexChanged" Width="147px"></asp:DropDownList><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Author"></asp:Label>
        <asp:TextBox ID="authorTextBox" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label4" runat="server" Text="Published"></asp:Label>
        <asp:TextBox ID="publishedTextBox" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="borrowButton" runat="server" Text="Borrow" OnClick="borrowButton_Click" /><br /><br />
        <asp:Label ID="msgBorrowLabel" runat="server" Text="Label"></asp:Label>
            </div>
    </div>
    </form>
</body>
</html>

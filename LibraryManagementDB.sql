USE [master]
GO
/****** Object:  Database [LibraryManagemntDB]    Script Date: 8/2/2015 3:32:35 PM ******/
CREATE DATABASE [LibraryManagemntDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LibraryManagemntDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2012\MSSQL\DATA\LibraryManagemntDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LibraryManagemntDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQL2012\MSSQL\DATA\LibraryManagemntDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LibraryManagemntDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryManagemntDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryManagemntDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryManagemntDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryManagemntDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibraryManagemntDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibraryManagemntDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibraryManagemntDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LibraryManagemntDB] SET  MULTI_USER 
GO
ALTER DATABASE [LibraryManagemntDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibraryManagemntDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibraryManagemntDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibraryManagemntDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LibraryManagemntDB]
GO
/****** Object:  Table [dbo].[Book_tbl]    Script Date: 8/2/2015 3:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Publisher] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Book_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Member_tbl]    Script Date: 8/2/2015 3:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Member_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Relation_tbl]    Script Date: 8/2/2015 3:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[BookId] [int] NULL,
 CONSTRAINT [PK_Relation_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Book_tbl] ON 

INSERT [dbo].[Book_tbl] ([Id], [Title], [Author], [Publisher]) VALUES (1, N'C# 4.0 complete Refarence', N'Herbert Schildt', N'The Mc Graw-Hill')
INSERT [dbo].[Book_tbl] ([Id], [Title], [Author], [Publisher]) VALUES (2, N'Java', N'Herbert Schildt', N'The Mc Graw-Hill')
SET IDENTITY_INSERT [dbo].[Book_tbl] OFF
SET IDENTITY_INSERT [dbo].[Member_tbl] ON 

INSERT [dbo].[Member_tbl] ([Id], [Number], [Name]) VALUES (1, N'101', N'John')
INSERT [dbo].[Member_tbl] ([Id], [Number], [Name]) VALUES (2, N'102', N'Nazrul')
SET IDENTITY_INSERT [dbo].[Member_tbl] OFF
SET IDENTITY_INSERT [dbo].[Relation_tbl] ON 

INSERT [dbo].[Relation_tbl] ([Id], [MemberId], [BookId]) VALUES (1, 1, 2)
INSERT [dbo].[Relation_tbl] ([Id], [MemberId], [BookId]) VALUES (2, 1, 1)
SET IDENTITY_INSERT [dbo].[Relation_tbl] OFF
ALTER TABLE [dbo].[Relation_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Relation_tbl_Book_tbl] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book_tbl] ([Id])
GO
ALTER TABLE [dbo].[Relation_tbl] CHECK CONSTRAINT [FK_Relation_tbl_Book_tbl]
GO
ALTER TABLE [dbo].[Relation_tbl]  WITH CHECK ADD  CONSTRAINT [FK_Relation_tbl_Member_tbl] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member_tbl] ([Id])
GO
ALTER TABLE [dbo].[Relation_tbl] CHECK CONSTRAINT [FK_Relation_tbl_Member_tbl]
GO
USE [master]
GO
ALTER DATABASE [LibraryManagemntDB] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [STUDENT]    Script Date: 10/25/2023 4:48:01 PM ******/
CREATE DATABASE [STUDENT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'STUDENT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\STUDENT.mdf' , SIZE = 4352KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'STUDENT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\STUDENT_log.LDF' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [STUDENT] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [STUDENT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [STUDENT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [STUDENT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [STUDENT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [STUDENT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [STUDENT] SET ARITHABORT OFF 
GO
ALTER DATABASE [STUDENT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [STUDENT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [STUDENT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [STUDENT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [STUDENT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [STUDENT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [STUDENT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [STUDENT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [STUDENT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [STUDENT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [STUDENT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [STUDENT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [STUDENT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [STUDENT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [STUDENT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [STUDENT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [STUDENT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [STUDENT] SET RECOVERY FULL 
GO
ALTER DATABASE [STUDENT] SET  MULTI_USER 
GO
ALTER DATABASE [STUDENT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [STUDENT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [STUDENT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [STUDENT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [STUDENT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [STUDENT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'STUDENT', N'ON'
GO
ALTER DATABASE [STUDENT] SET QUERY_STORE = OFF
GO
USE [STUDENT]
GO
/****** Object:  Table [dbo].[BloodInfo]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodInfo](
	[Id] [int] NOT NULL,
	[BloodGroupName] [varchar](50) NULL,
 CONSTRAINT [PK_BloodInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOK_INFO]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_INFO](
	[BOOK_ID] [int] NOT NULL,
	[BOOK_NAME] [varchar](400) NULL,
	[BOOK_TYPE_ID] [int] NULL,
	[WRITER] [varchar](100) NULL,
	[PPUBLISHER_ID] [int] NULL,
	[PUBLISHING_YEAR] [int] NULL,
	[EDITION_ID] [int] NULL,
	[LANGUAGE_ID] [int] NULL,
	[QUANTITY] [int] NULL,
	[Isbn_No] [int] NULL,
	[Classification_No] [decimal](18, 0) NULL,
	[Supplier] [varchar](200) NULL,
	[Source] [int] NULL,
	[Clue_Page] [int] NULL,
	[Total_Page] [int] NULL,
	[Entry_Date] [date] NULL,
	[PRICE] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[BOOK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Type_Info]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Type_Info](
	[Type_Id] [int] NOT NULL,
	[Type_Name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyInfo]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyInfo](
	[Id] [int] NOT NULL,
	[CoName] [varchar](50) NULL,
 CONSTRAINT [PK_CompanyInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartmentInfo]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentInfo](
	[DepartmentId] [int] NOT NULL,
	[DeptName] [varchar](50) NULL,
 CONSTRAINT [PK_DepartmentInfo] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation_Info]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation_Info](
	[Designation_Id] [int] NOT NULL,
	[Designation_Name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Designation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Edition_Info]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edition_Info](
	[Edition_Id] [int] NOT NULL,
	[Edition_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Edition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language_Info]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language_Info](
	[Language_Id] [int] NOT NULL,
	[Language_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Language_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher_Info]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher_Info](
	[Publisher_Id] [int] NOT NULL,
	[Publisher_Name] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Publisher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemesterInfo]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterInfo](
	[Id] [int] NOT NULL,
	[Semester] [varchar](50) NULL,
 CONSTRAINT [PK_SemesterInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SexInfo]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SexInfo](
	[SexId] [int] NOT NULL,
	[SexType] [varchar](50) NULL,
 CONSTRAINT [PK_SexInfo] PRIMARY KEY CLUSTERED 
(
	[SexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShiftInfo]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftInfo](
	[ShiftId] [int] NOT NULL,
	[Shift_Name] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Source]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source](
	[Source_Id] [int] NOT NULL,
	[Source_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Source_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENTINFO]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTINFO](
	[STUDENTID] [int] NOT NULL,
	[NAME] [varchar](50) NULL,
	[SESSION] [varchar](20) NULL,
	[ADDRESS] [varchar](100) NULL,
	[ShiftId] [int] NULL,
	[GendarId] [int] NULL,
	[SemesterId] [int] NULL,
	[Contact] [int] NULL,
	[DeptId] [int] NULL,
	[DateOfBirth] [date] NULL,
	[BloodId] [int] NULL,
 CONSTRAINT [PK__STUDENTI__495196F07F60ED59] PRIMARY KEY CLUSTERED 
(
	[STUDENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHER_INFO]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHER_INFO](
	[TEACHER_ID] [int] NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[DEPARTMENT_ID] [int] NULL,
	[SHIFT_ID] [int] NULL,
	[DESIGNATION_ID] [int] NULL,
	[TYPE_ID] [int] NULL,
	[GENDER_ID] [int] NULL,
	[BLOOD_ID] [int] NULL,
	[CONTACT_NO] [varchar](11) NULL,
	[ADDRESS] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[TEACHER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_Info]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Info](
	[Type_Id] [int] NOT NULL,
	[Type_Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 10/25/2023 4:48:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (1, N'A+')
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (2, N'B+')
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (3, N'A-')
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (4, N'B-')
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (5, N'O+')
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (6, N'O-')
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (7, N'AB+')
INSERT [dbo].[BloodInfo] ([Id], [BloodGroupName]) VALUES (8, N'AB-')
GO
INSERT [dbo].[BOOK_INFO] ([BOOK_ID], [BOOK_NAME], [BOOK_TYPE_ID], [WRITER], [PPUBLISHER_ID], [PUBLISHING_YEAR], [EDITION_ID], [LANGUAGE_ID], [QUANTITY], [Isbn_No], [Classification_No], [Supplier], [Source], [Clue_Page], [Total_Page], [Entry_Date], [PRICE]) VALUES (1, N'Operating System Application', 1, N'S. M. Tofayel Ahmad', 1, 2022, 6, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BOOK_INFO] ([BOOK_ID], [BOOK_NAME], [BOOK_TYPE_ID], [WRITER], [PPUBLISHER_ID], [PUBLISHING_YEAR], [EDITION_ID], [LANGUAGE_ID], [QUANTITY], [Isbn_No], [Classification_No], [Supplier], [Source], [Clue_Page], [Total_Page], [Entry_Date], [PRICE]) VALUES (2, N'Sequetial Logic Systems', 1, N'Saleh Ahmed', 1, 2022, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (1, N'Computer Science')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (2, N'Electrical Engineering')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (3, N'ELectronics Engineering')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (4, N'Civil Engineering')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (5, N'Constraction Engineering')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (6, N'Poem')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (7, N'Story')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (8, N'Science Fiction')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (9, N'Mathematics')
INSERT [dbo].[Book_Type_Info] ([Type_Id], [Type_Name]) VALUES (10, N'Novel')
GO
INSERT [dbo].[DepartmentInfo] ([DepartmentId], [DeptName]) VALUES (64, N'Mechnical')
INSERT [dbo].[DepartmentInfo] ([DepartmentId], [DeptName]) VALUES (66, N'Computer')
INSERT [dbo].[DepartmentInfo] ([DepartmentId], [DeptName]) VALUES (67, N'Electrical')
INSERT [dbo].[DepartmentInfo] ([DepartmentId], [DeptName]) VALUES (68, N'Electronics')
INSERT [dbo].[DepartmentInfo] ([DepartmentId], [DeptName]) VALUES (70, N'Civil')
INSERT [dbo].[DepartmentInfo] ([DepartmentId], [DeptName]) VALUES (88, N'Construction')
INSERT [dbo].[DepartmentInfo] ([DepartmentId], [DeptName]) VALUES (94, N'Telecom')
GO
INSERT [dbo].[Designation_Info] ([Designation_Id], [Designation_Name]) VALUES (1, N'Principle')
INSERT [dbo].[Designation_Info] ([Designation_Id], [Designation_Name]) VALUES (2, N'Assistant Principle')
INSERT [dbo].[Designation_Info] ([Designation_Id], [Designation_Name]) VALUES (3, N'Chief Instractor')
INSERT [dbo].[Designation_Info] ([Designation_Id], [Designation_Name]) VALUES (4, N'Instractor')
INSERT [dbo].[Designation_Info] ([Designation_Id], [Designation_Name]) VALUES (5, N'Junior Instractor')
GO
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (1, N'1st')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (2, N'2nd')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (3, N'3rd')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (4, N'4th')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (5, N'5th')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (6, N'6th')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (7, N'7th')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (8, N'8th')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (9, N'9th')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (10, N'10th')
INSERT [dbo].[Edition_Info] ([Edition_Id], [Edition_Name]) VALUES (11, N'11th')
GO
INSERT [dbo].[Language_Info] ([Language_Id], [Language_Name]) VALUES (1, N'Bangla')
INSERT [dbo].[Language_Info] ([Language_Id], [Language_Name]) VALUES (2, N'English')
INSERT [dbo].[Language_Info] ([Language_Id], [Language_Name]) VALUES (3, N'Arabic')
INSERT [dbo].[Language_Info] ([Language_Id], [Language_Name]) VALUES (4, N'Hindi')
INSERT [dbo].[Language_Info] ([Language_Id], [Language_Name]) VALUES (5, N'Urdu')
GO
INSERT [dbo].[Publisher_Info] ([Publisher_Id], [Publisher_Name]) VALUES (1, N'Haque Publications')
INSERT [dbo].[Publisher_Info] ([Publisher_Id], [Publisher_Name]) VALUES (2, N'Technical Publications')
INSERT [dbo].[Publisher_Info] ([Publisher_Id], [Publisher_Name]) VALUES (3, N'Seba Prokashoni')
GO
INSERT [dbo].[SemesterInfo] ([Id], [Semester]) VALUES (1, N'1st')
INSERT [dbo].[SemesterInfo] ([Id], [Semester]) VALUES (2, N'2nd')
INSERT [dbo].[SemesterInfo] ([Id], [Semester]) VALUES (3, N'3rd')
INSERT [dbo].[SemesterInfo] ([Id], [Semester]) VALUES (4, N'4th')
INSERT [dbo].[SemesterInfo] ([Id], [Semester]) VALUES (5, N'5th')
INSERT [dbo].[SemesterInfo] ([Id], [Semester]) VALUES (6, N'6th')
INSERT [dbo].[SemesterInfo] ([Id], [Semester]) VALUES (7, N'7th')
GO
INSERT [dbo].[SexInfo] ([SexId], [SexType]) VALUES (1, N'Male')
INSERT [dbo].[SexInfo] ([SexId], [SexType]) VALUES (2, N'Female')
INSERT [dbo].[SexInfo] ([SexId], [SexType]) VALUES (3, N'Others')
GO
INSERT [dbo].[ShiftInfo] ([ShiftId], [Shift_Name]) VALUES (1, N'1st')
INSERT [dbo].[ShiftInfo] ([ShiftId], [Shift_Name]) VALUES (2, N'2nd')
GO
INSERT [dbo].[Source] ([Source_Id], [Source_Name]) VALUES (1, N'Buy')
INSERT [dbo].[Source] ([Source_Id], [Source_Name]) VALUES (2, N'Donation')
INSERT [dbo].[Source] ([Source_Id], [Source_Name]) VALUES (3, N'Gift')
GO
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (1235, N'nixon', N'55-65', N'validation', 1, 1, 1, 12345, 64, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (113796, N'MD. SAZZAT HOSSAIN', N'2018-2019', N'BELTIA BARI', 1, 1, 1, NULL, 66, CAST(N'2005-10-15' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (156295, N'DITHI', N'2019-2020', N'SABALIA', 2, 2, 2, NULL, 67, CAST(N'2003-06-24' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (156303, N'SUMA AKTER', N'2017-2018', N'ADALAT PARA', 1, 2, 1, NULL, 66, CAST(N'2003-02-06' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (156317, N'MD. RAJON MIA', N'2019-2020', N'MUSLIM PARA', 1, 1, 3, NULL, 66, CAST(N'2003-02-12' AS Date), 8)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (156356, N'MST SHAMOLY KHATUN', N'2017-2018', N'MUSLIM PARA', 1, 2, 5, NULL, 66, CAST(N'2002-01-31' AS Date), 3)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (184620, N'SUBORNA', N'2018-2019', N'BELTIA BARI', 2, 2, 6, NULL, 94, CAST(N'2003-06-26' AS Date), 5)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (184621, N'RATUL KHAN', N'2019-2020', N'THANA PARA', 2, 1, 5, NULL, 88, CAST(N'2001-11-15' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (364222, N'RISUL ISLAM RIFAT', N'2017-2018', N'BELTIA BARI', 1, 1, 4, NULL, 66, CAST(N'2001-10-27' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (415721, N'MD. NAYEM HOSSAIN', N'2018-2019', N'THANA PARA', 2, 3, 5, NULL, 66, CAST(N'2003-08-16' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (415732, N'NINAD AL JUBAIR', N'2019-2020', N'SONTOSH', 1, 1, 2, NULL, 66, CAST(N'2001-09-12' AS Date), 4)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (415741, N'MD. ABDULLAH- AL- MAHMUD KHAN', N'2017-2018', N'ADALAT PARA', 2, 1, 2, NULL, 67, CAST(N'2004-08-08' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (425701, N'MD. SIAM ', N'2018-2019', N'BELTIA BARI', 2, 1, 5, NULL, 67, CAST(N'2001-07-19' AS Date), 4)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468098, N'MD. SABBIR HASAN', N'2019-2020', N'BISWASH BETKA', 2, 1, 4, NULL, 67, CAST(N'2002-03-04' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468099, N'ATIA SULTANA', N'2018-2019', N'AKUR TAKUR PARA', 1, 2, 5, NULL, 70, CAST(N'2001-09-03' AS Date), 4)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468103, N'PAPON DEB NATH', N'2017-2018', N'BELTIA BARI', 1, 1, 4, NULL, 70, CAST(N'2001-09-18' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468104, N'MD. HRIDOY MIA', N'2018-2019', N'BOILLA', 1, 1, 3, NULL, 88, CAST(N'2002-05-01' AS Date), 4)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468105, N'ANIKA TABASSUM AKHI', N'2019-2020', N'BELTIA BARI', 2, 2, 4, NULL, 88, CAST(N'2003-11-07' AS Date), 3)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468106, N'SHOBORNA SARKER', N'2017-2018', N'GODAWN BRIDGE', 1, 2, 3, NULL, 68, CAST(N'2003-03-11' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468109, N'SONEKA AKTER', N'2019-2020', N'BELTIA BARI', 2, 2, 3, NULL, 68, CAST(N'2003-11-14' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468110, N'BIPLOP HOSSAIN PRANTO', N'2017-2018', N'ASHIKPUR', 1, 1, 7, NULL, 88, CAST(N'2001-11-05' AS Date), 7)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468113, N'MD. HOJRAT ALI', N'2018-2019', N'BOILLA', 2, 1, 7, NULL, 66, CAST(N'2002-08-23' AS Date), 8)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468117, N'MD. TAUHID ISLAM', N'2017-2018', N'BELTIA BARI', 2, 1, 3, NULL, 64, CAST(N'2003-04-07' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468118, N'JUI AKTER', N'2017-2018', N'BYPASS', 1, 2, 4, NULL, 64, CAST(N'2001-11-01' AS Date), 7)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468119, N'JOHORUL ISLAM JOY', N'2019-2020', N'AKUR TAKUR PARA', 1, 1, 4, NULL, 66, CAST(N'2001-05-11' AS Date), 4)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468121, N'SINTHIA AKTER', N'2018-2019', N'BELTIA BARI', 1, 2, 7, NULL, 66, CAST(N'2003-12-22' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468122, N'MD. RASEL SIKDER', N'2017-2018', N'ASIKHPUR', 2, 1, 7, NULL, 66, CAST(N'2003-02-11' AS Date), 3)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468123, N'SHARIAR IMTIAZ', N'2019-2020', N'ADALAT PARA', 1, 1, 7, NULL, 64, CAST(N'2002-02-05' AS Date), 8)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468124, N'MANISHA AKTER MIM', N'2018-2019', N'BELTIA BARI', 2, 2, 6, NULL, 70, CAST(N'2003-12-29' AS Date), 6)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468125, N'SIAM', N'2019-2020', N'BELTIA BARI', 1, 1, 6, NULL, 88, CAST(N'2002-12-25' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468126, N'MONNI', N'2018-2019', N'BOILLA', 2, 2, 6, NULL, 88, CAST(N'2002-04-27' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468127, N'KHEYA KHAN', N'2017-2018', N'BELTIA BARI', 1, 2, 2, NULL, 70, CAST(N'2002-10-15' AS Date), 5)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468128, N'TANZINA', N'2018-2019', N'MUSLIM PARA', 1, 2, 4, NULL, 68, CAST(N'2003-03-13' AS Date), 2)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468129, N'MD. ASHIK MIAH', N'2020-2021', N'Beltia Bari, Tangail', 2, 1, 3, 1657835681, 88, CAST(N'2003-05-06' AS Date), 5)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468130, N'MONZURUL HASAN', N'2018-2019', N'Beltia Bari, Tangail', 2, 1, 7, 1457425698, 67, CAST(N'2002-07-25' AS Date), 3)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468132, N'MST. LIPA KHATUN', N'2019-2020', N'Basail, Tangail', 1, 2, 5, 1731546852, 68, CAST(N'2003-01-02' AS Date), 7)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468133, N'MD.AL -AMIN HOSEN', N'2021-2022', N'Chandra, Gazipur', 1, 1, 1, 1902152485, 70, CAST(N'2004-06-08' AS Date), 5)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (468141, N'Nishat Jerin Juthi', N'2019-2020', N'Tangail', 1, 2, 4, 1735647985, 66, CAST(N'2003-06-26' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (7102025, N'Tanina', N'17-18', N'adfsdf', 2, 2, 6, 232323, 66, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (7102031, N'Mst. Keay', N'2006-7', N'Dhaka', 1, 1, 1, 123456789, 64, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[STUDENTINFO] ([STUDENTID], [NAME], [SESSION], [ADDRESS], [ShiftId], [GendarId], [SemesterId], [Contact], [DeptId], [DateOfBirth], [BloodId]) VALUES (21170044, N'Hasibur Rahman', N'2021-2022', N'Boilla, Tangail', 1, 1, 1, 1752361093, 64, CAST(N'2022-05-31' AS Date), 2)
GO
INSERT [dbo].[TEACHER_INFO] ([TEACHER_ID], [NAME], [DEPARTMENT_ID], [SHIFT_ID], [DESIGNATION_ID], [TYPE_ID], [GENDER_ID], [BLOOD_ID], [CONTACT_NO], [ADDRESS]) VALUES (1, N'SUAEB AL NIXON', 66, 2, 4, 1, 1, 5, N'01764578524', N'MYMENSINGH')
INSERT [dbo].[TEACHER_INFO] ([TEACHER_ID], [NAME], [DEPARTMENT_ID], [SHIFT_ID], [DESIGNATION_ID], [TYPE_ID], [GENDER_ID], [BLOOD_ID], [CONTACT_NO], [ADDRESS]) VALUES (2, N'Md. Shamsul Alam', 66, 1, 3, 1, 1, 1, N'01732498756', N'Tangail')
INSERT [dbo].[TEACHER_INFO] ([TEACHER_ID], [NAME], [DEPARTMENT_ID], [SHIFT_ID], [DESIGNATION_ID], [TYPE_ID], [GENDER_ID], [BLOOD_ID], [CONTACT_NO], [ADDRESS]) VALUES (3, N'Hazrat Ali', 66, 2, 5, 2, 3, 2, N'01654987325', N'Tangail')
GO
INSERT [dbo].[Type_Info] ([Type_Id], [Type_Name]) VALUES (1, N'Permanent')
INSERT [dbo].[Type_Info] ([Type_Id], [Type_Name]) VALUES (2, N'Guest')
GO
INSERT [dbo].[UserLogin] ([USERNAME], [PASSWORD]) VALUES (N' ', N'test')
GO
ALTER TABLE [dbo].[BOOK_INFO]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_INFO_Book_Type_Info] FOREIGN KEY([BOOK_TYPE_ID])
REFERENCES [dbo].[Book_Type_Info] ([Type_Id])
GO
ALTER TABLE [dbo].[BOOK_INFO] CHECK CONSTRAINT [FK_BOOK_INFO_Book_Type_Info]
GO
ALTER TABLE [dbo].[BOOK_INFO]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_INFO_Edition_Info] FOREIGN KEY([EDITION_ID])
REFERENCES [dbo].[Edition_Info] ([Edition_Id])
GO
ALTER TABLE [dbo].[BOOK_INFO] CHECK CONSTRAINT [FK_BOOK_INFO_Edition_Info]
GO
ALTER TABLE [dbo].[BOOK_INFO]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_INFO_Publisher_Info] FOREIGN KEY([PPUBLISHER_ID])
REFERENCES [dbo].[Publisher_Info] ([Publisher_Id])
GO
ALTER TABLE [dbo].[BOOK_INFO] CHECK CONSTRAINT [FK_BOOK_INFO_Publisher_Info]
GO
ALTER TABLE [dbo].[BOOK_INFO]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_INFO_Source] FOREIGN KEY([Source])
REFERENCES [dbo].[Source] ([Source_Id])
GO
ALTER TABLE [dbo].[BOOK_INFO] CHECK CONSTRAINT [FK_BOOK_INFO_Source]
GO
ALTER TABLE [dbo].[STUDENTINFO]  WITH CHECK ADD  CONSTRAINT [FK_STUDENTINFO_DepartmentInfo] FOREIGN KEY([DeptId])
REFERENCES [dbo].[DepartmentInfo] ([DepartmentId])
GO
ALTER TABLE [dbo].[STUDENTINFO] CHECK CONSTRAINT [FK_STUDENTINFO_DepartmentInfo]
GO
ALTER TABLE [dbo].[STUDENTINFO]  WITH CHECK ADD  CONSTRAINT [FK_STUDENTINFO_SemesterInfo] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[SemesterInfo] ([Id])
GO
ALTER TABLE [dbo].[STUDENTINFO] CHECK CONSTRAINT [FK_STUDENTINFO_SemesterInfo]
GO
ALTER TABLE [dbo].[STUDENTINFO]  WITH CHECK ADD  CONSTRAINT [FK_STUDENTINFO_SexInfo] FOREIGN KEY([GendarId])
REFERENCES [dbo].[SexInfo] ([SexId])
GO
ALTER TABLE [dbo].[STUDENTINFO] CHECK CONSTRAINT [FK_STUDENTINFO_SexInfo]
GO
ALTER TABLE [dbo].[STUDENTINFO]  WITH CHECK ADD  CONSTRAINT [FK_STUDENTINFO_ShiftInfo] FOREIGN KEY([ShiftId])
REFERENCES [dbo].[ShiftInfo] ([ShiftId])
GO
ALTER TABLE [dbo].[STUDENTINFO] CHECK CONSTRAINT [FK_STUDENTINFO_ShiftInfo]
GO
ALTER TABLE [dbo].[TEACHER_INFO]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_INFO_BloodInfo] FOREIGN KEY([BLOOD_ID])
REFERENCES [dbo].[BloodInfo] ([Id])
GO
ALTER TABLE [dbo].[TEACHER_INFO] CHECK CONSTRAINT [FK_TEACHER_INFO_BloodInfo]
GO
ALTER TABLE [dbo].[TEACHER_INFO]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_INFO_DepartmentInfo] FOREIGN KEY([DEPARTMENT_ID])
REFERENCES [dbo].[DepartmentInfo] ([DepartmentId])
GO
ALTER TABLE [dbo].[TEACHER_INFO] CHECK CONSTRAINT [FK_TEACHER_INFO_DepartmentInfo]
GO
ALTER TABLE [dbo].[TEACHER_INFO]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_INFO_Designation_Info] FOREIGN KEY([DESIGNATION_ID])
REFERENCES [dbo].[Designation_Info] ([Designation_Id])
GO
ALTER TABLE [dbo].[TEACHER_INFO] CHECK CONSTRAINT [FK_TEACHER_INFO_Designation_Info]
GO
ALTER TABLE [dbo].[TEACHER_INFO]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_INFO_SexInfo] FOREIGN KEY([GENDER_ID])
REFERENCES [dbo].[SexInfo] ([SexId])
GO
ALTER TABLE [dbo].[TEACHER_INFO] CHECK CONSTRAINT [FK_TEACHER_INFO_SexInfo]
GO
ALTER TABLE [dbo].[TEACHER_INFO]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_INFO_ShiftInfo] FOREIGN KEY([SHIFT_ID])
REFERENCES [dbo].[ShiftInfo] ([ShiftId])
GO
ALTER TABLE [dbo].[TEACHER_INFO] CHECK CONSTRAINT [FK_TEACHER_INFO_ShiftInfo]
GO
ALTER TABLE [dbo].[TEACHER_INFO]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_INFO_Type_Info] FOREIGN KEY([TYPE_ID])
REFERENCES [dbo].[Type_Info] ([Type_Id])
GO
ALTER TABLE [dbo].[TEACHER_INFO] CHECK CONSTRAINT [FK_TEACHER_INFO_Type_Info]
GO
/****** Object:  StoredProcedure [dbo].[Sp_BirthDateWiseStudentSearch]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:NIXON/MUNNA
-- Create date: 22-02-22
-- Description:	BirthDateWiseStudentSearch
-- =============================================
CREATE PROCEDURE [dbo].[Sp_BirthDateWiseStudentSearch] 
		 @SDATE DATE,
		 @EDATE DATE,
		 @ID INT
AS
IF @ID =0 SET @ID  = NULL
BEGIN
	SELECT
			  S.STUDENTID AS RollNo,
			  S.NAME, 
			  S.DateOfBirth,
			  CASE
				 WHEN S.ShiftId = 1 THEN '1ST SHIFT'
				 WHEN S.ShiftId = 2 THEN '2ND SHIFT'
			  END as Shift,
			  CASE
				  WHEN S.GendarId = 1 THEN 'MALE'
				  WHEN S.GendarId = 2 THEN 'FEMALE'
				  ELSE 'OTHERS'
			  END AS Gendar,
			  D.DeptName,
			  SS.Semester,
			  B.BloodGroupName,
			  S.ADDRESS,
			  S.SESSION,
			  S.Contact
		FROM STUDENTINFO S
			INNER JOIN DepartmentInfo D ON D.DepartmentId = S.DeptId
				INNER JOIN SemesterInfo SS ON SS.Id = S.SemesterId
					INNER JOIN BloodInfo B ON B.Id = S.BloodId
			WHERE 
			
			CASE 
				WHEN @ID IS NULL THEN 1
				WHEN @ID IS NOT NULL AND S.STUDENTID = @ID THEN 1				
			END = 1
			
			AND 
			S.DateOfBirth BETWEEN @SDATE AND @EDATE
			--S.DateOfBirth>= @SDATE AND S.DateOfBirth<=@EDATE
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BLOOD_GROUP_WISE_SEARCH]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[SP_BLOOD_GROUP_WISE_SEARCH]

	@Blood INT
	
AS

	IF @Blood= 0 SET @Blood= NULL
	
BEGIN
	
	SELECT
		S.STUDENTID AS Roll,
		S.NAME AS Name,
		SM.Semester,
		
		CASE
		WHEN S.ShiftId=1 THEN '1st'
		WHEN S.ShiftId=2 THEN '2nd'
		END AS Shift,
		
		S.SESSION AS Session,
		D.DeptName AS Department,
		
		CASE
		WHEN S.GendarId=1 THEN 'Male'
		WHEN S.GendarId=2 THEN 'Female'
		ELSE 'Others'
		END AS Gender,
		
		B.BloodGroupName,
		S.DateOfBirth,
		S.Contact,
		S.ADDRESS AS Address
			
		
		FROM
		STUDENTINFO AS S
		
				INNER JOIN DepartmentInfo D ON D.DepartmentId = S.DeptId
					INNER JOIN SemesterInfo SM ON SM.Id = S.SemesterId
						INNER JOIN BloodInfo B ON B.Id = S.BloodId
		
		WHERE
					
					CASE
						WHEN @Blood IS NULL THEN 1
						WHEN @Blood IS NOT NULL AND S.BloodId = @Blood THEN 1
					END=1
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CollectStudentInfoUsingSexIdandStudentId]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:NIXON
-- Create date: 15-02-22
-- Description:	TO collect all student info by gendar and student Id
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CollectStudentInfoUsingSexIdandStudentId] 
	 @GID INT,
	 @ROLL INT 
AS
	    IF @GID = 0 SET @GID = NULL
		IF @ROLL = 0 SET @ROLL = NULL
BEGIN
			SELECT
				  S.STUDENTID AS RollNo,
				  S.NAME,
				  D.DeptName,
				  SH.Shift_Name,
				  SS.Semester,
				  SE.SexType,
				  S.ADDRESS,
				  S.DateOfBirth,
				  BL.BloodGroupName,
				  S.Contact
			FROM STUDENTINFO S
				INNER JOIN DepartmentInfo D ON D.DepartmentId = S.DeptId
					INNER JOIN SemesterInfo SS ON SS.Id = S.SemesterId
						INNER JOIN ShiftInfo SH ON SH.ShiftId = S.ShiftId
							INNER JOIN SexInfo SE ON SE.SexId = S.GendarId
								INNER JOIN BloodInfo BL ON BL.Id = S.BloodId
				
					WHERE 
					CASE
						WHEN @ROLL IS NULL THEN 1
						WHEN @ROLL IS NOT NULL AND S.STUDENTID = @ROLL THEN 1
					END =1
					AND
					CASE 
						WHEN @GID IS NULL THEN 1
						WHEN @GID IS NOT NULL AND SE.SexId = @GID THEN 1 
					END =1

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DEPARMENT_WISE_REPORT]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_DEPARMENT_WISE_REPORT]
 @ROLL int,
 @did int
AS
IF @ROLL=0 SET @ROLL= NULL
	IF @did= 0 SET @did= NULL
BEGIN
	SELECT
		S.STUDENTID 'Roll',
		S.NAME,
		S.SESSION,
		CASE
			WHEN S.ShiftId= 1 THEN '1ST SHIFT'
			WHEN S.ShiftId= 2 THEN '2ND SHIFT'
		END AS SHIFT,
			
		D.DeptName AS DEPARTMENT,
		SI.Semester AS SEMESTER,
		S.DateOfBirth AS 'BIRTH DATE',
		BL.BloodGroupName AS 'BLOOD GROUP',	
		CASE
			WHEN S.GendarId= 1 THEN 'MALE'
			WHEN S.GendarId= 2 THEN 'FEMALE'
		ELSE 'OTHERS'
		END AS GENDER,
		S.Contact AS CONTACT ,	
		S.ADDRESS
	FROM STUDENTINFO S
		INNER JOIN DepartmentInfo D ON D.DepartmentId= S.DeptId
			INNER JOIN BloodInfo BL ON BL.Id= S.BloodId
				INNER JOIN SemesterInfo SI ON SI.Id= S.SemesterId
	
	WHERE
	
	CASE
		WHEN @ROLL IS NULL THEN 1
		WHEN @ROLL IS NOT NULL AND @ROLL= S.STUDENTID THEN 1
	END=1
	
	AND
	
	CASE
		WHEN @did IS NULL THEN 1
		WHEN @did IS NOT NULL AND @did= S.DeptId THEN 1 
	END=1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SEMESTER_WISE_STUDENT_SEARCH]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MUNNA
-- Create date: 02/03/2022
-- Description:	SEMESTER_WISE_STUDENT_SEARCH
-- =============================================
CREATE PROCEDURE [dbo].[SP_SEMESTER_WISE_STUDENT_SEARCH]
	@ROLL INT,
	@SM INT
AS
	IF @ROLL=0 SET @ROLL= NULL
	IF @SM= 0 SET @SM= NULL
BEGIN
	SELECT
	S.STUDENTID 'Roll',
	S.NAME,
	S.SESSION,
	CASE
	WHEN S.ShiftId= 1 THEN '1ST SHIFT'
	WHEN S.ShiftId= 2 THEN '2ND SHIFT'
	END AS SHIFT,
		
	D.DeptName AS DEPARTMENT,
	SI.Semester AS SEMESTER,
	S.DateOfBirth AS 'BIRTH DATE',
	BL.BloodGroupName AS 'BLOOD GROUP',
		
	CASE
	WHEN S.GendarId= 1 THEN 'MALE'
	WHEN S.GendarId= 2 THEN 'FEMALE'
	ELSE 'OTHERS'
	END AS GENDER,
	
	S.Contact AS CONTACT ,	
	S.ADDRESS
	
	
	FROM STUDENTINFO S
		INNER JOIN DepartmentInfo D ON D.DepartmentId= S.DeptId
			INNER JOIN BloodInfo BL ON BL.Id= S.BloodId
				INNER JOIN SemesterInfo SI ON SI.Id= S.SemesterId
	
	WHERE
	
	CASE
	WHEN @ROLL IS NULL THEN 1
	WHEN @ROLL IS NOT NULL AND @ROLL= S.STUDENTID THEN 1
	END=1
	
	AND
	
	CASE
	WHEN @SM IS NULL THEN 1
	WHEN @SM IS NOT NULL AND @SM= S.SemesterId THEN 1 
	END=1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SHIFT_WISE_SEARCH]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		M KHAN
-- Create date: 25-02-2022
-- Description:	TO SEARCH STUDENT USING SHIFT AND ROLL
-- =============================================
CREATE PROCEDURE [dbo].[SP_SHIFT_WISE_SEARCH] 
	@SFT INT,
	@ROLL INT,
	@session varchar(20)
AS
	IF @SFT= 0 SET @SFT= NULL
	IF @ROLL=0 SET @ROLL= NULL
	IF @session= 0 SET @session= NULL

BEGIN

	SELECT
	S.STUDENTID AS ROLL,
	S.NAME,
	SE.Semester,
	S.SESSION,
	
	CASE
	WHEN S.ShiftId= 1 THEN '1ST SHIFT'
	WHEN S.ShiftId= 2 THEN '2ND SHIFT'
	END AS SHIFT,
	
	D.DeptName AS DEPERTMENT,
	S.DateOfBirth,
	
	CASE
	WHEN S.GendarId= 1 THEN 'MALE'
	WHEN S.GendarId= 2 THEN 'FEMALE'
	ELSE 'OTHERS'
	END AS GENDAR,
	
	B.BloodGroupName AS BLOOD_GROUP,
	S.Contact,
	S.ADDRESS	
	
	
	FROM STUDENTINFO S
			INNER JOIN DepartmentInfo D ON D.DepartmentId= S.DeptId
				INNER JOIN SemesterInfo SE ON SE.Id= S.SemesterId
					INNER JOIN BloodInfo B ON B.Id= S.BloodId
				
	WHERE
	
	CASE
	WHEN @ROLL IS NULL THEN 1
	WHEN @ROLL IS NOT NULL AND @ROLL= S.STUDENTID THEN 1
	END=1
	
	AND
	
	CASE
	WHEN @SFT IS NULL THEN 1
	WHEN @SFT IS NOT NULL AND @SFT= S.ShiftId THEN 1
	END=1
	AND
	
	CASE
	WHEN @session IS NULL THEN 1
	WHEN @session IS NOT NULL AND @session= S.SESSION THEN 1
	END=1
	--S.SESSION = @session
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STUDENTGRIDVIEW]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_STUDENTGRIDVIEW]
	
AS
BEGIN
	SELECT
				  S.STUDENTID AS RollNo,
				  S.NAME,
				  D.DeptName,
				  SH.Shift_Name,
				  SS.Semester,
				  SE.SexType,
				  S.ADDRESS,
				  S.DateOfBirth,
				  BL.BloodGroupName,
				  S.Contact
			FROM STUDENTINFO S
				INNER JOIN DepartmentInfo D ON D.DepartmentId = S.DeptId
					INNER JOIN SemesterInfo SS ON SS.Id = S.SemesterId
						INNER JOIN ShiftInfo SH ON SH.ShiftId = S.ShiftId
							INNER JOIN SexInfo SE ON SE.SexId = S.GendarId
								INNER JOIN BloodInfo BL ON BL.Id = S.BloodId
END
GO
/****** Object:  StoredProcedure [dbo].[SP_STUDENTINFOSEARCH]    Script Date: 10/25/2023 4:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_STUDENTINFOSEARCH]
	
	 @ROLL INT,
	 @NAME VARCHAR(50)
AS
	IF @ROLL IS NULL SET @ROLL =0
BEGIN
				
			SELECT
				  S.STUDENTID AS RollNo,
				  S.NAME,
				  D.DeptName,
				  SH.Shift_Name,
				  SS.Semester,
				  SE.SexType,
				  S.ADDRESS,
				  S.DateOfBirth,
				  BL.BloodGroupName,
				  S.Contact
			FROM STUDENTINFO S
				INNER JOIN DepartmentInfo D ON D.DepartmentId = S.DeptId
					INNER JOIN SemesterInfo SS ON SS.Id = S.SemesterId
						INNER JOIN ShiftInfo SH ON SH.ShiftId = S.ShiftId
							INNER JOIN SexInfo SE ON SE.SexId = S.GendarId
								INNER JOIN BloodInfo BL ON BL.Id = S.BloodId
				WHERE
				
				S.NAME = @NAME
				AND 
				CASE
					WHEN @ROLL IS null then 1
					WHEN @ROLL IS NOT NULL AND S.STUDENTID = @ROLL THEN 1
					
				END = 1
END
GO
USE [master]
GO
ALTER DATABASE [STUDENT] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [High_School_Scores_Management2]    Script Date: 2024-03-03 5:19:18 PM ******/
CREATE DATABASE [High_School_Scores_Management2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'High_School_Scores_Management2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\High_School_Scores_Management2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'High_School_Scores_Management2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\High_School_Scores_Management2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [High_School_Scores_Management2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [High_School_Scores_Management2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [High_School_Scores_Management2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET ARITHABORT OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [High_School_Scores_Management2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [High_School_Scores_Management2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [High_School_Scores_Management2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [High_School_Scores_Management2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET RECOVERY FULL 
GO
ALTER DATABASE [High_School_Scores_Management2] SET  MULTI_USER 
GO
ALTER DATABASE [High_School_Scores_Management2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [High_School_Scores_Management2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [High_School_Scores_Management2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [High_School_Scores_Management2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [High_School_Scores_Management2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [High_School_Scores_Management2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [High_School_Scores_Management2] SET QUERY_STORE = ON
GO
ALTER DATABASE [High_School_Scores_Management2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [High_School_Scores_Management2]
GO
/****** Object:  User [sa3]    Script Date: 2024-03-03 5:19:19 PM ******/
CREATE USER [sa3] FOR LOGIN [sa3] WITH DEFAULT_SCHEMA=[sa3]
GO
/****** Object:  User [sa2]    Script Date: 2024-03-03 5:19:19 PM ******/
CREATE USER [sa2] FOR LOGIN [sa2] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [sa3]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [sa3]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [sa3]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [sa3]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [sa3]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sa3]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [sa3]
GO
ALTER ROLE [db_owner] ADD MEMBER [sa2]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [sa2]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [sa2]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [sa2]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [sa2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sa2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [sa2]
GO
/****** Object:  Schema [sa2]    Script Date: 2024-03-03 5:19:19 PM ******/
CREATE SCHEMA [sa2]
GO
/****** Object:  Schema [sa3]    Script Date: 2024-03-03 5:19:19 PM ******/
CREATE SCHEMA [sa3]
GO
/****** Object:  Table [dbo].[adminstrator]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminstrator](
	[phone_number] [varchar](20) NOT NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](32) NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](6) NULL,
	[birthday] [date] NULL,
	[address] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application](
	[id] [int] NOT NULL,
	[content] [varchar](1000) NULL,
	[application_type] [int] NULL,
	[parents_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application_type]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[id] [varchar](10) NOT NULL,
	[department_id] [int] NOT NULL,
 CONSTRAINT [PK__class__3213E83F13E0E971] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
	[description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notification]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[id] [int] NOT NULL,
	[title] [varchar](100) NULL,
	[content] [varchar](1000) NULL,
	[date] [datetime] NULL,
	[student_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parents]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone_number] [varchar](20) NULL,
	[password] [varchar](32) NULL,
	[name] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[job] [varchar](200) NULL,
	[student_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_score]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_score](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](1000) NULL,
	[student_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[school_year]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[school_year](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[score]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[student_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[scoreMouth] [float] NULL,
	[scoreShortExam] [float] NULL,
	[scoreMidSemester] [float] NULL,
	[scoreSemester] [float] NULL,
	[date] [datetime] NOT NULL,
	[semester] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[semester]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semester](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_semester] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](32) NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](6) NULL,
	[birthday] [date] NULL,
	[phone_number] [varchar](20) NULL,
	[address] [varchar](1000) NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studying]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studying](
	[class_id] [varchar](10) NOT NULL,
	[student_id] [int] NOT NULL,
	[school_year] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK__subject__3213E83FC4E0FB12] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[phone_number] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](32) NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](6) NULL,
	[birthday] [date] NULL,
	[address] [varchar](1000) NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teaching]    Script Date: 2024-03-03 5:19:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teaching](
	[teacher_id] [int] NULL,
	[class_id] [varchar](10) NULL,
	[homeroom] [varchar](20) NULL,
	[school_year] [int] NULL,
	[subject_id] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[adminstrator] ([phone_number], [email], [password], [name], [gender], [birthday], [address]) VALUES (N'0917589635', N'admin4@gmail.com', N'c7753557b59d251571c55a79ef78ee4a', N'Admin4', N'FeMale', CAST(N'1983-04-05' AS Date), N'123 Hau Giang Street')
INSERT [dbo].[adminstrator] ([phone_number], [email], [password], [name], [gender], [birthday], [address]) VALUES (N'0925698123', N'admin5@gmail.com', N'c93ccd78b2076528346216b3b2f701e6', N'Admin5', N'Male', CAST(N'1984-06-09' AS Date), N'123 Ca mau Street')
INSERT [dbo].[adminstrator] ([phone_number], [email], [password], [name], [gender], [birthday], [address]) VALUES (N'0942546987', N'admin1@gmail.com', N'0192023a7bbd73250516f069df18b500', N'Admin1', N'Male', CAST(N'1980-01-01' AS Date), N'123 Can Tho Street')
INSERT [dbo].[adminstrator] ([phone_number], [email], [password], [name], [gender], [birthday], [address]) VALUES (N'0948698752', N'admin3@gmail.com', N'e026f5d8e1d2c01045d85e32dc1a4761', N'Admin3', N'Male', CAST(N'1981-04-04' AS Date), N'123 HCM Street')
INSERT [dbo].[adminstrator] ([phone_number], [email], [password], [name], [gender], [birthday], [address]) VALUES (N'0987654321', N'admin2@gmail.com', N'1a145a23d6e47aadfe2063f1f951e691', N'Admin2', N'Female', CAST(N'1985-05-15' AS Date), N'456 Bac Lieu Street')
GO
INSERT [dbo].[class] ([id], [department_id]) VALUES (N'10A1', 1)
INSERT [dbo].[class] ([id], [department_id]) VALUES (N'11B1', 2)
INSERT [dbo].[class] ([id], [department_id]) VALUES (N'12C1', 3)
GO
SET IDENTITY_INSERT [dbo].[department] ON 

INSERT [dbo].[department] ([id], [name], [description]) VALUES (1, N'A', N'Math,Physics,Chemistry')
INSERT [dbo].[department] ([id], [name], [description]) VALUES (2, N'B', N'Math,Chemistry,Biology')
INSERT [dbo].[department] ([id], [name], [description]) VALUES (3, N'C', N'Math,Literature,English')
SET IDENTITY_INSERT [dbo].[department] OFF
GO
SET IDENTITY_INSERT [dbo].[parents] ON 

INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (5, N'0942125478', N'34f83b4b453db075f374fa73365b8283', N'Nguyen Huu Trung', N'Father', N'Doctor', 6)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (6, N'0945654321', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thi Kim', N'Mother', N'Teacher', 7)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (7, N'0987554321', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Van Thao', N'Mother', N'Accountant', 8)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (8, N'0984432444', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Van Tam', N'Father', N'Banking', 9)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (9, N'0984554321', N'df7d26c91d5b0b52c51f813d4f335833', N'Tran Van Thoi', N'Father', N'Teacher', 10)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (10, N'0985444321', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Van Ka ', N'Father', N'Baker', 11)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (11, N'0985234321', N'df7d26c91d5b0b52c51f813d4f335833', N'Tran Van Ba', N'Father', N'Artist ', 12)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (12, N'0987678921', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thi Le', N'Mother', N'Teacher', 13)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (13, N'0982356121', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Kim Nhung', N'Mother', N'Teacher', 14)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (14, N'0981423651', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Van Ta', N'Father', N'Actor ', 15)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (15, N'0942100321', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thi Lan', N'Mother', N'cleaner', 16)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (16, N'0982534321', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Van Tam', N'Father', N'firefighter', 17)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (17, N'0921145321', N'df7d26c91d5b0b52c51f813d4f335833', N'Huynh Van Tam', N'Father', N'decorator', 18)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (18, N'0987214523', N'df7d26c91d5b0b52c51f813d4f335833', N'Le Van Kim', N'Father', N'Teacher', 19)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (19, N'0987654121', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thoi Lan', N'Mother', N'gardener', 20)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (20, N'0912354421', N'df7d26c91d5b0b52c51f813d4f335833', N'Le Van Nam', N'Father', N'fisherman', 21)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (21, N'0942321321', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thi Thao', N'Mother', N'glazier', 22)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (22, N'0912577411', N'df7d26c91d5b0b52c51f813d4f335833', N'Tran Van Ba', N'Mother', N'Teacher', 23)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (23, N'0987212562', N'df7d26c91d5b0b52c51f813d4f335833', N'Le Bao Cuong', N'Mother', N'masseuse', 24)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (24, N'0982171237', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Cat Tuong', N'Mother', N'data scientist', 25)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (25, N'0644122441', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Bao Ngoc', N'Mother', N'pest controller', 26)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (26, N'0421552112', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thao', N'Mother', N'biologist', 27)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (27, N'0523441114', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Tue Cat', N'Mother', N'actuary', 28)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (28, N'0984122421', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thi Kim Nhung', N'Mother', N'freelancer', 29)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (29, N'0945541224', N'df7d26c91d5b0b52c51f813d4f335833', N'Nguyen Thi Kim Tam', N'Father', N'Teacher', 30)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (54, N'0921098765', N'9ce2cbc4e6c65096a27470a7bc8d8c36', N'Nguyen Thi Lan', N'Mother', N'Nurse', 26)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (55, N'0910987654', N'551e1c6b105c2409efda159dfb8556e0', N'Tran Thi Be Ba', N'Mother', N'Architect', 27)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (56, N'0909876543', N'b97f307c549bfb2bcd32516c43a6288a', N'Le Van Cuong', N'Father', N'Pilot', 28)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (57, N'0988765432', N'82e2e50073fbc9bb20fdc34c61b06cec', N'Nguyen Thi Duyen', N'Mother', N'Chef', 29)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (58, N'0977654321', N'f3cde7b8c5a11b8188660c4052e72d81', N'Tran Van Tai Em', N'Father', N'Professor', 30)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (59, N'0966543211', N'6571bacef830c357f141c1da6bbe1ecd', N'Le Thi Hai', N'Mother', N'Engineer', 31)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (60, N'0955432109', N'd402f354267f35fda25b6d695d12e461', N'Pham Van Giang', N'Father', N'Doctor', 32)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (61, N'0944321098', N'527839b3e8425c4a673e8f5ee44848c8', N'Hoang Thi Huomg', N'Mother', N'Teacher', 33)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (62, N'0933210987', N'1dfd8a1605950458165beb4939e7bd14', N'Do Van Tien', N'Father', N'Lawyer', 34)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (63, N'0922109871', N'9e4ef2d1c7e0fc578bab36bc73a9b4ee', N'Nguyen Van Kien', N'Father', N'Artist', 35)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (64, N'0913210987', N'f95face670689e6a29a876fb3e547b3a', N'Tran Thi Luu Luyen', N'Mother', N'Nurse', 36)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (65, N'0902333876', N'213da75cdedc54ad249fa119379bde41', N'Le Van Muoi', N'Father', N'Architect', 37)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (66, N'0980987654', N'36eb99f1275ba21417b525bdd1b42c5a', N'Nguyen Nam ', N'FAther', N'Pilot', 38)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (67, N'0979876543', N'896e114bb12ed22e4113632256f57d3a', N'Tran Van Teo', N'Father', N'Chef', 39)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (68, N'0968765432', N'4510fcc02ae57ce8164f0c46dc29ba40', N'Le Thi Rieng', N'Mother', N'Professor', 40)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (69, N'0957666321', N'0c0d2847d8a822acec31b54c0b5972cb', N'Pham Van Quy', N'Father', N'Engineer', 41)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (70, N'0946543219', N'd19eff04da06a963e3de2938d211ccb9', N'Hoang Thi Nhu Y', N'Mother', N'Doctor', 42)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (71, N'0935432109', N'96905f82f5e12e9952732c054d14980c', N'Do Van Sang', N'Father', N'Teacher', 43)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (72, N'0924321098', N'51587f193ae8caae8556cd652f5a32fd', N'Nguyen Van Tai', N'Father', N'Lawyer', 44)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (73, N'0913233987', N'c06ae741910cebe4351adf261f1b4d0e', N'Tran Thi Uyen', N'Mother', N'Artist', 45)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (74, N'0902177776', N'949db548c64599b9d27da3c909e83169', N'Le Van Nguyen', N'Father', N'Nurse', 46)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (75, N'0980987655', N'a64ffaf5b9fb3b0b64919d6b8ada3820', N'Nguyen Thi Bich Tuyen', N'Mother', N'Architect', 47)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (76, N'0979876540', N'36a8a82042aedf8909e6848e327856fe', N'Tran Van Tai', N'Father', N'Pilot', 48)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (77, N'0968425432', N'0983a9580946257e5035e9b566005240', N'Le Thi Minh Thu', N'Mother', N'Chef', 49)
INSERT [dbo].[parents] ([id], [phone_number], [password], [name], [role], [job], [student_id]) VALUES (78, N'0957654322', N'8294fc37908ddce53d4bbfc55459a84d', N'Pham Van Khanh', N'Father', N'Professor', 50)
SET IDENTITY_INSERT [dbo].[parents] OFF
GO
SET IDENTITY_INSERT [dbo].[school_year] ON 

INSERT [dbo].[school_year] ([id], [name]) VALUES (1, N'2023')
INSERT [dbo].[school_year] ([id], [name]) VALUES (2, N'2024')
SET IDENTITY_INSERT [dbo].[school_year] OFF
GO
INSERT [dbo].[score] ([student_id], [subject_id], [scoreMouth], [scoreShortExam], [scoreMidSemester], [scoreSemester], [date], [semester]) VALUES (6, 1, 1, 5.5, 6, 6.5, CAST(N'2024-01-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[score] ([student_id], [subject_id], [scoreMouth], [scoreShortExam], [scoreMidSemester], [scoreSemester], [date], [semester]) VALUES (7, 1, 10, 2, 3, 4, CAST(N'2024-01-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[score] ([student_id], [subject_id], [scoreMouth], [scoreShortExam], [scoreMidSemester], [scoreSemester], [date], [semester]) VALUES (8, 1, 8, 8, 8, 8, CAST(N'2024-01-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[score] ([student_id], [subject_id], [scoreMouth], [scoreShortExam], [scoreMidSemester], [scoreSemester], [date], [semester]) VALUES (6, 1, 1, 5.5, 6, 6.5, CAST(N'2024-08-04T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[score] ([student_id], [subject_id], [scoreMouth], [scoreShortExam], [scoreMidSemester], [scoreSemester], [date], [semester]) VALUES (7, 1, 10, 2, 3, 4, CAST(N'2024-08-04T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[score] ([student_id], [subject_id], [scoreMouth], [scoreShortExam], [scoreMidSemester], [scoreSemester], [date], [semester]) VALUES (9, 1, 3, 2, 2, 1, CAST(N'2024-01-03T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[semester] ON 

INSERT [dbo].[semester] ([id], [name]) VALUES (1, N'Semester 1')
INSERT [dbo].[semester] ([id], [name]) VALUES (2, N'Semester 2')
INSERT [dbo].[semester] ([id], [name]) VALUES (3, N'All Year')
SET IDENTITY_INSERT [dbo].[semester] OFF
GO
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (6, N'student31@gmail.com', N'5c985b472d907b2e249e7e04c9502135', N'Tran Duy Ka', N'Male', CAST(N'2006-05-23' AS Date), N'0945365147', N'123 NVL', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (7, N'student32@gmail.com', N'89d0b3ed6dee8dfecc8a00e5f74981e0', N'Nguyen Duy Nhat', N'Male', CAST(N'2006-06-21' AS Date), N'0942123647', N'231 THN', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (8, N'student33@gmail.com', N'12c6f9edcec24a7491c8f503438c1c9e', N'Nguyen Van Kha', N'Male', CAST(N'2006-08-21' AS Date), N'0956236547', N'234 NVC', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (9, N'student34@gmail.com', N'4bb69bff932bb1aa1c52b9a275048981', N'Nguyen Thi Lan', N'Male', CAST(N'2006-05-11' AS Date), N'0952654987', N'125 Nguyen Trai', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (10, N'student35@gmail.com', N'0bbd8693dceacba531b4a496a10e6f47', N'Ngo Ba Kha', N'Male', CAST(N'2006-03-27' AS Date), N'0987463214', N'1283 Le Dieu', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (11, N'student36@gmail.com', N'2b37bbc82ed09339a6a65155ed0872e3', N'Ngo Van Ka', N'Male', CAST(N'2006-06-22' AS Date), N'0952365145', N'65 Bac Lieu Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (12, N'student37@gmail.com', N'84ae234a8ae3a67f95cfc70e33a4a849', N'Le Thi Thao', N'Male', CAST(N'2006-07-20' AS Date), N'0945698789', N'123 Main Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (13, N'student38@gmail.com', N'8d1d703d0f3432ca16e7a5e75079e078', N'Tran Van Khanh', N'Male', CAST(N'2006-05-26' AS Date), N'0914569879', N'654 Main Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (14, N'student39@gmail.com', N'b0a5a3ee4265c23c97eb36034b9bf0ef', N'Nguyen Thi Kim Nhung', N'Male', CAST(N'2006-11-25' AS Date), N'0952369987', N'12343 Main Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (15, N'student40@gmail.com', N'1dda7d92209a68cde2fd4ae0c6be6e11', N'Vo Van Hung', N'Male', CAST(N'2006-03-24' AS Date), N'0689236547', N'63 Le Lai Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (16, N'student41@gmail.com', N'eebd9d20481a70c40c5a89a452b58fc0', N'Le Van Thi', N'Male', CAST(N'2006-10-20' AS Date), N'0941236577', N'68 Le Dieu Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (17, N'student42@gmail.com', N'3a25388068026621935812042708d77a', N'Nguyen Thi Kim', N'Male', CAST(N'2006-09-20' AS Date), N'0941325658', N'345 Tran Da Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (18, N'student43@gmail.com', N'3d795cba39a3f1a4428a719659c238a7', N'Le Van Ka', N'Male', CAST(N'2006-11-20' AS Date), N'0948652365', N'523 Le Dieu Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (19, N'student44@gmail.com', N'199faa1d0be2684dda644add30e2966c', N'Tran Van Dat', N'Male', CAST(N'2006-12-20' AS Date), N'0878987456', N'654 Dong Da Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (20, N'student45@gmail.com', N'0e86db9aa869fb7fde961f6962ee0dac', N'Tran Duy Duy', N'Female', CAST(N'2006-07-10' AS Date), N'0941236547', N'456 Elm Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (21, N'student1@gmail.com', N'ad6a280417a0f533d8b670c61667e1a0', N'La Hoang Khoi', N'Male', CAST(N'2008-04-22' AS Date), N'0987654321', N'12 Nguyen Trai Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (22, N'student2@gmail.com', N'1578eb8143e36f4c3752f96e1e39bd07', N'Tran Duy Dat', N'Male', CAST(N'2008-03-20' AS Date), N'0901234567', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (23, N'student3@gmail.com', N'01cee837741132d3335c1106521b162d', N'Nguyen Thanh Phat', N'Male', CAST(N'2008-02-23' AS Date), N'0978865432', N'48 Ho Chi Minh Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (24, N'student4@gmail.com', N'492811aacface3d04773674a9adbdde2', N'Huynh Pham Tam Nguyen', N'Female', CAST(N'2008-03-10' AS Date), N'0912345678', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (25, N'student5@gmail.com', N'388c13f6c6911a4aa978b1fe0aca92fa', N'Le Chi Khiem', N'Male', CAST(N'2008-07-11' AS Date), N'0965432109', N'48 Ho Chi Minh  Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (26, N'student6@gmail.com', N'492811aacface3d04773674a9adbdde2', N'Vo Minh Phong', N'Male', CAST(N'2008-06-12' AS Date), N'0932109876', N'14 Tran Van Kheo Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (27, N'student7@gmail.com', N'154cb944c1d5db2ef1586486c4ece0a2', N'Bui Bich Phuong', N'Female', CAST(N'2008-03-29' AS Date), N'0945678901', N'3 Hoang Quoc Viet Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (28, N'student8@gmail.com', N'770f564969c8cc458fde4953ecd21c25', N'Nguyen Thi Thao', N'Female', CAST(N'2008-06-22' AS Date), N'0923456789', N'14 Tran Van Kheo Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (29, N'student9@gmail.com', N'6c8207879407e3b2f4a18be325dd049c', N'Nguyen Thi Minh Nguyet', N'Female', CAST(N'2008-02-18' AS Date), N'0956789012', N'12 Nguyen Trai Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (30, N'student10@gmail.com', N'13c76b303335d31491715ba543681cda', N'Bui Lam Tam Nhu', N'Female', CAST(N'2008-03-12' AS Date), N'0998765432', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (31, N'student11@gmail.com', N'9cf695ac37ef238e62f6ee874b4b3968', N'Ngo Diec Pham', N'Male', CAST(N'2008-07-17' AS Date), N'0887654321', N'12 Nguyen Trai Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (32, N'student12@gmail.com', N'7e941d9a3237b1770effdcb05a0aa2a5', N'Ngo Ba Kha', N'Male', CAST(N'2008-04-27' AS Date), N'0890123456', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (33, N'student13@gmail.com', N'2be4e3fba5f1f492cee4d59d848289c5', N'Tran Ngoc Trinh', N'Female', CAST(N'2008-03-16' AS Date), N'0876543210', N'14 Tran Van Kheo Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (34, N'student14@gmail.com', N'388c13f6c6911a4aa978b1fe0aca92fa', N'Pham Anh Tu', N'Male', CAST(N'2008-03-28' AS Date), N'0812345678', N'3 Hoang Quoc Viet Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (35, N'student15@gmail.com', N'6c8207879407e3b2f4a18be325dd049c', N'Huynh Hong Anh', N'Female', CAST(N'2008-03-14' AS Date), N'0823456789', N'3 Hoang Quoc Viet Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (36, N'student16@gmail.com', N'5a2a4ee2e7cfe235a9d17a9292ac3d94', N'Bui Van Sang', N'Male', CAST(N'2007-03-11' AS Date), N'0867890123', N'12 Nguyen Trai Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (37, N'student17@gmail.com', N'1d899cd129c2b8978a9e18a8387ed04d', N'Hoang Hoang Xuan', N'FeMale', CAST(N'2007-03-21' AS Date), N'0834567890', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (38, N'student18@gmail.com', N'235f2eb7f22a44f6a19dc54bd9cf7151', N'Tran Xuan Bach', N'Male', CAST(N'2007-02-11' AS Date), N'0845678901', N'48 Ho Chi Minh Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (39, N'student19@gmail.com', N'adcaecd1c4bda619e9d8b098bac4f050', N'Nguyen Van Elsu', N'Male', CAST(N'2007-03-25' AS Date), N'0856789012', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (40, N'student20@gmail.com', N'0c0dee63062263713baafc870df4137a', N'Dieu Thi Thuyen', N'Female', CAST(N'2007-07-16' AS Date), N'0801234567', N'48 Ho Chi Minh  Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (41, N'student21@gmail.com', N'8eae1fb76a1b6cce2811f8b9c627684e', N' Tieu Thi Kieu', N'Female', CAST(N'2007-06-14' AS Date), N'0976543210', N'14 Tran Van Kheo Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (42, N'student22@gmail.com', N'e6ca8e882dfe00acfee5ae6d9b2f6d95', N'Ton Thuong Huong', N'Female', CAST(N'2007-03-27' AS Date), N'0989012345', N'3 Hoang Quoc Viet Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (43, N'student23@gmail.com', N'42771ae8126aa0d48468274faa2a4bd4', N'Phan Nhu Huynh', N'Female', CAST(N'2007-06-12' AS Date), N'0909876543', N'14 Tran Van Kheo Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (44, N'student24@gmail.com', N'3b9ac16763b53bb28b6a8a84109450bd', N'Bui Thi Be Tam', N'Female', CAST(N'2007-06-18' AS Date), N'0990123456', N'12 Nguyen Trai Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (45, N'student25@gmail.com', N'9285d334a0cb63fd0987ff61b2d1b038', N'Nguyen Thi Mong Mo', N'Female', CAST(N'2007-04-20' AS Date), N'0954321098', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (46, N'student26@gmail.com', N'189205243a670dd672793da454e965f1', N'Nguyen Thi Bich', N'Male', CAST(N'2007-11-13' AS Date), N'0943210987', N'12 Nguyen Trai Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (47, N'student27@gmail.com', N'e02f098b87f4aba8b4904e37458e9458', N'Tran Van Lanh', N'Male', CAST(N'2007-12-27' AS Date), N'0932109876', N'23 Vo Nguyen Giap Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (48, N'student28@gmail.com', N'4ff76a8e8f506e99c9fc2d437a622256', N'Nguyen Thao Nguyen', N'Female', CAST(N'2007-12-16' AS Date), N'0910987654', N'14 Tran Van Kheo Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (49, N'student29@gmail.com', N'f363d3a125dc9ac48938be8e7b773fd8', N'Le Van Luyen', N'Male', CAST(N'2007-11-28' AS Date), N'0921098765', N'3 Hoang Quoc Viet Street', N'Active')
INSERT [dbo].[student] ([id], [email], [password], [name], [gender], [birthday], [phone_number], [address], [status]) VALUES (50, N'student30@gmail.com', N'35d263bed528c30eb5ea13bfac8a3c00', N'Student15', N'Female', CAST(N'2007-12-14' AS Date), N'0967890123', N'3 Hoang Quoc Viet Street', N'Active')
SET IDENTITY_INSERT [dbo].[student] OFF
GO
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'10A1', 6, 1)
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'10A1', 7, 1)
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'10A1', 8, 1)
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'10A1', 9, 1)
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'11B1', 10, 1)
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'11B1', 11, 1)
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'12C1', 12, 1)
INSERT [dbo].[studying] ([class_id], [student_id], [school_year]) VALUES (N'12C1', 13, 1)
GO
SET IDENTITY_INSERT [dbo].[subject] ON 

INSERT [dbo].[subject] ([id], [name]) VALUES (1, N'Mathematics')
INSERT [dbo].[subject] ([id], [name]) VALUES (2, N'Literature')
INSERT [dbo].[subject] ([id], [name]) VALUES (3, N'History')
INSERT [dbo].[subject] ([id], [name]) VALUES (4, N'Geography')
INSERT [dbo].[subject] ([id], [name]) VALUES (5, N'Physics')
INSERT [dbo].[subject] ([id], [name]) VALUES (6, N'Chemistry')
INSERT [dbo].[subject] ([id], [name]) VALUES (7, N'Biology')
INSERT [dbo].[subject] ([id], [name]) VALUES (8, N'English')
INSERT [dbo].[subject] ([id], [name]) VALUES (9, N'Physical Education')
INSERT [dbo].[subject] ([id], [name]) VALUES (10, N'Civic Education')
SET IDENTITY_INSERT [dbo].[subject] OFF
GO
SET IDENTITY_INSERT [dbo].[teacher] ON 

INSERT [dbo].[teacher] ([id], [phone_number], [email], [password], [name], [gender], [birthday], [address], [status]) VALUES (5, N'0942368977', N'teacher1@gmail.com', N'a426dcf72ba25d046591f81a5495eab7', N'Teacher1', N'Male', CAST(N'1999-05-10' AS Date), N'123 Ca Mau Street', N'Active')
INSERT [dbo].[teacher] ([id], [phone_number], [email], [password], [name], [gender], [birthday], [address], [status]) VALUES (6, N'0942568977', N'teacher2@gmail.com', N'00bcc89aaa027c2ca8aa55b5ad1bcdd0', N'Teacher2', N'FeMale', CAST(N'1999-10-10' AS Date), N'256 Ca Mau Street', N'Active')
INSERT [dbo].[teacher] ([id], [phone_number], [email], [password], [name], [gender], [birthday], [address], [status]) VALUES (7, N'0959622327', N'teacher3@gmail.com', N'34d12d1f989e89216e1e2c44f73cb8f2', N'Teacher3', N'Male', CAST(N'1985-05-16' AS Date), N'253 Can Tho Street', N'Active')
INSERT [dbo].[teacher] ([id], [phone_number], [email], [password], [name], [gender], [birthday], [address], [status]) VALUES (8, N'0942532478', N'teacher4@gmail.com', N'f549d05d69375cc90146d5a2e2244e87', N'Teacher4', N'FeMale', CAST(N'1975-08-19' AS Date), N'147 Hau Giang Street', N'Active')
INSERT [dbo].[teacher] ([id], [phone_number], [email], [password], [name], [gender], [birthday], [address], [status]) VALUES (9, N'0932659879', N'teacher5@gmail.com', N'4850f03d558222ac8fc2d874575c4552', N'Teacher5', N'Female', CAST(N'1995-11-15' AS Date), N'589 Soc trang Street', N'Active')
SET IDENTITY_INSERT [dbo].[teacher] OFF
GO
INSERT [dbo].[teaching] ([teacher_id], [class_id], [homeroom], [school_year], [subject_id]) VALUES (5, N'10A1', NULL, 1, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__adminstr__AB6E6164CFA7E456]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[adminstrator] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__adminstr__AB6E6164DBCF0360]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[adminstrator] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__adminstr__AB6E6164FEE2B044]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[adminstrator] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__parents__A1936A6B5DF22833]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[parents] ADD UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__parents__A1936A6BC88D5B82]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[parents] ADD UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__parents__A1936A6BEBAF534F]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[parents] ADD UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__student__AB6E616483BA6DDC]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[student] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__student__AB6E616494827253]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[student] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__student__AB6E6164EC0FB192]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[student] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teacher__A1936A6B6396CBF2]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[teacher] ADD UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teacher__A1936A6B6856AEFB]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[teacher] ADD UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teacher__A1936A6BE362A11A]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[teacher] ADD UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teacher__AB6E616400A3848C]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[teacher] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teacher__AB6E616478ABBD8B]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[teacher] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teacher__AB6E6164A670D91C]    Script Date: 2024-03-03 5:19:20 PM ******/
ALTER TABLE [dbo].[teacher] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[application]  WITH CHECK ADD FOREIGN KEY([application_type])
REFERENCES [dbo].[application_type] ([id])
GO
ALTER TABLE [dbo].[application]  WITH CHECK ADD FOREIGN KEY([parents_id])
REFERENCES [dbo].[parents] ([id])
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [FK__class__departmen__4222D4EF] FOREIGN KEY([department_id])
REFERENCES [dbo].[department] ([id])
GO
ALTER TABLE [dbo].[class] CHECK CONSTRAINT [FK__class__departmen__4222D4EF]
GO
ALTER TABLE [dbo].[notification]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[parents]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[report_score]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[score]  WITH CHECK ADD  CONSTRAINT [FK__score__student_i__5441852A] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[score] CHECK CONSTRAINT [FK__score__student_i__5441852A]
GO
ALTER TABLE [dbo].[score]  WITH CHECK ADD  CONSTRAINT [FK__score__subject_i__5535A963] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subject] ([id])
GO
ALTER TABLE [dbo].[score] CHECK CONSTRAINT [FK__score__subject_i__5535A963]
GO
ALTER TABLE [dbo].[score]  WITH CHECK ADD  CONSTRAINT [FK_score_semester] FOREIGN KEY([semester])
REFERENCES [dbo].[semester] ([id])
GO
ALTER TABLE [dbo].[score] CHECK CONSTRAINT [FK_score_semester]
GO
ALTER TABLE [dbo].[studying]  WITH CHECK ADD  CONSTRAINT [FK_studying_class] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([id])
GO
ALTER TABLE [dbo].[studying] CHECK CONSTRAINT [FK_studying_class]
GO
ALTER TABLE [dbo].[studying]  WITH CHECK ADD  CONSTRAINT [FK_studying_school_year] FOREIGN KEY([school_year])
REFERENCES [dbo].[school_year] ([id])
GO
ALTER TABLE [dbo].[studying] CHECK CONSTRAINT [FK_studying_school_year]
GO
ALTER TABLE [dbo].[studying]  WITH CHECK ADD  CONSTRAINT [FK_studying_student] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([id])
GO
ALTER TABLE [dbo].[studying] CHECK CONSTRAINT [FK_studying_student]
GO
ALTER TABLE [dbo].[teaching]  WITH CHECK ADD  CONSTRAINT [FK__teaching__class___46E78A0C] FOREIGN KEY([class_id])
REFERENCES [dbo].[class] ([id])
GO
ALTER TABLE [dbo].[teaching] CHECK CONSTRAINT [FK__teaching__class___46E78A0C]
GO
ALTER TABLE [dbo].[teaching]  WITH CHECK ADD  CONSTRAINT [FK__teaching__subjec__48CFD27E] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subject] ([id])
GO
ALTER TABLE [dbo].[teaching] CHECK CONSTRAINT [FK__teaching__subjec__48CFD27E]
GO
ALTER TABLE [dbo].[teaching]  WITH CHECK ADD FOREIGN KEY([teacher_id])
REFERENCES [dbo].[teacher] ([id])
GO
USE [master]
GO
ALTER DATABASE [High_School_Scores_Management2] SET  READ_WRITE 
GO

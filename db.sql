USE [master]
GO
/****** Object:  Database [High_School_Scores_Management2]    Script Date: 2024-03-01 4:03:55 PM ******/
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
/****** Object:  User [sa3]    Script Date: 2024-03-01 4:03:56 PM ******/
CREATE USER [sa3] FOR LOGIN [sa3] WITH DEFAULT_SCHEMA=[sa3]
GO
/****** Object:  User [sa2]    Script Date: 2024-03-01 4:03:56 PM ******/
CREATE USER [sa2] FOR LOGIN [sa2] WITH DEFAULT_SCHEMA=[sa2]
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
/****** Object:  Schema [sa2]    Script Date: 2024-03-01 4:03:56 PM ******/
CREATE SCHEMA [sa2]
GO
/****** Object:  Schema [sa3]    Script Date: 2024-03-01 4:03:56 PM ******/
CREATE SCHEMA [sa3]
GO
/****** Object:  Table [dbo].[adminstrator]    Script Date: 2024-03-01 4:03:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[application]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[application_type]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[class]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[department]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[notification]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[parents]    Script Date: 2024-03-01 4:03:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_score]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[school_year]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[score]    Script Date: 2024-03-01 4:03:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[student_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[scoreMouth] [float] NOT NULL,
	[scoreShortExam] [float] NOT NULL,
	[scoreMidSemester] [float] NOT NULL,
	[scoreSemester] [float] NOT NULL,
	[date] [datetime] NOT NULL,
	[semester] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[semester]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[student]    Script Date: 2024-03-01 4:03:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studying]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[subject]    Script Date: 2024-03-01 4:03:56 PM ******/
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
/****** Object:  Table [dbo].[teacher]    Script Date: 2024-03-01 4:03:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[phone_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teaching]    Script Date: 2024-03-01 4:03:56 PM ******/
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

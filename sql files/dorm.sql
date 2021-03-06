USE [master]
GO
/****** Object:  Database [Dorm]    Script Date: 8/18/2017 5:50:16 AM ******/
CREATE DATABASE [Dorm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dorm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2\MSSQL\DATA\Dorm.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dorm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2\MSSQL\DATA\Dorm_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dorm] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dorm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dorm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dorm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dorm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dorm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dorm] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dorm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dorm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dorm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dorm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dorm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dorm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dorm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dorm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dorm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dorm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dorm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dorm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dorm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dorm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dorm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dorm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dorm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dorm] SET RECOVERY FULL 
GO
ALTER DATABASE [Dorm] SET  MULTI_USER 
GO
ALTER DATABASE [Dorm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dorm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dorm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dorm] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Dorm] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Dorm]
GO
/****** Object:  Table [dbo].[request]    Script Date: 8/18/2017 5:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[request](
	[Id] [int] NOT NULL,
	[msg] [varchar](2000) NOT NULL,
	[resp] [varchar](2000) NULL,
	[status] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 8/18/2017 5:50:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[id] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[RoomType] [int] NOT NULL,
 CONSTRAINT [PK_rooms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SignUp]    Script Date: 8/18/2017 5:50:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SignUp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[contact] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[House] [varchar](50) NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[role] [varchar](50) NOT NULL,
	[status] [int] NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[code] [varchar](20) NULL,
 CONSTRAINT [PK_SignUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[viewrequest]    Script Date: 8/18/2017 5:50:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[viewrequest](
	[Id] [int] NOT NULL,
	[empId] [int] NOT NULL,
	[msg] [varchar](2000) NOT NULL,
	[resp] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[request] ([Id], [msg], [resp], [status]) VALUES (5, N'My query is regarding room service', N'hello', 0)
INSERT [dbo].[request] ([Id], [msg], [resp], [status]) VALUES (5, N'Hi my name is mandy 
and i want to change my name bai ji', N'hello', 0)
INSERT [dbo].[rooms] ([id], [RoomNumber], [RoomType]) VALUES (5, 1, 1)
SET IDENTITY_INSERT [dbo].[SignUp] ON 

INSERT [dbo].[SignUp] ([Id], [Username], [password], [contact], [email], [House], [Street], [City], [Province], [Country], [role], [status], [fname], [lname], [code]) VALUES (5, N'asingh01', N'1234', N'4379897008', N'avneet216@yahoo.co.in', N'4 Bankwell Avenue', N'Ontario', N'Toronto', N'Ontario', N'Canada', N'Student', 0, N'Avneet', N'Singh', N'M1G 2R3')
INSERT [dbo].[SignUp] ([Id], [Username], [password], [contact], [email], [House], [Street], [City], [Province], [Country], [role], [status], [fname], [lname], [code]) VALUES (6, N'admin01', N'1234', N'4379897008', N'avneet089@gmail.com', N'4 Bankwell Avenue, Scarborough', N'Scarborough', N'Toronto', N'Ontario', N'Canada', N'Admin', 0, N'Admin', N'Singh', N'M1G 2R3')
INSERT [dbo].[SignUp] ([Id], [Username], [password], [contact], [email], [House], [Street], [City], [Province], [Country], [role], [status], [fname], [lname], [code]) VALUES (7, N'guneet01', N'1234', N'123456789', N'guneet01@gmail.com', N'123', N'Markham', N'Scarborough', N'ON', N'Canada', N'Frontdesk', 4, N'Guneet', N'Singh', N'M1G2R5')
INSERT [dbo].[SignUp] ([Id], [Username], [password], [contact], [email], [House], [Street], [City], [Province], [Country], [role], [status], [fname], [lname], [code]) VALUES (10, N'Super01', N'1234', N'9876543', N'super@singh.com', N'4', N'BC', N'TO', N'ON', N'CAN', N'Supervisor', 3, N'Super', N'Singh', N'1234')
SET IDENTITY_INSERT [dbo].[SignUp] OFF
INSERT [dbo].[viewrequest] ([Id], [empId], [msg], [resp]) VALUES (5, 10, N'My query is regarding room service', N'')
INSERT [dbo].[viewrequest] ([Id], [empId], [msg], [resp]) VALUES (5, 10, N'Hi my name is mandy 
and i want to change my name bai ji', N'hello')
USE [master]
GO
ALTER DATABASE [Dorm] SET  READ_WRITE 
GO

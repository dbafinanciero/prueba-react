USE [master]
GO
/****** Object:  Database [prueba]    Script Date: 30/10/2023 0:54:18 ******/
CREATE DATABASE [prueba]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prueba', FILENAME = N'D:\Bases\Microsoft SQL Server\MSSQL13.MMRS\MSSQL\DATA\prueba.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prueba_log', FILENAME = N'D:\Bases\Microsoft SQL Server\MSSQL13.MMRS\MSSQL\DATA\prueba_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [prueba] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prueba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prueba] SET RECOVERY FULL 
GO
ALTER DATABASE [prueba] SET  MULTI_USER 
GO
ALTER DATABASE [prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prueba] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prueba] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prueba] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prueba] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prueba] SET QUERY_STORE = OFF
GO
USE [prueba]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [prueba]
GO
/****** Object:  Table [dbo].[cargos]    Script Date: 30/10/2023 0:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargos](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](255) NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
	[activo] [bit] NOT NULL,
	[idUsuarioCreacion] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamentos]    Script Date: 30/10/2023 0:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamentos](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](255) NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
	[activo] [bit] NOT NULL,
	[idUsuarioCreacion] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[failed_jobs]    Script Date: 30/10/2023 0:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[failed_jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[uuid] [nvarchar](255) NOT NULL,
	[connection] [nvarchar](max) NOT NULL,
	[queue] [nvarchar](max) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[exception] [nvarchar](max) NOT NULL,
	[failed_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 30/10/2023 0:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_reset_tokens]    Script Date: 30/10/2023 0:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_reset_tokens](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [password_reset_tokens_email_primary] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personal_access_tokens]    Script Date: 30/10/2023 0:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal_access_tokens](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[tokenable_type] [nvarchar](255) NOT NULL,
	[tokenable_id] [bigint] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[token] [nvarchar](64) NOT NULL,
	[abilities] [nvarchar](max) NULL,
	[last_used_at] [datetime] NULL,
	[expires_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 30/10/2023 0:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[usuario] [nvarchar](255) NOT NULL,
	[primerNombre] [nvarchar](255) NOT NULL,
	[segundoNombre] [nvarchar](255) NOT NULL,
	[primerApellido] [nvarchar](255) NOT NULL,
	[segundoApellido] [nvarchar](255) NOT NULL,
	[idDepartamento] [int] NOT NULL,
	[idCargo] [int] NOT NULL,
	[correo] [nvarchar](255) NOT NULL,
	[activo] [bit] NOT NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usersbck]    Script Date: 30/10/2023 0:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usersbck](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[email_verified_at] [datetime] NULL,
	[password] [nvarchar](255) NOT NULL,
	[remember_token] [nvarchar](100) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cargos] ON 

INSERT [dbo].[cargos] ([id], [codigo], [nombre], [activo], [idUsuarioCreacion], [created_at], [updated_at]) VALUES (3, N'ING', N'Ingeniero', 1, 1, NULL, NULL)
INSERT [dbo].[cargos] ([id], [codigo], [nombre], [activo], [idUsuarioCreacion], [created_at], [updated_at]) VALUES (4, N'CAJ', N'Cajero', 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[cargos] OFF
SET IDENTITY_INSERT [dbo].[departamentos] ON 

INSERT [dbo].[departamentos] ([id], [codigo], [nombre], [activo], [idUsuarioCreacion], [created_at], [updated_at]) VALUES (1, N'SIS', N'Sistemas', 1, 1, CAST(N'2023-10-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[departamentos] ([id], [codigo], [nombre], [activo], [idUsuarioCreacion], [created_at], [updated_at]) VALUES (2, N'FIN', N'Finanzas', 1, 1, CAST(N'2023-10-25T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[departamentos] OFF
SET IDENTITY_INSERT [dbo].[migrations] ON 

INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (1, N'2014_10_12_000000_create_users_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (2, N'2014_10_12_100000_create_password_reset_tokens_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (3, N'2019_08_19_000000_create_failed_jobs_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (4, N'2019_12_14_000001_create_personal_access_tokens_table', 1)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (5, N'2023_10_24_071338_create_departamentos_table', 2)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (8, N'2014_10_12_000000_create_usersbck_table', 3)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (11, N'2023_10_24_071347_create_cargos_table', 4)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (12, N'2023_10_24_071403_create_users_table', 4)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (13, N'2023_10_27_033042_add_columns_to_users', 5)
INSERT [dbo].[migrations] ([id], [migration], [batch]) VALUES (14, N'2023_10_29_214036_add_column_to_users', 6)
SET IDENTITY_INSERT [dbo].[migrations] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'mmrs', N'marcelo', N'manue', N'rodriguez', N'salinas', 1, 3, N'sadasd', 1, 1)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'mmrs13', N'qwe', N'erf', N'sdfsdfsdfdsfdsfsdf', N'sadsd asd asd asdd', 1, 4, N'asdsad', 0, 2)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'mmrs14', N'qwe', N'erf', N'sdfsdfsdfdsfdsfsdf', N'sadsd asd asd asdd', 2, 4, N'asdsad', 1, 3)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'mmrs15', N'qwe', N'erf', N'sdfsdfsdfdsfdsfsdf', N'sadsd asd asd asdd', 2, 3, N'asdsad', 1, 4)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'mmrs12', N'qwe', N'erf', N'sdfsdfsdfdsfdsfsdf', N'sadsd asd asd asdd', 2, 3, N'asdsad', 1, 5)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'asdasd', N'adsasd', N'asdasd', N'asdasd', N'asdasd', 1, 3, N'asdas', 1, 27)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'asdasd', N'asdasd', N'asdasd', N'asdasd', N'asdasd', 1, 4, N'asdasd', 1, 28)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'asdasdasd21212', N'asdasd', N'asdasd', N'asdasd', N'asdasdasd', 2, 4, N'asdasd', 1, 29)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'zxczxc', N'zxczxc', N'zcxzc', N'zxczxc', N'zxczxczx', 1, 3, N'zxczxc', 0, 30)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'zxcxzc', N'zxcxzc', N'zczxc', N'zxczxc', N'zxczxc', 1, 4, N'zxcxzc', 1, 31)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'zxczxc', N'zxczxc', N'zxczxc', N'zczxc', N'zczxc', 1, 4, N'zczxc', 0, 32)
INSERT [dbo].[users] ([usuario], [primerNombre], [segundoNombre], [primerApellido], [segundoApellido], [idDepartamento], [idCargo], [correo], [activo], [id]) VALUES (N'marcelo', N'dsds', N'dsfsdfsd', N'dfdsf', N'sdfsdf', 1, 3, N'sdfdsf', 1, 33)
SET IDENTITY_INSERT [dbo].[users] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [failed_jobs_uuid_unique]    Script Date: 30/10/2023 0:54:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [failed_jobs_uuid_unique] ON [dbo].[failed_jobs]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [personal_access_tokens_token_unique]    Script Date: 30/10/2023 0:54:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [personal_access_tokens_token_unique] ON [dbo].[personal_access_tokens]
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [personal_access_tokens_tokenable_type_tokenable_id_index]    Script Date: 30/10/2023 0:54:19 ******/
CREATE NONCLUSTERED INDEX [personal_access_tokens_tokenable_type_tokenable_id_index] ON [dbo].[personal_access_tokens]
(
	[tokenable_type] ASC,
	[tokenable_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [users_email_unique]    Script Date: 30/10/2023 0:54:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [users_email_unique] ON [dbo].[usersbck]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[failed_jobs] ADD  DEFAULT (getdate()) FOR [failed_at]
GO
USE [master]
GO
ALTER DATABASE [prueba] SET  READ_WRITE 
GO

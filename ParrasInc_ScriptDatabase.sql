USE [master]
GO
/****** Object:  Database [ParrasInc]    Script Date: 10/21/2022 8:59:27 PM ******/
CREATE DATABASE [ParrasInc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ParrasInc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.EMPLOYEES\MSSQL\DATA\ParrasInc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ParrasInc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.EMPLOYEES\MSSQL\DATA\ParrasInc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ParrasInc] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ParrasInc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ParrasInc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ParrasInc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ParrasInc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ParrasInc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ParrasInc] SET ARITHABORT OFF 
GO
ALTER DATABASE [ParrasInc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ParrasInc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ParrasInc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ParrasInc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ParrasInc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ParrasInc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ParrasInc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ParrasInc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ParrasInc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ParrasInc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ParrasInc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ParrasInc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ParrasInc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ParrasInc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ParrasInc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ParrasInc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ParrasInc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ParrasInc] SET RECOVERY FULL 
GO
ALTER DATABASE [ParrasInc] SET  MULTI_USER 
GO
ALTER DATABASE [ParrasInc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ParrasInc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ParrasInc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ParrasInc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ParrasInc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ParrasInc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ParrasInc', N'ON'
GO
ALTER DATABASE [ParrasInc] SET QUERY_STORE = OFF
GO
USE [ParrasInc]
GO
/****** Object:  Table [dbo].[auth_group]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group_permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_permission]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[codename] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetime2](7) NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](150) NOT NULL,
	[last_name] [nvarchar](150) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user_groups]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user_groups](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user_user_permissions]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user_user_permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_admin_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_time] [datetime2](7) NOT NULL,
	[object_id] [nvarchar](max) NULL,
	[object_repr] [nvarchar](200) NOT NULL,
	[action_flag] [smallint] NOT NULL,
	[change_message] [nvarchar](max) NOT NULL,
	[content_type_id] [int] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_content_type]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_content_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_label] [nvarchar](100) NOT NULL,
	[model] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_session]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_session](
	[session_key] [nvarchar](40) NOT NULL,
	[session_data] [nvarchar](max) NOT NULL,
	[expire_date] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees_assistence]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_assistence](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[assistDate] [date] NOT NULL,
	[assistEntrance] [time](7) NOT NULL,
	[assistOut] [time](7) NOT NULL,
	[assistWorker_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees_department]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_department](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[deptName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees_employee]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_employee](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[empFirstName] [nvarchar](50) NOT NULL,
	[empLastName] [nvarchar](50) NOT NULL,
	[empBirthDate] [date] NULL,
	[empDateJoined] [date] NOT NULL,
	[empStatus] [bit] NOT NULL,
	[empEmail] [nvarchar](50) NOT NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees_job_position]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_job_position](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[jpName] [nvarchar](50) NOT NULL,
	[jpEmail] [nvarchar](50) NOT NULL,
	[jpDepartment_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees_worker]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_worker](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[workerSalary] [numeric](10, 2) NOT NULL,
	[workerEntrance] [time](7) NOT NULL,
	[workerOut] [time](7) NOT NULL,
	[workerEmployee_id] [bigint] NOT NULL,
	[workerJobPosition_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parts_category]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parts_category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
	[categoryDescription] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parts_entrypartorder]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parts_entrypartorder](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[entryMaterialSheet] [nvarchar](50) NOT NULL,
	[entryPartOrder_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parts_partsorder]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parts_partsorder](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[partsOrdDate] [date] NOT NULL,
	[partsOrdQuantity] [int] NOT NULL,
	[partsOrdPart_id] [bigint] NOT NULL,
	[partsOrd_ProdOrd_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_area]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_area](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[areaName] [nvarchar](50) NOT NULL,
	[areaDescription] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_linemember]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_linemember](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[lineMemberName_id] [bigint] NOT NULL,
	[lineMemberWorker_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_part]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_part](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[partName] [nvarchar](100) NOT NULL,
	[partWeight] [float] NOT NULL,
	[partColor] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_partsquantity]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_partsquantity](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[pQuantity] [int] NOT NULL,
	[pPart_id] [bigint] NOT NULL,
	[pProduct_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_product]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
	[productDescription] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_productionline]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_productionline](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[productionLineName] [nvarchar](50) NOT NULL,
	[productionLineDescription] [nvarchar](100) NOT NULL,
	[productionLineArea_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_productorder]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_productorder](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[prodOrdDate] [date] NOT NULL,
	[prodOrdQuantity] [int] NOT NULL,
	[prodOrdActive] [bit] NOT NULL,
	[prodOrdQuality] [bit] NOT NULL,
	[prodOrdDone] [bit] NOT NULL,
	[prodLineMember_id] [bigint] NOT NULL,
	[prodOrdProduct_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production_qualitycontrol]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production_qualitycontrol](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[qcArea_id] [bigint] NOT NULL,
	[qcWorker_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse_entrymaterialsheet]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse_entrymaterialsheet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[entryMSDate] [date] NOT NULL,
	[entryMSPartsIn] [int] NOT NULL,
	[entryMSPartsTotal] [int] NOT NULL,
	[entryMSEmployee_id] [bigint] NOT NULL,
	[entryMSMaterialSheet_id] [bigint] NOT NULL,
	[entryMSReq_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse_materialsheet]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse_materialsheet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[matSheetDate] [date] NOT NULL,
	[matSheetMinQuantity] [int] NOT NULL,
	[matSheetMaxQuantity] [int] NOT NULL,
	[matSheetActualQuantity] [int] NOT NULL,
	[matSheetPart_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse_provider]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse_provider](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[provName] [nvarchar](100) NOT NULL,
	[provAddress] [nvarchar](100) NOT NULL,
	[provContactName] [nvarchar](50) NOT NULL,
	[provPhone] [nvarchar](50) NOT NULL,
	[provEmail] [nvarchar](50) NOT NULL,
	[provRFC] [nvarchar](50) NOT NULL,
	[provCLABE] [nvarchar](50) NOT NULL,
	[provAccountNumber] [nvarchar](50) NOT NULL,
	[provCurrency] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse_reqitem]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse_reqitem](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reqItemQuantity] [int] NOT NULL,
	[reqItemPrice] [numeric](10, 2) NOT NULL,
	[reqItemPart_id] [bigint] NOT NULL,
	[reqItemReq_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse_requsition]    Script Date: 10/21/2022 8:59:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse_requsition](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[reqDate] [date] NOT NULL,
	[reqApprove] [bit] NOT NULL,
	[reqDone] [bit] NOT NULL,
	[reqProvider_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[auth_group] ON 

INSERT [dbo].[auth_group] ([id], [name]) VALUES (1, N'employee')
SET IDENTITY_INSERT [dbo].[auth_group] OFF
GO
SET IDENTITY_INSERT [dbo].[auth_permission] ON 

INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add user', 4, N'add_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change user', 4, N'change_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete user', 4, N'delete_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view user', 4, N'view_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add content type', 5, N'add_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change content type', 5, N'change_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete content type', 5, N'delete_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view content type', 5, N'view_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add session', 6, N'add_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change session', 6, N'change_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete session', 6, N'delete_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view session', 6, N'view_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add department', 7, N'add_department')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change department', 7, N'change_department')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete department', 7, N'delete_department')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view department', 7, N'view_department')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add employee', 8, N'add_employee')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change employee', 8, N'change_employee')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete employee', 8, N'delete_employee')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view employee', 8, N'view_employee')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add job_ position', 9, N'add_job_position')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change job_ position', 9, N'change_job_position')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete job_ position', 9, N'delete_job_position')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view job_ position', 9, N'view_job_position')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add worker', 10, N'add_worker')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change worker', 10, N'change_worker')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete worker', 10, N'delete_worker')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view worker', 10, N'view_worker')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add assistence', 11, N'add_assistence')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change assistence', 11, N'change_assistence')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete assistence', 11, N'delete_assistence')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view assistence', 11, N'view_assistence')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (45, N'Can add category', 12, N'add_category')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (46, N'Can change category', 12, N'change_category')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (47, N'Can delete category', 12, N'delete_category')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (48, N'Can view category', 12, N'view_category')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (49, N'Can add entry part order', 13, N'add_entrypartorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (50, N'Can change entry part order', 13, N'change_entrypartorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (51, N'Can delete entry part order', 13, N'delete_entrypartorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (52, N'Can view entry part order', 13, N'view_entrypartorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (53, N'Can add parts order', 14, N'add_partsorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (54, N'Can change parts order', 14, N'change_partsorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (55, N'Can delete parts order', 14, N'delete_partsorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (56, N'Can view parts order', 14, N'view_partsorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (57, N'Can add area', 15, N'add_area')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (58, N'Can change area', 15, N'change_area')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (59, N'Can delete area', 15, N'delete_area')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (60, N'Can view area', 15, N'view_area')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (61, N'Can add line member', 16, N'add_linemember')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (62, N'Can change line member', 16, N'change_linemember')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (63, N'Can delete line member', 16, N'delete_linemember')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (64, N'Can view line member', 16, N'view_linemember')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (65, N'Can add product', 17, N'add_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (66, N'Can change product', 17, N'change_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (67, N'Can delete product', 17, N'delete_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (68, N'Can view product', 17, N'view_product')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (69, N'Can add quality control', 18, N'add_qualitycontrol')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (70, N'Can change quality control', 18, N'change_qualitycontrol')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (71, N'Can delete quality control', 18, N'delete_qualitycontrol')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (72, N'Can view quality control', 18, N'view_qualitycontrol')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (73, N'Can add product order', 19, N'add_productorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (74, N'Can change product order', 19, N'change_productorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (75, N'Can delete product order', 19, N'delete_productorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (76, N'Can view product order', 19, N'view_productorder')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (77, N'Can add production line', 20, N'add_productionline')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (78, N'Can change production line', 20, N'change_productionline')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (79, N'Can delete production line', 20, N'delete_productionline')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (80, N'Can view production line', 20, N'view_productionline')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (81, N'Can add parts quantity', 21, N'add_partsquantity')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (82, N'Can change parts quantity', 21, N'change_partsquantity')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (83, N'Can delete parts quantity', 21, N'delete_partsquantity')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (84, N'Can view parts quantity', 21, N'view_partsquantity')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (85, N'Can add part', 22, N'add_part')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (86, N'Can change part', 22, N'change_part')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (87, N'Can delete part', 22, N'delete_part')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (88, N'Can view part', 22, N'view_part')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (89, N'Can add provider', 23, N'add_provider')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (90, N'Can change provider', 23, N'change_provider')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (91, N'Can delete provider', 23, N'delete_provider')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (92, N'Can view provider', 23, N'view_provider')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (93, N'Can add requsition', 24, N'add_requsition')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (94, N'Can change requsition', 24, N'change_requsition')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (95, N'Can delete requsition', 24, N'delete_requsition')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (96, N'Can view requsition', 24, N'view_requsition')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (97, N'Can add req item', 25, N'add_reqitem')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (98, N'Can change req item', 25, N'change_reqitem')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (99, N'Can delete req item', 25, N'delete_reqitem')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (100, N'Can view req item', 25, N'view_reqitem')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (101, N'Can add material sheet', 26, N'add_materialsheet')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (102, N'Can change material sheet', 26, N'change_materialsheet')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (103, N'Can delete material sheet', 26, N'delete_materialsheet')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (104, N'Can view material sheet', 26, N'view_materialsheet')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (105, N'Can add entry material sheet', 27, N'add_entrymaterialsheet')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (106, N'Can change entry material sheet', 27, N'change_entrymaterialsheet')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (107, N'Can delete entry material sheet', 27, N'delete_entrymaterialsheet')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (108, N'Can view entry material sheet', 27, N'view_entrymaterialsheet')
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[auth_user] ON 

INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (1, N'pbkdf2_sha256$320000$dTaZiz7qThcg5vMY5PArpr$KIvZOTGGJ895NH58Jrd1GfIMiVGUckQhgF8Tb5cou6A=', CAST(N'2022-10-22T00:45:08.8527030' AS DateTime2), 0, N'david.alvarez@outlook.com', N'David', N'Alvarez', N'', 0, 1, CAST(N'2022-10-22T00:45:00.1668280' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (2, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'lzeplin1@hp.com', N'Loella', N'Zeplin', N'lzeplin1@hp.com', 0, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (3, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'jbrunnen2@cnet.com', N'Jed', N'Brunnen', N'jbrunnen2@cnet.com', 0, 0, CAST(N'2022-04-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (4, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'zcare3@nationalgeographic.com', N'Zacharia', N'Care', N'zcare3@nationalgeographic.com', 0, 0, CAST(N'2022-01-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (5, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bricharz4@shutterfly.com', N'Bert', N'Richarz', N'bricharz4@shutterfly.com', 0, 0, CAST(N'2022-09-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (6, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'tashelford5@ow.ly', N'Tamara', N'Ashelford', N'tashelford5@ow.ly', 0, 0, CAST(N'2021-10-19T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (7, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'rketchell6@google.fr', N'Reade', N'Ketchell', N'rketchell6@google.fr', 0, 0, CAST(N'2022-04-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (8, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'rdickin7@dailymail.co.uk', N'Rossie', N'Dickin', N'rdickin7@dailymail.co.uk', 0, 0, CAST(N'2022-05-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (9, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'blebarr8@gravatar.com', N'Brana', N'Le Barr', N'blebarr8@gravatar.com', 0, 0, CAST(N'2022-02-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (10, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bmicheu9@senate.gov', N'Broderick', N'Micheu', N'bmicheu9@senate.gov', 0, 0, CAST(N'2021-11-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (11, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'jmccliffertya@t.co', N'Jedediah', N'McClifferty', N'jmccliffertya@t.co', 0, 0, CAST(N'2022-08-31T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (12, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'hcoveyb@wisc.edu', N'Herta', N'Covey', N'hcoveyb@wisc.edu', 0, 0, CAST(N'2022-06-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (13, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'hklejnac@weibo.com', N'Heath', N'Klejna', N'hklejnac@weibo.com', 0, 0, CAST(N'2021-12-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (14, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bcrigind@noaa.gov', N'Barr', N'Crigin', N'bcrigind@noaa.gov', 0, 0, CAST(N'2022-09-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (15, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'nsenioure@lycos.com', N'Nataniel', N'Seniour', N'nsenioure@lycos.com', 0, 0, CAST(N'2021-10-28T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (16, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'swaterhousef@mail.ru', N'Sanderson', N'Waterhouse', N'swaterhousef@mail.ru', 0, 0, CAST(N'2022-04-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (17, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bambroixg@bravesites.com', N'Brewer', N'Ambroix', N'bambroixg@bravesites.com', 0, 0, CAST(N'2022-05-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (18, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ebaleineh@webs.com', N'Elga', N'Baleine', N'ebaleineh@webs.com', 0, 0, CAST(N'2022-07-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (19, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ctatchelli@yandex.ru', N'Clarissa', N'Tatchell', N'ctatchelli@yandex.ru', 0, 0, CAST(N'2021-12-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (20, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'kcurnickj@gravatar.com', N'Kristen', N'Curnick', N'kcurnickj@gravatar.com', 0, 0, CAST(N'2022-03-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (21, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'pbollettik@usa.gov', N'Pru', N'Bolletti', N'pbollettik@usa.gov', 0, 0, CAST(N'2022-09-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (22, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'mgibbettl@narod.ru', N'Maria', N'Gibbett', N'mgibbettl@narod.ru', 0, 0, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (23, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'slearmanm@cafepress.com', N'Shellie', N'Learman', N'slearmanm@cafepress.com', 0, 0, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (24, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'gmcmillann@alibaba.com', N'Griselda', N'McMillan', N'gmcmillann@alibaba.com', 0, 0, CAST(N'2022-09-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (25, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'elupsono@zdnet.com', N'Esmaria', N'Lupson', N'elupsono@zdnet.com', 0, 0, CAST(N'2021-12-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (26, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'lmerrettp@imgur.com', N'Linda', N'Merrett', N'lmerrettp@imgur.com', 0, 0, CAST(N'2021-12-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (27, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ybrimmingq@cyberchimps.com', N'Yulma', N'Brimming', N'ybrimmingq@cyberchimps.com', 0, 0, CAST(N'2022-01-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (28, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'gmurtaghr@goodreads.com', N'Gan', N'Murtagh', N'gmurtaghr@goodreads.com', 0, 0, CAST(N'2022-10-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (29, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'kdovidians@alibaba.com', N'Kathie', N'Dovidian', N'kdovidians@alibaba.com', 0, 0, CAST(N'2022-06-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (30, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ksandayt@amazon.de', N'Katleen', N'Sanday', N'ksandayt@amazon.de', 0, 0, CAST(N'2021-11-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (31, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'nelnoughu@opensource.org', N'Noell', N'Elnough', N'nelnoughu@opensource.org', 0, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (32, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bsteinorv@dmoz.org', N'Buddy', N'Steinor', N'bsteinorv@dmoz.org', 0, 0, CAST(N'2022-02-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (33, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'amaciasw@stanford.edu', N'Alla', N'Macias', N'amaciasw@stanford.edu', 0, 0, CAST(N'2021-12-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (34, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'hshaklex@simplemachines.org', N'Hugh', N'Shakle', N'hshaklex@simplemachines.org', 0, 0, CAST(N'2021-11-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (35, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'dfortyey@wsj.com', N'Dav', N'Fortye', N'dfortyey@wsj.com', 0, 0, CAST(N'2021-11-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (36, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'swolstenholmez@ycombinator.com', N'Skye', N'Wolstenholme', N'swolstenholmez@ycombinator.com', 0, 0, CAST(N'2022-09-17T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (37, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'nardy10@japanpost.jp', N'Nancie', N'Ardy', N'nardy10@japanpost.jp', 0, 0, CAST(N'2022-07-18T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (38, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'pmartellini11@cargocollective.com', N'Patrick', N'Martellini', N'pmartellini11@cargocollective.com', 0, 0, CAST(N'2022-07-14T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (39, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'csawood12@flickr.com', N'Cahra', N'Sawood', N'csawood12@flickr.com', 0, 0, CAST(N'2022-07-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (40, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'twulfinger13@google.es', N'Tye', N'Wulfinger', N'twulfinger13@google.es', 0, 0, CAST(N'2022-08-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (41, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'mlarive14@answers.com', N'Meta', N'Larive', N'mlarive14@answers.com', 0, 0, CAST(N'2022-07-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (42, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'mharback15@dion.ne.jp', N'Myrta', N'Harback', N'mharback15@dion.ne.jp', 0, 0, CAST(N'2022-03-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (43, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'jcharopen16@dropbox.com', N'Jennifer', N'Charopen', N'jcharopen16@dropbox.com', 0, 0, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (44, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ntamsett17@nymag.com', N'Niels', N'Tamsett', N'ntamsett17@nymag.com', 0, 0, CAST(N'2022-07-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (45, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'rgutowski18@rambler.ru', N'Rance', N'Gutowski', N'rgutowski18@rambler.ru', 0, 0, CAST(N'2022-06-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (46, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'emccurlye19@squarespace.com', N'Edgard', N'McCurlye', N'emccurlye19@squarespace.com', 0, 0, CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (47, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'emehaffey1a@typepad.com', N'Elyssa', N'Mehaffey', N'emehaffey1a@typepad.com', 0, 0, CAST(N'2022-04-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (48, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'citzhak1b@google.it', N'Chev', N'Itzhak', N'citzhak1b@google.it', 0, 0, CAST(N'2022-09-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (49, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'anoonan1c@businesswire.com', N'Alleyn', N'Noonan', N'anoonan1c@businesswire.com', 0, 0, CAST(N'2021-10-28T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (50, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'cplaister1d@sphinn.com', N'Christy', N'Plaister', N'cplaister1d@sphinn.com', 0, 0, CAST(N'2022-02-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (51, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'vtregear1e@nifty.com', N'Vick', N'Tregear', N'vtregear1e@nifty.com', 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (52, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bpettis1f@eventbrite.com', N'Barton', N'Pettis', N'bpettis1f@eventbrite.com', 0, 0, CAST(N'2022-08-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (53, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'alongo1g@etsy.com', N'Adorne', N'Longo', N'alongo1g@etsy.com', 0, 0, CAST(N'2021-11-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (54, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'lspiby1h@woothemes.com', N'Lucio', N'Spiby', N'lspiby1h@woothemes.com', 0, 0, CAST(N'2022-09-09T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (55, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'wceschi1i@theglobeandmail.com', N'Whit', N'Ceschi', N'wceschi1i@theglobeandmail.com', 0, 0, CAST(N'2022-10-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (56, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bmurphey1j@miitbeian.gov.cn', N'Bonita', N'Murphey', N'bmurphey1j@miitbeian.gov.cn', 0, 0, CAST(N'2022-09-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (57, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'tnoad1k@bbb.org', N'Theodora', N'Noad', N'tnoad1k@bbb.org', 0, 0, CAST(N'2022-02-14T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (58, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'nmourant1l@list-manage.com', N'Ninetta', N'Mourant', N'nmourant1l@list-manage.com', 0, 0, CAST(N'2022-09-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (59, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ccliss1m@nationalgeographic.com', N'Cobby', N'Cliss', N'ccliss1m@nationalgeographic.com', 0, 0, CAST(N'2022-03-31T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (60, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'gcryer1n@dell.com', N'Gardie', N'Cryer', N'gcryer1n@dell.com', 0, 0, CAST(N'2022-06-22T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (61, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'opeart1o@spiegel.de', N'Odie', N'Peart', N'opeart1o@spiegel.de', 0, 0, CAST(N'2021-11-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (62, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'asandal1p@vinaora.com', N'Ali', N'Sandal', N'asandal1p@vinaora.com', 0, 0, CAST(N'2022-05-31T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (63, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'cerington1q@newyorker.com', N'Chiarra', N'Erington', N'cerington1q@newyorker.com', 0, 0, CAST(N'2022-08-19T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (64, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'agorriessen1r@sfgate.com', N'Abeu', N'Gorriessen', N'agorriessen1r@sfgate.com', 0, 0, CAST(N'2022-09-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (65, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'gbeesey1s@blinklist.com', N'Gusta', N'Beesey', N'gbeesey1s@blinklist.com', 0, 0, CAST(N'2022-01-22T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (66, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ptilbury1t@mac.com', N'Perry', N'Tilbury', N'ptilbury1t@mac.com', 0, 0, CAST(N'2022-03-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (67, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'asantorini1u@sciencedaily.com', N'Anette', N'Santorini', N'asantorini1u@sciencedaily.com', 0, 0, CAST(N'2021-11-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (68, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'djouen1v@princeton.edu', N'Dalston', N'Jouen', N'djouen1v@princeton.edu', 0, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (69, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'gwillett1w@ftc.gov', N'Ginger', N'Willett', N'gwillett1w@ftc.gov', 0, 0, CAST(N'2022-05-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (70, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'mhartnell1x@so-net.ne.jp', N'Morgun', N'Hartnell', N'mhartnell1x@so-net.ne.jp', 0, 0, CAST(N'2022-02-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (71, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'fjeffels1y@tuttocitta.it', N'Fons', N'Jeffels', N'fjeffels1y@tuttocitta.it', 0, 0, CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (72, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'sstolberger1z@pinterest.com', N'Sibylla', N'Stolberger', N'sstolberger1z@pinterest.com', 0, 0, CAST(N'2022-09-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (73, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'pdebruijne20@arstechnica.com', N'Pat', N'De Bruijne', N'pdebruijne20@arstechnica.com', 0, 0, CAST(N'2022-03-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (74, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'nconsadine21@netlog.com', N'Noreen', N'Consadine', N'nconsadine21@netlog.com', 0, 0, CAST(N'2022-07-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (75, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'pfayer22@spiegel.de', N'Penelope', N'Fayer', N'pfayer22@spiegel.de', 0, 0, CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (76, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'bmallall23@usatoday.com', N'Bentley', N'Mallall', N'bmallall23@usatoday.com', 0, 0, CAST(N'2022-08-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (77, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'tsims24@cbsnews.com', N'Talbert', N'Sims', N'tsims24@cbsnews.com', 0, 0, CAST(N'2022-01-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (78, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'kneilus25@dell.com', N'Kinnie', N'Neilus', N'kneilus25@dell.com', 0, 0, CAST(N'2022-07-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (79, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'mbroadwood26@diigo.com', N'Mickey', N'Broadwood', N'mbroadwood26@diigo.com', 0, 0, CAST(N'2021-12-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (80, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'wcrank27@1688.com', N'Wat', N'Crank', N'wcrank27@1688.com', 0, 0, CAST(N'2021-11-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (81, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'josgood28@123-reg.co.uk', N'Jeanna', N'Osgood', N'josgood28@123-reg.co.uk', 0, 0, CAST(N'2021-11-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (82, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'lhoulridge29@ask.com', N'Ludvig', N'Houlridge', N'lhoulridge29@ask.com', 0, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (83, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'litzakovitz2a@hao123.com', N'Livy', N'Itzakovitz', N'litzakovitz2a@hao123.com', 0, 0, CAST(N'2022-03-28T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (84, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'oferreri2b@digg.com', N'Osbert', N'Ferreri', N'oferreri2b@digg.com', 0, 0, CAST(N'2022-02-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (85, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'pproback2c@netscape.com', N'Pooh', N'Proback', N'pproback2c@netscape.com', 0, 0, CAST(N'2022-08-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (86, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'nflanner2d@whitehouse.gov', N'Natalee', N'Flanner', N'nflanner2d@whitehouse.gov', 0, 0, CAST(N'2022-08-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (87, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'lmepsted2e@ning.com', N'Lisbeth', N'Mepsted', N'lmepsted2e@ning.com', 0, 0, CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (88, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'jstelli2f@umn.edu', N'Jozef', N'Stelli', N'jstelli2f@umn.edu', 0, 0, CAST(N'2021-11-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (89, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'hpolhill2g@freewebs.com', N'Hana', N'Polhill', N'hpolhill2g@freewebs.com', 0, 0, CAST(N'2021-12-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (90, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'hascrofte2h@imageshack.us', N'Hanny', N'Ascrofte', N'hascrofte2h@imageshack.us', 0, 0, CAST(N'2022-07-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (91, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'djore2i@elegantthemes.com', N'Denny', N'Jore', N'djore2i@elegantthemes.com', 0, 0, CAST(N'2022-05-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (92, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'csmallman2j@barnesandnoble.com', N'Claus', N'Smallman', N'csmallman2j@barnesandnoble.com', 0, 0, CAST(N'2022-03-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (93, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'vberthome2k@nasa.gov', N'Virginie', N'Berthome', N'vberthome2k@nasa.gov', 0, 0, CAST(N'2021-11-14T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (94, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'gollett2l@purevolume.com', N'Gayle', N'Ollett', N'gollett2l@purevolume.com', 0, 0, CAST(N'2022-06-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (95, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'nwitts2m@theatlantic.com', N'Naoma', N'Witts', N'nwitts2m@theatlantic.com', 0, 0, CAST(N'2022-07-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (96, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'msudlow2n@tinypic.com', N'Maura', N'Sudlow', N'msudlow2n@tinypic.com', 0, 0, CAST(N'2022-04-16T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (97, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'vralston2o@google.co.uk', N'Vin', N'Ralston', N'vralston2o@google.co.uk', 0, 0, CAST(N'2022-09-19T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (98, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'kspilsburie2p@cargocollective.com', N'Katina', N'Spilsburie', N'kspilsburie2p@cargocollective.com', 0, 0, CAST(N'2022-03-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (99, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'kmaffin2q@hc360.com', N'Karina', N'Maffin', N'kmaffin2q@hc360.com', 0, 0, CAST(N'2022-06-06T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (100, N'pbkdf2_sha256$320000$QGDVMwfacjPLJuB1C99ALW$rj4YMdgZd0RGbRp+FpkMYRJr2iuTIJiQpL357l+WzpY=', NULL, 0, N'ddelgadillo2r@ibm.com', N'Darrin', N'Delgadillo', N'ddelgadillo2r@ibm.com', 0, 0, CAST(N'2022-04-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (101, N'pbkdf2_sha256$320000$qlxpWXyt8hvX7iPSGYYHL6$k5Ne5szgGtOTxixqf77BoocpI2T3jgYP6Ot6nj9gdXk=', CAST(N'2022-10-22T02:22:48.2028090' AS DateTime2), 1, N'abril', N'', N'', N'abril@gmail.com', 1, 1, CAST(N'2022-10-22T02:22:36.1776680' AS DateTime2))
SET IDENTITY_INSERT [dbo].[auth_user] OFF
GO
SET IDENTITY_INSERT [dbo].[auth_user_groups] ON 

INSERT [dbo].[auth_user_groups] ([id], [user_id], [group_id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[auth_user_groups] OFF
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 

INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (1, CAST(N'2022-10-22T02:31:51.7698430' AS DateTime2), N'76', N'Elga Baleine', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (2, CAST(N'2022-10-22T02:31:51.7828300' AS DateTime2), N'75', N'Elga Baleine', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3, CAST(N'2022-10-22T02:31:51.7868350' AS DateTime2), N'74', N'Elga Baleine', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4, CAST(N'2022-10-22T02:31:51.7898530' AS DateTime2), N'73', N'Elga Baleine', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (5, CAST(N'2022-10-22T02:31:51.7928480' AS DateTime2), N'72', N'Elga Baleine', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (6, CAST(N'2022-10-22T02:31:51.7948330' AS DateTime2), N'71', N'Sanderson Waterhouse', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (7, CAST(N'2022-10-22T02:31:51.8018310' AS DateTime2), N'70', N'Sanderson Waterhouse', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (8, CAST(N'2022-10-22T02:31:51.8048280' AS DateTime2), N'69', N'Sanderson Waterhouse', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (9, CAST(N'2022-10-22T02:31:51.8088420' AS DateTime2), N'68', N'Sanderson Waterhouse', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (10, CAST(N'2022-10-22T02:31:51.8128350' AS DateTime2), N'67', N'Barr Crigin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (11, CAST(N'2022-10-22T02:31:51.8198280' AS DateTime2), N'66', N'Barr Crigin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (12, CAST(N'2022-10-22T02:31:51.8228290' AS DateTime2), N'65', N'Barr Crigin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (13, CAST(N'2022-10-22T02:31:51.8268370' AS DateTime2), N'64', N'Barr Crigin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (14, CAST(N'2022-10-22T02:31:51.8298380' AS DateTime2), N'63', N'Barr Crigin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (15, CAST(N'2022-10-22T02:31:51.8328270' AS DateTime2), N'62', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (16, CAST(N'2022-10-22T02:31:51.8358270' AS DateTime2), N'61', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (17, CAST(N'2022-10-22T02:31:51.8388390' AS DateTime2), N'60', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (18, CAST(N'2022-10-22T02:31:51.8428290' AS DateTime2), N'59', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (19, CAST(N'2022-10-22T02:31:51.8458400' AS DateTime2), N'58', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (20, CAST(N'2022-10-22T02:31:51.8488300' AS DateTime2), N'57', N'Jedediah McClifferty', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (21, CAST(N'2022-10-22T02:31:51.8518280' AS DateTime2), N'56', N'Jedediah McClifferty', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (22, CAST(N'2022-10-22T02:31:51.8548430' AS DateTime2), N'55', N'Jedediah McClifferty', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (23, CAST(N'2022-10-22T02:31:51.8578430' AS DateTime2), N'54', N'Jedediah McClifferty', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (24, CAST(N'2022-10-22T02:31:51.8598390' AS DateTime2), N'53', N'Jedediah McClifferty', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (25, CAST(N'2022-10-22T02:31:51.8628370' AS DateTime2), N'52', N'Broderick Micheu', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (26, CAST(N'2022-10-22T02:31:51.8698350' AS DateTime2), N'51', N'Broderick Micheu', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (27, CAST(N'2022-10-22T02:31:51.8728320' AS DateTime2), N'50', N'Broderick Micheu', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (28, CAST(N'2022-10-22T02:31:51.8758350' AS DateTime2), N'49', N'Broderick Micheu', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (29, CAST(N'2022-10-22T02:31:51.8788340' AS DateTime2), N'48', N'Broderick Micheu', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (30, CAST(N'2022-10-22T02:31:51.8808390' AS DateTime2), N'47', N'Rossie Dickin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (31, CAST(N'2022-10-22T02:31:51.8878310' AS DateTime2), N'46', N'Rossie Dickin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (32, CAST(N'2022-10-22T02:31:51.8908390' AS DateTime2), N'45', N'Rossie Dickin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (33, CAST(N'2022-10-22T02:31:51.8938290' AS DateTime2), N'44', N'Rossie Dickin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (34, CAST(N'2022-10-22T02:31:51.8958330' AS DateTime2), N'43', N'Rossie Dickin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (35, CAST(N'2022-10-22T02:31:51.8988370' AS DateTime2), N'42', N'Bert Richarz', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (36, CAST(N'2022-10-22T02:31:51.9008330' AS DateTime2), N'41', N'Bert Richarz', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (37, CAST(N'2022-10-22T02:31:51.9038350' AS DateTime2), N'40', N'Bert Richarz', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (38, CAST(N'2022-10-22T02:31:51.9068320' AS DateTime2), N'39', N'Bert Richarz', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (39, CAST(N'2022-10-22T02:31:51.9098290' AS DateTime2), N'38', N'Bert Richarz', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (40, CAST(N'2022-10-22T02:31:51.9128310' AS DateTime2), N'37', N'Zacharia Care', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (41, CAST(N'2022-10-22T02:31:51.9158310' AS DateTime2), N'36', N'Zacharia Care', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (42, CAST(N'2022-10-22T02:31:51.9188310' AS DateTime2), N'35', N'Zacharia Care', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (43, CAST(N'2022-10-22T02:31:51.9228350' AS DateTime2), N'34', N'Zacharia Care', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (44, CAST(N'2022-10-22T02:31:51.9258320' AS DateTime2), N'33', N'Jed Brunnen', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (45, CAST(N'2022-10-22T02:31:51.9288370' AS DateTime2), N'32', N'Jed Brunnen', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (46, CAST(N'2022-10-22T02:31:51.9318380' AS DateTime2), N'31', N'Jed Brunnen', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (47, CAST(N'2022-10-22T02:31:51.9348370' AS DateTime2), N'30', N'Jed Brunnen', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (48, CAST(N'2022-10-22T02:31:51.9378310' AS DateTime2), N'29', N'Jed Brunnen', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (49, CAST(N'2022-10-22T02:31:51.9408340' AS DateTime2), N'28', N'Loella Zeplin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (50, CAST(N'2022-10-22T02:31:51.9438370' AS DateTime2), N'27', N'Loella Zeplin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (51, CAST(N'2022-10-22T02:31:51.9468320' AS DateTime2), N'26', N'Loella Zeplin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (52, CAST(N'2022-10-22T02:31:51.9498380' AS DateTime2), N'25', N'Loella Zeplin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (53, CAST(N'2022-10-22T02:31:51.9518280' AS DateTime2), N'24', N'Loella Zeplin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (54, CAST(N'2022-10-22T02:31:51.9558500' AS DateTime2), N'23', N'Barr Crigin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (55, CAST(N'2022-10-22T02:31:51.9588380' AS DateTime2), N'22', N'Sanderson Waterhouse', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (56, CAST(N'2022-10-22T02:31:51.9618510' AS DateTime2), N'21', N'Sanderson Waterhouse', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (57, CAST(N'2022-10-22T02:31:51.9648460' AS DateTime2), N'20', N'Rossie Dickin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (58, CAST(N'2022-10-22T02:31:51.9668490' AS DateTime2), N'19', N'Loella Zeplin', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (59, CAST(N'2022-10-22T02:31:51.9698510' AS DateTime2), N'18', N'Elga Baleine', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (60, CAST(N'2022-10-22T02:31:51.9728270' AS DateTime2), N'17', N'Bert Richarz', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (61, CAST(N'2022-10-22T02:31:51.9758260' AS DateTime2), N'16', N'Zacharia Care', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (62, CAST(N'2022-10-22T02:31:51.9778270' AS DateTime2), N'15', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (63, CAST(N'2022-10-22T02:31:51.9808490' AS DateTime2), N'14', N'Jedediah McClifferty', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (64, CAST(N'2022-10-22T02:31:51.9838500' AS DateTime2), N'13', N'Elga Baleine', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (65, CAST(N'2022-10-22T02:31:51.9868260' AS DateTime2), N'12', N'Jedediah McClifferty', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (66, CAST(N'2022-10-22T02:31:51.9898250' AS DateTime2), N'11', N'Broderick Micheu', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (67, CAST(N'2022-10-22T02:31:51.9918270' AS DateTime2), N'10', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (68, CAST(N'2022-10-22T02:31:51.9938270' AS DateTime2), N'9', N'Broderick Micheu', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (69, CAST(N'2022-10-22T02:31:52.0008360' AS DateTime2), N'8', N'Zacharia Care', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (70, CAST(N'2022-10-22T02:31:52.0078380' AS DateTime2), N'7', N'Jed Brunnen', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (71, CAST(N'2022-10-22T02:31:52.0148480' AS DateTime2), N'6', N'Heath Klejna', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (72, CAST(N'2022-10-22T02:31:52.0218380' AS DateTime2), N'5', N'David Alvarez', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (73, CAST(N'2022-10-22T02:31:52.0248290' AS DateTime2), N'4', N'David Alvarez', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (74, CAST(N'2022-10-22T02:31:52.0278310' AS DateTime2), N'3', N'David Alvarez', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (75, CAST(N'2022-10-22T02:31:52.0298280' AS DateTime2), N'2', N'David Alvarez', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (76, CAST(N'2022-10-22T02:31:52.0318260' AS DateTime2), N'1', N'David Alvarez', 3, N'', 11, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (77, CAST(N'2022-10-22T02:46:55.6997900' AS DateTime2), N'1', N'Automotríz', 1, N'[{"added": {}}]', 15, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (78, CAST(N'2022-10-22T02:47:22.2218380' AS DateTime2), N'2', N'Microtecnología', 1, N'[{"added": {}}]', 15, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (79, CAST(N'2022-10-22T02:50:31.5651880' AS DateTime2), N'1', N'Línea de montaje - Auto', 1, N'[{"added": {}}]', 20, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (80, CAST(N'2022-10-22T02:51:14.2469210' AS DateTime2), N'2', N'Línea de fabricación - Auto', 1, N'[{"added": {}}]', 20, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (81, CAST(N'2022-10-22T02:51:26.8017600' AS DateTime2), N'2', N'Línea de fabricación - Auto', 2, N'[{"changed": {"fields": ["ProductionLineDescription"]}}]', 20, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (82, CAST(N'2022-10-22T02:51:46.4671350' AS DateTime2), N'3', N'Línea de montaje - Micro', 1, N'[{"added": {}}]', 20, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (83, CAST(N'2022-10-22T02:52:07.7982530' AS DateTime2), N'4', N'Línea de fabricación - Micro', 1, N'[{"added": {}}]', 20, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (84, CAST(N'2022-10-22T03:33:26.9901320' AS DateTime2), N'6', N'Producto ordenado: [Daimler] Maybach', 2, N'[{"changed": {"fields": ["ProdOrdDate"]}}]', 19, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (85, CAST(N'2022-10-22T03:33:34.2428100' AS DateTime2), N'16', N'Producto ordenado: [Ford] Troller', 2, N'[{"changed": {"fields": ["ProdOrdDate"]}}]', 19, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (86, CAST(N'2022-10-22T03:33:39.1268130' AS DateTime2), N'20', N'Producto ordenado: [Lenovo] IdeaPad 3-14ITL Intel Core', 2, N'[{"changed": {"fields": ["ProdOrdDate"]}}]', 19, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (87, CAST(N'2022-10-22T03:37:21.3279240' AS DateTime2), N'1', N'Parte: Monitor o pantalla, Peso: 500.0, Color: Negro', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (88, CAST(N'2022-10-22T03:37:36.0036760' AS DateTime2), N'2', N'Parte: Placa base o tarjeta madre (mother board), Peso: 100.0, Color: Verde', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (89, CAST(N'2022-10-22T03:37:52.0748070' AS DateTime2), N'3', N'Parte: Procesador o CPU, Peso: 20.0, Color: Ninguno', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (90, CAST(N'2022-10-22T03:38:03.7442540' AS DateTime2), N'4', N'Parte: Memoria RAM, Peso: 10.0, Color: Verde', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (91, CAST(N'2022-10-22T03:38:24.9448860' AS DateTime2), N'5', N'Parte: Tarjeta de video, Peso: 30.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (92, CAST(N'2022-10-22T03:38:45.8960930' AS DateTime2), N'6', N'Parte: Fuente de alimentación, Peso: 400.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (93, CAST(N'2022-10-22T03:39:02.3030850' AS DateTime2), N'7', N'Parte: Disco duro, Peso: 100.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (94, CAST(N'2022-10-22T03:39:17.3420880' AS DateTime2), N'8', N'Parte: Unidades de estado sólido, Peso: 30.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (95, CAST(N'2022-10-22T03:39:45.9404350' AS DateTime2), N'9', N'Parte: Motor, Peso: 1000.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (96, CAST(N'2022-10-22T03:39:58.2547280' AS DateTime2), N'10', N'Parte: Batería, Peso: 500.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (97, CAST(N'2022-10-22T03:40:11.8673600' AS DateTime2), N'11', N'Parte: Caja de cambios, Peso: 100.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (98, CAST(N'2022-10-22T03:40:25.9360840' AS DateTime2), N'12', N'Parte: Chasis, Peso: 300.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (99, CAST(N'2022-10-22T03:40:46.3690340' AS DateTime2), N'13', N'Parte: Fusibles, Peso: 400.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (100, CAST(N'2022-10-22T03:41:01.2810460' AS DateTime2), N'14', N'Parte: Alternador, Peso: 300.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (101, CAST(N'2022-10-22T03:41:16.6192050' AS DateTime2), N'15', N'Parte: Llantas, Peso: 400.0, Color: Negro', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (102, CAST(N'2022-10-22T03:41:36.6319430' AS DateTime2), N'16', N'Parte: Espejos, Peso: 100.0, Color: No especificado', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (103, CAST(N'2022-10-22T03:41:47.8088440' AS DateTime2), N'17', N'Parte: Puertas, Peso: 700.0, Color: Rojo', 1, N'[{"added": {}}]', 22, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (104, CAST(N'2022-10-22T03:42:25.6337810' AS DateTime2), N'1', N'Cantidad de partes 1 de la parte Parte: Batería, Peso: 500.0, Color: No especificado del producto [FCA] Dodge', 1, N'[{"added": {}}]', 21, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (105, CAST(N'2022-10-22T03:42:40.4233370' AS DateTime2), N'2', N'Cantidad de partes 1 de la parte Parte: Alternador, Peso: 300.0, Color: No especificado del producto [FCA] Dodge', 1, N'[{"added": {}}]', 21, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (106, CAST(N'2022-10-22T03:42:49.3542960' AS DateTime2), N'3', N'Cantidad de partes 4 de la parte Parte: Llantas, Peso: 400.0, Color: Negro del producto [FCA] Dodge', 1, N'[{"added": {}}]', 21, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (107, CAST(N'2022-10-22T03:42:57.0669150' AS DateTime2), N'4', N'Cantidad de partes 3 de la parte Parte: Espejos, Peso: 100.0, Color: No especificado del producto [FCA] Dodge', 1, N'[{"added": {}}]', 21, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (108, CAST(N'2022-10-22T03:43:05.5104610' AS DateTime2), N'5', N'Cantidad de partes 1 de la parte Parte: Monitor o pantalla, Peso: 500.0, Color: Negro del producto [Huawei] MateBook de 16 pulgadas AMD Ryzen 5 4600H', 1, N'[{"added": {}}]', 21, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (109, CAST(N'2022-10-22T03:43:13.6015660' AS DateTime2), N'6', N'Cantidad de partes 1 de la parte Parte: Placa base o tarjeta madre (mother board), Peso: 100.0, Color: Verde del producto [Huawei] MateBook de 16 pulgadas AMD Ryzen 5 4600H', 1, N'[{"added": {}}]', 21, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (110, CAST(N'2022-10-22T03:46:50.8245760' AS DateTime2), N'3', N'Parte ordenada: Llantas', 1, N'[{"added": {}}]', 14, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (111, CAST(N'2022-10-22T03:47:05.6721810' AS DateTime2), N'4', N'Parte ordenada: Caja de cambios', 1, N'[{"added": {}}]', 14, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (112, CAST(N'2022-10-22T03:47:22.0676090' AS DateTime2), N'5', N'Parte ordenada: Alternador', 1, N'[{"added": {}}]', 14, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (113, CAST(N'2022-10-22T03:47:34.1880720' AS DateTime2), N'6', N'Parte ordenada: Espejos', 1, N'[{"added": {}}]', 14, 101)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (114, CAST(N'2022-10-22T03:51:20.8675410' AS DateTime2), N'2', N'Hoja de salida de material: 2022-10-22', 1, N'[{"added": {}}]', 26, 101)
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 

INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'auth', N'user')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'contenttypes', N'contenttype')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'Employees', N'assistence')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'Employees', N'department')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'Employees', N'employee')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'Employees', N'job_position')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'Employees', N'worker')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (12, N'Parts', N'category')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (13, N'Parts', N'entrypartorder')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (14, N'Parts', N'partsorder')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (15, N'Production', N'area')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (16, N'Production', N'linemember')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (22, N'Production', N'part')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (21, N'Production', N'partsquantity')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (17, N'Production', N'product')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (20, N'Production', N'productionline')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (19, N'Production', N'productorder')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (18, N'Production', N'qualitycontrol')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'sessions', N'session')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (27, N'Warehouse', N'entrymaterialsheet')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (26, N'Warehouse', N'materialsheet')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (23, N'Warehouse', N'provider')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (25, N'Warehouse', N'reqitem')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (24, N'Warehouse', N'requsition')
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 

INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'contenttypes', N'0001_initial', CAST(N'2022-10-22T00:43:21.3337620' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'auth', N'0001_initial', CAST(N'2022-10-22T00:43:21.4541120' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'Employees', N'0001_initial', CAST(N'2022-10-22T00:43:21.5585380' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'Employees', N'0002_rename_empusername_employee_user_and_more', CAST(N'2022-10-22T00:43:22.3283960' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'Employees', N'0003_remove_worker_worker_workhours', CAST(N'2022-10-22T00:43:22.8072380' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'Employees', N'0004_alter_employee_empstatus', CAST(N'2022-10-22T00:43:22.8378160' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'Parts', N'0001_initial', CAST(N'2022-10-22T00:43:22.8598940' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'Production', N'0001_initial', CAST(N'2022-10-22T00:43:23.0419750' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'Production', N'0002_part_alter_partsquantity_ppart', CAST(N'2022-10-22T00:43:23.6349990' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'Parts', N'0002_entrypartorder_partsorder_delete_part_and_more', CAST(N'2022-10-22T00:43:23.7352560' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'Parts', N'0003_alter_category_categorydescription', CAST(N'2022-10-22T00:43:24.1820250' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'Production', N'0003_alter_productorder_prodordquality', CAST(N'2022-10-22T00:43:24.2102350' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'Warehouse', N'0001_initial', CAST(N'2022-10-22T00:43:24.3147060' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'admin', N'0001_initial', CAST(N'2022-10-22T00:43:24.3599740' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2022-10-22T00:43:24.3830030' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2022-10-22T00:43:24.4005730' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2022-10-22T00:43:24.9323060' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2022-10-22T00:43:24.9887920' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (19, N'auth', N'0003_alter_user_email_max_length', CAST(N'2022-10-22T00:43:25.0083070' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (20, N'auth', N'0004_alter_user_username_opts', CAST(N'2022-10-22T00:43:25.0283350' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (21, N'auth', N'0005_alter_user_last_login_null', CAST(N'2022-10-22T00:43:25.4274960' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (22, N'auth', N'0006_require_contenttypes_0002', CAST(N'2022-10-22T00:43:25.4524770' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (23, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2022-10-22T00:43:25.4710050' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (24, N'auth', N'0008_alter_user_username_max_length', CAST(N'2022-10-22T00:43:25.5567550' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (25, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2022-10-22T00:43:25.5787560' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (26, N'auth', N'0010_alter_group_name_max_length', CAST(N'2022-10-22T00:43:26.1270180' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (27, N'auth', N'0011_update_proxy_permissions', CAST(N'2022-10-22T00:43:26.1760070' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (28, N'auth', N'0012_alter_user_first_name_max_length', CAST(N'2022-10-22T00:43:26.1942510' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (29, N'sessions', N'0001_initial', CAST(N'2022-10-22T00:43:26.2074240' AS DateTime2))
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees_assistence] ON 

INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (77, CAST(N'2022-10-20' AS Date), CAST(N'10:13:00' AS Time), CAST(N'12:55:00' AS Time), 13)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (78, CAST(N'2022-10-20' AS Date), CAST(N'04:36:00' AS Time), CAST(N'20:10:00' AS Time), 12)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (79, CAST(N'2022-10-16' AS Date), CAST(N'18:40:00' AS Time), CAST(N'09:22:00' AS Time), 3)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (80, CAST(N'2022-10-16' AS Date), CAST(N'20:53:00' AS Time), CAST(N'03:53:00' AS Time), 8)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (81, CAST(N'2022-10-16' AS Date), CAST(N'11:45:00' AS Time), CAST(N'05:27:00' AS Time), 17)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (82, CAST(N'2022-10-20' AS Date), CAST(N'15:52:00' AS Time), CAST(N'22:14:00' AS Time), 17)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (83, CAST(N'2022-10-17' AS Date), CAST(N'02:30:00' AS Time), CAST(N'14:08:00' AS Time), 15)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (84, CAST(N'2022-10-19' AS Date), CAST(N'00:46:00' AS Time), CAST(N'01:51:00' AS Time), 9)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (85, CAST(N'2022-10-16' AS Date), CAST(N'12:19:00' AS Time), CAST(N'20:54:00' AS Time), 12)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (86, CAST(N'2022-10-20' AS Date), CAST(N'19:38:00' AS Time), CAST(N'10:58:00' AS Time), 6)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (87, CAST(N'2022-10-16' AS Date), CAST(N'13:42:00' AS Time), CAST(N'15:59:00' AS Time), 10)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (88, CAST(N'2022-10-16' AS Date), CAST(N'08:31:00' AS Time), CAST(N'19:08:00' AS Time), 1)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (89, CAST(N'2022-10-16' AS Date), CAST(N'08:18:00' AS Time), CAST(N'18:29:00' AS Time), 2)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (90, CAST(N'2022-10-16' AS Date), CAST(N'23:53:00' AS Time), CAST(N'01:10:00' AS Time), 9)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (91, CAST(N'2022-10-20' AS Date), CAST(N'10:25:00' AS Time), CAST(N'08:51:00' AS Time), 7)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (92, CAST(N'2022-10-19' AS Date), CAST(N'08:54:00' AS Time), CAST(N'16:16:00' AS Time), 11)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (93, CAST(N'2022-10-18' AS Date), CAST(N'05:51:00' AS Time), CAST(N'05:18:00' AS Time), 18)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (94, CAST(N'2022-10-19' AS Date), CAST(N'04:37:00' AS Time), CAST(N'13:00:00' AS Time), 12)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (95, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (96, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (97, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (98, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (99, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (100, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 2)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (101, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 2)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (102, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 2)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (103, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 2)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (104, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 2)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (105, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 3)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (106, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 3)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (107, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 3)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (108, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 3)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (109, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 3)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (110, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 6)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (111, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 6)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (112, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 6)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (113, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 6)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (114, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 7)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (115, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 7)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (116, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 7)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (117, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 7)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (118, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 8)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (119, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 8)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (120, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 8)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (121, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 8)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (122, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 8)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (123, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 9)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (124, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 9)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (125, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 9)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (126, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 9)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (127, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 10)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (128, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 10)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (129, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 10)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (130, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 10)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (131, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 10)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (132, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 11)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (133, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 11)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (134, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 11)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (135, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 11)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (136, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 12)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (137, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 12)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (138, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 12)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (139, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 13)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (140, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 13)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (141, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 13)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (142, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 13)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (143, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 15)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (144, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 15)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (145, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 15)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (146, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 15)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (147, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 17)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (148, CAST(N'2022-10-18' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 17)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (149, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 17)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (150, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 17)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (151, CAST(N'2022-10-17' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 18)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (152, CAST(N'2022-10-19' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 18)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (153, CAST(N'2022-10-20' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 18)
INSERT [dbo].[Employees_assistence] ([id], [assistDate], [assistEntrance], [assistOut], [assistWorker_id]) VALUES (154, CAST(N'2022-10-21' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 18)
SET IDENTITY_INSERT [dbo].[Employees_assistence] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees_department] ON 

INSERT [dbo].[Employees_department] ([id], [deptName]) VALUES (1, N'Recursos Humanos')
INSERT [dbo].[Employees_department] ([id], [deptName]) VALUES (2, N'Limpieza')
INSERT [dbo].[Employees_department] ([id], [deptName]) VALUES (3, N'Marketing')
INSERT [dbo].[Employees_department] ([id], [deptName]) VALUES (4, N'Sistemas')
INSERT [dbo].[Employees_department] ([id], [deptName]) VALUES (5, N'Seguridad')
SET IDENTITY_INSERT [dbo].[Employees_department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees_employee] ON 

INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (1, N'David', N'Alvarez', NULL, CAST(N'2022-10-21' AS Date), 1, N'david.alvarez@outlook.com', 1)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (2, N'Loella', N'Zeplin', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'lzeplin1@hp.com', 2)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (3, N'Jed', N'Brunnen', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'jbrunnen2@cnet.com', 3)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (4, N'Zacharia', N'Care', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'zcare3@nationalgeographic.com', 4)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (5, N'Bert', N'Richarz', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bricharz4@shutterfly.com', 5)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (6, N'Tamara', N'Ashelford', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'tashelford5@ow.ly', 6)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (7, N'Reade', N'Ketchell', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'rketchell6@google.fr', 7)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (8, N'Rossie', N'Dickin', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'rdickin7@dailymail.co.uk', 8)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (9, N'Brana', N'Le Barr', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'blebarr8@gravatar.com', 9)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (10, N'Broderick', N'Micheu', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bmicheu9@senate.gov', 10)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (11, N'Jedediah', N'McClifferty', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'jmccliffertya@t.co', 11)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (12, N'Herta', N'Covey', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'hcoveyb@wisc.edu', 12)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (13, N'Heath', N'Klejna', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'hklejnac@weibo.com', 13)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (14, N'Barr', N'Crigin', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bcrigind@noaa.gov', 14)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (15, N'Nataniel', N'Seniour', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'nsenioure@lycos.com', 15)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (16, N'Sanderson', N'Waterhouse', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'swaterhousef@mail.ru', 16)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (17, N'Brewer', N'Ambroix', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bambroixg@bravesites.com', 17)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (18, N'Elga', N'Baleine', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ebaleineh@webs.com', 18)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (19, N'Clarissa', N'Tatchell', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ctatchelli@yandex.ru', 19)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (20, N'Kristen', N'Curnick', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'kcurnickj@gravatar.com', 20)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (21, N'Pru', N'Bolletti', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'pbollettik@usa.gov', 21)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (22, N'Maria', N'Gibbett', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'mgibbettl@narod.ru', 22)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (23, N'Shellie', N'Learman', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'slearmanm@cafepress.com', 23)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (24, N'Griselda', N'McMillan', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'gmcmillann@alibaba.com', 24)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (25, N'Esmaria', N'Lupson', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'elupsono@zdnet.com', 25)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (26, N'Linda', N'Merrett', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'lmerrettp@imgur.com', 26)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (27, N'Yulma', N'Brimming', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ybrimmingq@cyberchimps.com', 27)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (28, N'Gan', N'Murtagh', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'gmurtaghr@goodreads.com', 28)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (29, N'Kathie', N'Dovidian', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'kdovidians@alibaba.com', 29)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (30, N'Katleen', N'Sanday', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ksandayt@amazon.de', 30)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (31, N'Noell', N'Elnough', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'nelnoughu@opensource.org', 31)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (32, N'Buddy', N'Steinor', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bsteinorv@dmoz.org', 32)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (33, N'Alla', N'Macias', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'amaciasw@stanford.edu', 33)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (34, N'Hugh', N'Shakle', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'hshaklex@simplemachines.org', 34)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (35, N'Dav', N'Fortye', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'dfortyey@wsj.com', 35)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (36, N'Skye', N'Wolstenholme', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'swolstenholmez@ycombinator.com', 36)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (37, N'Nancie', N'Ardy', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'nardy10@japanpost.jp', 37)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (38, N'Patrick', N'Martellini', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'pmartellini11@cargocollective.com', 38)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (39, N'Cahra', N'Sawood', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'csawood12@flickr.com', 39)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (40, N'Tye', N'Wulfinger', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'twulfinger13@google.es', 40)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (41, N'Meta', N'Larive', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'mlarive14@answers.com', 41)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (42, N'Myrta', N'Harback', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'mharback15@dion.ne.jp', 42)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (43, N'Jennifer', N'Charopen', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'jcharopen16@dropbox.com', 43)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (44, N'Niels', N'Tamsett', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ntamsett17@nymag.com', 44)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (45, N'Rance', N'Gutowski', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'rgutowski18@rambler.ru', 45)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (46, N'Edgard', N'McCurlye', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'emccurlye19@squarespace.com', 46)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (47, N'Elyssa', N'Mehaffey', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'emehaffey1a@typepad.com', 47)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (48, N'Chev', N'Itzhak', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'citzhak1b@google.it', 48)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (49, N'Alleyn', N'Noonan', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'anoonan1c@businesswire.com', 49)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (50, N'Christy', N'Plaister', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'cplaister1d@sphinn.com', 50)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (51, N'Vick', N'Tregear', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'vtregear1e@nifty.com', 51)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (52, N'Barton', N'Pettis', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bpettis1f@eventbrite.com', 52)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (53, N'Adorne', N'Longo', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'alongo1g@etsy.com', 53)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (54, N'Lucio', N'Spiby', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'lspiby1h@woothemes.com', 54)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (55, N'Whit', N'Ceschi', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'wceschi1i@theglobeandmail.com', 55)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (56, N'Bonita', N'Murphey', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bmurphey1j@miitbeian.gov.cn', 56)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (57, N'Theodora', N'Noad', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'tnoad1k@bbb.org', 57)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (58, N'Ninetta', N'Mourant', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'nmourant1l@list-manage.com', 58)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (59, N'Cobby', N'Cliss', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ccliss1m@nationalgeographic.com', 59)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (60, N'Gardie', N'Cryer', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'gcryer1n@dell.com', 60)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (61, N'Odie', N'Peart', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'opeart1o@spiegel.de', 61)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (62, N'Ali', N'Sandal', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'asandal1p@vinaora.com', 62)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (63, N'Chiarra', N'Erington', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'cerington1q@newyorker.com', 63)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (64, N'Abeu', N'Gorriessen', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'agorriessen1r@sfgate.com', 64)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (65, N'Gusta', N'Beesey', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'gbeesey1s@blinklist.com', 65)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (66, N'Perry', N'Tilbury', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ptilbury1t@mac.com', 66)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (67, N'Anette', N'Santorini', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'asantorini1u@sciencedaily.com', 67)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (68, N'Dalston', N'Jouen', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'djouen1v@princeton.edu', 68)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (69, N'Ginger', N'Willett', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'gwillett1w@ftc.gov', 69)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (70, N'Morgun', N'Hartnell', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'mhartnell1x@so-net.ne.jp', 70)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (71, N'Fons', N'Jeffels', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'fjeffels1y@tuttocitta.it', 71)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (72, N'Sibylla', N'Stolberger', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'sstolberger1z@pinterest.com', 72)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (73, N'Pat', N'De Bruijne', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'pdebruijne20@arstechnica.com', 73)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (74, N'Noreen', N'Consadine', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'nconsadine21@netlog.com', 74)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (75, N'Penelope', N'Fayer', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'pfayer22@spiegel.de', 75)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (76, N'Bentley', N'Mallall', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'bmallall23@usatoday.com', 76)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (77, N'Talbert', N'Sims', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'tsims24@cbsnews.com', 77)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (78, N'Kinnie', N'Neilus', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'kneilus25@dell.com', 78)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (79, N'Mickey', N'Broadwood', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'mbroadwood26@diigo.com', 79)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (80, N'Wat', N'Crank', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'wcrank27@1688.com', 80)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (81, N'Jeanna', N'Osgood', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'josgood28@123-reg.co.uk', 81)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (82, N'Ludvig', N'Houlridge', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'lhoulridge29@ask.com', 82)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (83, N'Livy', N'Itzakovitz', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'litzakovitz2a@hao123.com', 83)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (84, N'Osbert', N'Ferreri', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'oferreri2b@digg.com', 84)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (85, N'Pooh', N'Proback', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'pproback2c@netscape.com', 85)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (86, N'Natalee', N'Flanner', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'nflanner2d@whitehouse.gov', 86)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (87, N'Lisbeth', N'Mepsted', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'lmepsted2e@ning.com', 87)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (88, N'Jozef', N'Stelli', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'jstelli2f@umn.edu', 88)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (89, N'Hana', N'Polhill', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'hpolhill2g@freewebs.com', 89)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (90, N'Hanny', N'Ascrofte', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'hascrofte2h@imageshack.us', 90)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (91, N'Denny', N'Jore', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'djore2i@elegantthemes.com', 91)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (92, N'Claus', N'Smallman', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'csmallman2j@barnesandnoble.com', 92)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (93, N'Virginie', N'Berthome', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'vberthome2k@nasa.gov', 93)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (94, N'Gayle', N'Ollett', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'gollett2l@purevolume.com', 94)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (95, N'Naoma', N'Witts', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'nwitts2m@theatlantic.com', 95)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (96, N'Maura', N'Sudlow', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'msudlow2n@tinypic.com', 96)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (97, N'Vin', N'Ralston', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'vralston2o@google.co.uk', 97)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (98, N'Katina', N'Spilsburie', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'kspilsburie2p@cargocollective.com', 98)
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (99, N'Karina', N'Maffin', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'kmaffin2q@hc360.com', 99)
GO
INSERT [dbo].[Employees_employee] ([id], [empFirstName], [empLastName], [empBirthDate], [empDateJoined], [empStatus], [empEmail], [user_id]) VALUES (100, N'Darrin', N'Delgadillo', CAST(N'2001-03-01' AS Date), CAST(N'2022-10-19' AS Date), 0, N'ddelgadillo2r@ibm.com', 100)
SET IDENTITY_INSERT [dbo].[Employees_employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees_job_position] ON 

INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (1, N'Administrador', N'vmckennan0@tinyurl.com', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (2, N'Operador', N'rgaspero1@plala.or.jp', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (3, N'Director', N'cwhitnell2@salon.com', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (4, N'Supervisor', N'ebeiderbecke3@tripadvisor.com', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (5, N'Encargado', N'rwyld4@tripadvisor.com', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (6, N'Gerente', N'aburnett5@fastcompany.com', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (7, N'Jefe de Línea', N'nelwyn6@deliciousdays.com', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (8, N'Supervisor de calidad', N'mdwine7@odnoklassniki.ru', 1)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (9, N'Administrador', N'scostelow0@bravesites.com', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (10, N'Operador', N'gbettaney1@latimes.com', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (11, N'Director', N'dcoope2@arstechnica.com', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (12, N'Supervisor', N'vipsley3@mapquest.com', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (13, N'Encargado', N'tyakuntzov4@altervista.org', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (14, N'Gerente', N'sferentz5@bravesites.com', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (15, N'Jefe de Línea', N'crhodef6@usgs.gov', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (16, N'Supervisor de calidad', N'flamble7@earthlink.net', 2)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (17, N'Administrador', N'ktythe0@prnewswire.com', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (18, N'Operador', N'ccypler1@hexun.com', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (19, N'Director', N'kmonger2@ca.gov', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (20, N'Supervisor', N'rewan3@ftc.gov', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (21, N'Encargado', N'mfagg4@hao123.com', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (22, N'Gerente', N'lunwins5@chronoengine.com', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (23, N'Jefe de Línea', N'dbaudinet6@buzzfeed.com', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (24, N'Supervisor de calidad', N'pwinslett7@dailymotion.com', 3)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (25, N'Administrador', N'lpendlebury0@addtoany.com', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (26, N'Operador', N'sstobo1@indiatimes.com', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (27, N'Director', N'jracher2@wordpress.com', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (28, N'Supervisor', N'hgarcia3@ovh.net', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (29, N'Encargado', N'bhardware4@google.cn', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (30, N'Gerente', N'wsnelling5@edublogs.org', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (31, N'Jefe de Línea', N'krevening6@nyu.edu', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (32, N'Supervisor de calidad', N'hberntsson7@senate.gov', 4)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (33, N'Administrador', N'lwilfinger0@tripod.com', 5)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (34, N'Operador', N'agreenside1@infoseek.co.jp', 5)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (35, N'Director', N'emcinility2@abc.net.au', 5)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (36, N'Supervisor', N'jhaldane3@wikispaces.com', 5)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (37, N'Encargado', N'gstannard4@flavors.me', 5)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (38, N'Gerente', N'krupke5@nymag.com', 5)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (39, N'Jefe de Línea', N'gfaier6@washingtonpost.com', 5)
INSERT [dbo].[Employees_job_position] ([id], [jpName], [jpEmail], [jpDepartment_id]) VALUES (40, N'Supervisor de calidad', N'rmascall7@imageshack.us', 5)
SET IDENTITY_INSERT [dbo].[Employees_job_position] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees_worker] ON 

INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (1, CAST(4444.00 AS Numeric(10, 2)), CAST(N'00:04:00' AS Time), CAST(N'00:11:00' AS Time), 1, 33)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (2, CAST(2492.00 AS Numeric(10, 2)), CAST(N'04:03:00' AS Time), CAST(N'18:07:00' AS Time), 2, 4)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (3, CAST(1605.00 AS Numeric(10, 2)), CAST(N'07:48:00' AS Time), CAST(N'06:06:00' AS Time), 3, 26)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (4, CAST(492.00 AS Numeric(10, 2)), CAST(N'10:19:00' AS Time), CAST(N'05:58:00' AS Time), 4, 21)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (5, CAST(2693.00 AS Numeric(10, 2)), CAST(N'17:25:00' AS Time), CAST(N'08:14:00' AS Time), 5, 37)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (6, CAST(2279.00 AS Numeric(10, 2)), CAST(N'15:01:00' AS Time), CAST(N'17:10:00' AS Time), 6, 27)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (7, CAST(2954.00 AS Numeric(10, 2)), CAST(N'08:07:00' AS Time), CAST(N'04:29:00' AS Time), 7, 27)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (8, CAST(281.00 AS Numeric(10, 2)), CAST(N'17:39:00' AS Time), CAST(N'01:01:00' AS Time), 8, 37)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (9, CAST(614.00 AS Numeric(10, 2)), CAST(N'15:38:00' AS Time), CAST(N'20:22:00' AS Time), 9, 28)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (10, CAST(1176.00 AS Numeric(10, 2)), CAST(N'09:34:00' AS Time), CAST(N'21:25:00' AS Time), 10, 37)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (11, CAST(4885.00 AS Numeric(10, 2)), CAST(N'00:29:00' AS Time), CAST(N'23:54:00' AS Time), 11, 18)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (12, CAST(472.00 AS Numeric(10, 2)), CAST(N'18:28:00' AS Time), CAST(N'13:29:00' AS Time), 12, 2)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (13, CAST(2229.00 AS Numeric(10, 2)), CAST(N'09:22:00' AS Time), CAST(N'20:37:00' AS Time), 13, 36)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (14, CAST(4070.00 AS Numeric(10, 2)), CAST(N'00:39:00' AS Time), CAST(N'00:45:00' AS Time), 14, 4)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (15, CAST(1882.00 AS Numeric(10, 2)), CAST(N'07:47:00' AS Time), CAST(N'06:16:00' AS Time), 15, 5)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (16, CAST(4637.00 AS Numeric(10, 2)), CAST(N'02:57:00' AS Time), CAST(N'14:07:00' AS Time), 16, 31)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (17, CAST(3881.00 AS Numeric(10, 2)), CAST(N'10:09:00' AS Time), CAST(N'20:56:00' AS Time), 17, 20)
INSERT [dbo].[Employees_worker] ([id], [workerSalary], [workerEntrance], [workerOut], [workerEmployee_id], [workerJobPosition_id]) VALUES (18, CAST(2970.00 AS Numeric(10, 2)), CAST(N'23:03:00' AS Time), CAST(N'21:23:00' AS Time), 18, 26)
SET IDENTITY_INSERT [dbo].[Employees_worker] OFF
GO
SET IDENTITY_INSERT [dbo].[Parts_category] ON 

INSERT [dbo].[Parts_category] ([id], [categoryName], [categoryDescription]) VALUES (1, N'Cofres', N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.')
INSERT [dbo].[Parts_category] ([id], [categoryName], [categoryDescription]) VALUES (4, N'Cofres', N'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.')
INSERT [dbo].[Parts_category] ([id], [categoryName], [categoryDescription]) VALUES (5, N'Defensas', N'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.')
INSERT [dbo].[Parts_category] ([id], [categoryName], [categoryDescription]) VALUES (6, N'Espejos', N'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.')
INSERT [dbo].[Parts_category] ([id], [categoryName], [categoryDescription]) VALUES (7, N'Workstation o estaciones de trabajo', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.')
INSERT [dbo].[Parts_category] ([id], [categoryName], [categoryDescription]) VALUES (10, N'Parrillas', N'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.')
SET IDENTITY_INSERT [dbo].[Parts_category] OFF
GO
SET IDENTITY_INSERT [dbo].[Parts_partsorder] ON 

INSERT [dbo].[Parts_partsorder] ([id], [partsOrdDate], [partsOrdQuantity], [partsOrdPart_id], [partsOrd_ProdOrd_id]) VALUES (3, CAST(N'2022-10-22' AS Date), 4, 15, 17)
INSERT [dbo].[Parts_partsorder] ([id], [partsOrdDate], [partsOrdQuantity], [partsOrdPart_id], [partsOrd_ProdOrd_id]) VALUES (4, CAST(N'2022-10-22' AS Date), 1, 11, 17)
INSERT [dbo].[Parts_partsorder] ([id], [partsOrdDate], [partsOrdQuantity], [partsOrdPart_id], [partsOrd_ProdOrd_id]) VALUES (5, CAST(N'2022-10-22' AS Date), 1, 14, 17)
INSERT [dbo].[Parts_partsorder] ([id], [partsOrdDate], [partsOrdQuantity], [partsOrdPart_id], [partsOrd_ProdOrd_id]) VALUES (6, CAST(N'2022-10-22' AS Date), 3, 16, 17)
SET IDENTITY_INSERT [dbo].[Parts_partsorder] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_area] ON 

INSERT [dbo].[Production_area] ([id], [areaName], [areaDescription]) VALUES (1, N'Automotríz', N'Área encargada de fabricar productos automotrices')
INSERT [dbo].[Production_area] ([id], [areaName], [areaDescription]) VALUES (2, N'Microtecnología', N'Área encargada de fabricar equipos de cómputo')
SET IDENTITY_INSERT [dbo].[Production_area] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_linemember] ON 

INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (1, 1, 13)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (2, 2, 14)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (3, 3, 14)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (4, 4, 3)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (5, 3, 16)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (6, 3, 8)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (7, 3, 2)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (8, 2, 6)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (9, 3, 10)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (10, 1, 16)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (11, 4, 1)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (12, 2, 12)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (13, 2, 10)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (14, 2, 5)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (15, 4, 9)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (16, 4, 8)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (17, 4, 15)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (18, 4, 15)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (19, 3, 17)
INSERT [dbo].[Production_linemember] ([id], [lineMemberName_id], [lineMemberWorker_id]) VALUES (20, 4, 7)
SET IDENTITY_INSERT [dbo].[Production_linemember] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_part] ON 

INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (1, N'Monitor o pantalla', 500, N'Negro')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (2, N'Placa base o tarjeta madre (mother board)', 100, N'Verde')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (3, N'Procesador o CPU', 20, N'Ninguno')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (4, N'Memoria RAM', 10, N'Verde')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (5, N'Tarjeta de video', 30, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (6, N'Fuente de alimentación', 400, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (7, N'Disco duro', 100, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (8, N'Unidades de estado sólido', 30, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (9, N'Motor', 1000, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (10, N'Batería', 500, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (11, N'Caja de cambios', 100, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (12, N'Chasis', 300, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (13, N'Fusibles', 400, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (14, N'Alternador', 300, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (15, N'Llantas', 400, N'Negro')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (16, N'Espejos', 100, N'No especificado')
INSERT [dbo].[Production_part] ([id], [partName], [partWeight], [partColor]) VALUES (17, N'Puertas', 700, N'Rojo')
SET IDENTITY_INSERT [dbo].[Production_part] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_partsquantity] ON 

INSERT [dbo].[Production_partsquantity] ([id], [pQuantity], [pPart_id], [pProduct_id]) VALUES (1, 1, 10, 4)
INSERT [dbo].[Production_partsquantity] ([id], [pQuantity], [pPart_id], [pProduct_id]) VALUES (2, 1, 14, 4)
INSERT [dbo].[Production_partsquantity] ([id], [pQuantity], [pPart_id], [pProduct_id]) VALUES (3, 4, 15, 4)
INSERT [dbo].[Production_partsquantity] ([id], [pQuantity], [pPart_id], [pProduct_id]) VALUES (4, 3, 16, 4)
INSERT [dbo].[Production_partsquantity] ([id], [pQuantity], [pPart_id], [pProduct_id]) VALUES (5, 1, 1, 18)
INSERT [dbo].[Production_partsquantity] ([id], [pQuantity], [pPart_id], [pProduct_id]) VALUES (6, 1, 2, 18)
SET IDENTITY_INSERT [dbo].[Production_partsquantity] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_product] ON 

INSERT [dbo].[Production_product] ([id], [productName], [productDescription]) VALUES (3, N'[Daimler] Maybach', N'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.')
INSERT [dbo].[Production_product] ([id], [productName], [productDescription]) VALUES (4, N'[FCA] Dodge', N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.')
INSERT [dbo].[Production_product] ([id], [productName], [productDescription]) VALUES (5, N'[FCA] Jeep', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.')
INSERT [dbo].[Production_product] ([id], [productName], [productDescription]) VALUES (6, N'[Ford] Troller', N'In congue. Etiam justo. Etiam pretium iaculis justo.')
INSERT [dbo].[Production_product] ([id], [productName], [productDescription]) VALUES (12, N'[FCA] Dodge', N'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.')
INSERT [dbo].[Production_product] ([id], [productName], [productDescription]) VALUES (18, N'[Huawei] MateBook de 16 pulgadas AMD Ryzen 5 4600H', N'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.')
INSERT [dbo].[Production_product] ([id], [productName], [productDescription]) VALUES (21, N'[Lenovo] IdeaPad 3-14ITL Intel Core', N'In sagittis dui vel nisl. Duis ac nibh.')
SET IDENTITY_INSERT [dbo].[Production_product] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_productionline] ON 

INSERT [dbo].[Production_productionline] ([id], [productionLineName], [productionLineDescription], [productionLineArea_id]) VALUES (1, N'Línea de montaje - Auto', N'Se agregan nuevos elementos o piezas a la materia prima', 1)
INSERT [dbo].[Production_productionline] ([id], [productionLineName], [productionLineDescription], [productionLineArea_id]) VALUES (2, N'Línea de fabricación - Auto', N'La materia prima recibe modificaciones en su estructura, peso, tamaño o composición química,', 1)
INSERT [dbo].[Production_productionline] ([id], [productionLineName], [productionLineDescription], [productionLineArea_id]) VALUES (3, N'Línea de montaje - Micro', N'Se agregan nuevos elementos o piezas a la materia prima', 2)
INSERT [dbo].[Production_productionline] ([id], [productionLineName], [productionLineDescription], [productionLineArea_id]) VALUES (4, N'Línea de fabricación - Micro', N'La materia prima recibe modificaciones en su estructura, peso, tamaño o composición química', 2)
SET IDENTITY_INSERT [dbo].[Production_productionline] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_productorder] ON 

INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (2, CAST(N'2022-10-17' AS Date), 70, 1, 0, 1, 3, 6)
INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (6, CAST(N'2022-10-21' AS Date), 24, 0, 1, 1, 5, 3)
INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (10, CAST(N'2022-10-20' AS Date), 69, 1, 1, 0, 17, 12)
INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (13, CAST(N'2022-10-19' AS Date), 67, 1, 1, 0, 6, 6)
INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (15, CAST(N'2022-10-17' AS Date), 62, 1, 1, 1, 2, 6)
INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (16, CAST(N'2022-10-21' AS Date), 48, 0, 0, 1, 12, 6)
INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (17, CAST(N'2022-10-19' AS Date), 37, 1, 1, 0, 5, 4)
INSERT [dbo].[Production_productorder] ([id], [prodOrdDate], [prodOrdQuantity], [prodOrdActive], [prodOrdQuality], [prodOrdDone], [prodLineMember_id], [prodOrdProduct_id]) VALUES (20, CAST(N'2022-10-21' AS Date), 66, 0, 0, 0, 10, 21)
SET IDENTITY_INSERT [dbo].[Production_productorder] OFF
GO
SET IDENTITY_INSERT [dbo].[Production_qualitycontrol] ON 

INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (1, 1, 1)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (2, 2, 13)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (3, 2, 1)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (4, 2, 14)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (5, 1, 12)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (6, 1, 10)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (7, 1, 6)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (8, 1, 11)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (9, 2, 15)
INSERT [dbo].[Production_qualitycontrol] ([id], [qcArea_id], [qcWorker_id]) VALUES (10, 2, 11)
SET IDENTITY_INSERT [dbo].[Production_qualitycontrol] OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouse_materialsheet] ON 

INSERT [dbo].[Warehouse_materialsheet] ([id], [matSheetDate], [matSheetMinQuantity], [matSheetMaxQuantity], [matSheetActualQuantity], [matSheetPart_id]) VALUES (2, CAST(N'2022-10-22' AS Date), 1, 1, 1000, 11)
SET IDENTITY_INSERT [dbo].[Warehouse_materialsheet] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 10/21/2022 8:59:28 PM ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_b120cbf9]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_group_id_b120cbf9] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC,
	[permission_id] ASC
)
WHERE ([group_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_permission_id_84c5c92e]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_permission_id_84c5c92e] ON [dbo].[auth_group_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_permission_content_type_id_2f476e4b]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [auth_permission_content_type_id_2f476e4b] ON [dbo].[auth_permission]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_codename_01ab375a_uniq]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_permission_content_type_id_codename_01ab375a_uniq] ON [dbo].[auth_permission]
(
	[content_type_id] ASC,
	[codename] ASC
)
WHERE ([content_type_id] IS NOT NULL AND [codename] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_user_username_6821ab7c_uniq]    Script Date: 10/21/2022 8:59:28 PM ******/
ALTER TABLE [dbo].[auth_user] ADD  CONSTRAINT [auth_user_username_6821ab7c_uniq] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_group_id_97559544]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_group_id_97559544] ON [dbo].[auth_user_groups]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_6a12ed8b]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_user_id_6a12ed8b] ON [dbo].[auth_user_groups]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_group_id_94350c0c_uniq]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_groups_user_id_group_id_94350c0c_uniq] ON [dbo].[auth_user_groups]
(
	[user_id] ASC,
	[group_id] ASC
)
WHERE ([user_id] IS NOT NULL AND [group_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_permission_id_1fbb5f2c]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_permission_id_1fbb5f2c] ON [dbo].[auth_user_user_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_a95ead1b]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_a95ead1b] ON [dbo].[auth_user_user_permissions]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq] ON [dbo].[auth_user_user_permissions]
(
	[user_id] ASC,
	[permission_id] ASC
)
WHERE ([user_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_content_type_id_c4bce8eb]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb] ON [dbo].[django_admin_log]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_user_id_c564eba6]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6] ON [dbo].[django_admin_log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_model_76bd3d3b_uniq]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq] ON [dbo].[django_content_type]
(
	[app_label] ASC,
	[model] ASC
)
WHERE ([app_label] IS NOT NULL AND [model] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_session_expire_date_a5c62663]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663] ON [dbo].[django_session]
(
	[expire_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Employees_assistence_assistWorker_id_1de35ca7]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Employees_assistence_assistWorker_id_1de35ca7] ON [dbo].[Employees_assistence]
(
	[assistWorker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Employee__F4D9F493A79B7B80]    Script Date: 10/21/2022 8:59:28 PM ******/
ALTER TABLE [dbo].[Employees_employee] ADD UNIQUE NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Employees_job_position_jpDepartment_id_2a04759b]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Employees_job_position_jpDepartment_id_2a04759b] ON [dbo].[Employees_job_position]
(
	[jpDepartment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Employees_worker_workerEmployee_id_96394fbe]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Employees_worker_workerEmployee_id_96394fbe] ON [dbo].[Employees_worker]
(
	[workerEmployee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Employees_worker_workerJobPosition_id_9845c03c]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Employees_worker_workerJobPosition_id_9845c03c] ON [dbo].[Employees_worker]
(
	[workerJobPosition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Parts_entrypartorder_entryPartOrder_id_22d6d56f]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Parts_entrypartorder_entryPartOrder_id_22d6d56f] ON [dbo].[Parts_entrypartorder]
(
	[entryPartOrder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Parts_partsorder_partsOrd_ProdOrd_id_36e0d97b]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Parts_partsorder_partsOrd_ProdOrd_id_36e0d97b] ON [dbo].[Parts_partsorder]
(
	[partsOrd_ProdOrd_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Parts_partsorder_partsOrdPart_id_bacb7887]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Parts_partsorder_partsOrdPart_id_bacb7887] ON [dbo].[Parts_partsorder]
(
	[partsOrdPart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_linemember_lineMemberName_id_e0b5e375]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_linemember_lineMemberName_id_e0b5e375] ON [dbo].[Production_linemember]
(
	[lineMemberName_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_linemember_lineMemberWorker_id_4635c033]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_linemember_lineMemberWorker_id_4635c033] ON [dbo].[Production_linemember]
(
	[lineMemberWorker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_partsquantity_pPart_id_3e946724]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_partsquantity_pPart_id_3e946724] ON [dbo].[Production_partsquantity]
(
	[pPart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_partsquantity_pProduct_id_bc58bc9a]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_partsquantity_pProduct_id_bc58bc9a] ON [dbo].[Production_partsquantity]
(
	[pProduct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_productionline_productionLineArea_id_9ab32208]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_productionline_productionLineArea_id_9ab32208] ON [dbo].[Production_productionline]
(
	[productionLineArea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_productorder_prodLineMember_id_82a1ac96]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_productorder_prodLineMember_id_82a1ac96] ON [dbo].[Production_productorder]
(
	[prodLineMember_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_productorder_prodOrdProduct_id_1f7f31cc]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_productorder_prodOrdProduct_id_1f7f31cc] ON [dbo].[Production_productorder]
(
	[prodOrdProduct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_qualitycontrol_qcArea_id_b7f10ec5]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_qualitycontrol_qcArea_id_b7f10ec5] ON [dbo].[Production_qualitycontrol]
(
	[qcArea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Production_qualitycontrol_qcWorker_id_11e86d2a]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Production_qualitycontrol_qcWorker_id_11e86d2a] ON [dbo].[Production_qualitycontrol]
(
	[qcWorker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Warehouse_entrymaterialsheet_entryMSEmployee_id_7acbec35]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Warehouse_entrymaterialsheet_entryMSEmployee_id_7acbec35] ON [dbo].[Warehouse_entrymaterialsheet]
(
	[entryMSEmployee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Warehouse_entrymaterialsheet_entryMSMaterialSheet_id_3394ecc4]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Warehouse_entrymaterialsheet_entryMSMaterialSheet_id_3394ecc4] ON [dbo].[Warehouse_entrymaterialsheet]
(
	[entryMSMaterialSheet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Warehouse_entrymaterialsheet_entryMSReq_id_ceee605b]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Warehouse_entrymaterialsheet_entryMSReq_id_ceee605b] ON [dbo].[Warehouse_entrymaterialsheet]
(
	[entryMSReq_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Warehouse_materialsheet_matSheetPart_id_834aa9b0]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Warehouse_materialsheet_matSheetPart_id_834aa9b0] ON [dbo].[Warehouse_materialsheet]
(
	[matSheetPart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Warehouse_reqitem_reqItemPart_id_87cf44f9]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Warehouse_reqitem_reqItemPart_id_87cf44f9] ON [dbo].[Warehouse_reqitem]
(
	[reqItemPart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Warehouse_reqitem_reqItemReq_id_4c22e244]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Warehouse_reqitem_reqItemReq_id_4c22e244] ON [dbo].[Warehouse_reqitem]
(
	[reqItemReq_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Warehouse_requsition_reqProvider_id_57cfaa00]    Script Date: 10/21/2022 8:59:28 PM ******/
CREATE NONCLUSTERED INDEX [Warehouse_requsition_reqProvider_id_57cfaa00] ON [dbo].[Warehouse_requsition]
(
	[reqProvider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id]
GO
ALTER TABLE [dbo].[Employees_assistence]  WITH CHECK ADD  CONSTRAINT [Employees_assistence_assistWorker_id_1de35ca7_fk_Employees_employee_id] FOREIGN KEY([assistWorker_id])
REFERENCES [dbo].[Employees_employee] ([id])
GO
ALTER TABLE [dbo].[Employees_assistence] CHECK CONSTRAINT [Employees_assistence_assistWorker_id_1de35ca7_fk_Employees_employee_id]
GO
ALTER TABLE [dbo].[Employees_employee]  WITH CHECK ADD  CONSTRAINT [Employees_employee_user_id_7d431466_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[Employees_employee] CHECK CONSTRAINT [Employees_employee_user_id_7d431466_fk_auth_user_id]
GO
ALTER TABLE [dbo].[Employees_job_position]  WITH CHECK ADD  CONSTRAINT [Employees_job_position_jpDepartment_id_2a04759b_fk_Employees_department_id] FOREIGN KEY([jpDepartment_id])
REFERENCES [dbo].[Employees_department] ([id])
GO
ALTER TABLE [dbo].[Employees_job_position] CHECK CONSTRAINT [Employees_job_position_jpDepartment_id_2a04759b_fk_Employees_department_id]
GO
ALTER TABLE [dbo].[Employees_worker]  WITH CHECK ADD  CONSTRAINT [Employees_worker_workerEmployee_id_96394fbe_fk_Employees_employee_id] FOREIGN KEY([workerEmployee_id])
REFERENCES [dbo].[Employees_employee] ([id])
GO
ALTER TABLE [dbo].[Employees_worker] CHECK CONSTRAINT [Employees_worker_workerEmployee_id_96394fbe_fk_Employees_employee_id]
GO
ALTER TABLE [dbo].[Employees_worker]  WITH CHECK ADD  CONSTRAINT [Employees_worker_workerJobPosition_id_9845c03c_fk_Employees_job_position_id] FOREIGN KEY([workerJobPosition_id])
REFERENCES [dbo].[Employees_job_position] ([id])
GO
ALTER TABLE [dbo].[Employees_worker] CHECK CONSTRAINT [Employees_worker_workerJobPosition_id_9845c03c_fk_Employees_job_position_id]
GO
ALTER TABLE [dbo].[Parts_entrypartorder]  WITH CHECK ADD  CONSTRAINT [Parts_entrypartorder_entryPartOrder_id_22d6d56f_fk_Parts_partsorder_id] FOREIGN KEY([entryPartOrder_id])
REFERENCES [dbo].[Parts_partsorder] ([id])
GO
ALTER TABLE [dbo].[Parts_entrypartorder] CHECK CONSTRAINT [Parts_entrypartorder_entryPartOrder_id_22d6d56f_fk_Parts_partsorder_id]
GO
ALTER TABLE [dbo].[Parts_partsorder]  WITH CHECK ADD  CONSTRAINT [Parts_partsorder_partsOrd_ProdOrd_id_36e0d97b_fk_Production_productorder_id] FOREIGN KEY([partsOrd_ProdOrd_id])
REFERENCES [dbo].[Production_productorder] ([id])
GO
ALTER TABLE [dbo].[Parts_partsorder] CHECK CONSTRAINT [Parts_partsorder_partsOrd_ProdOrd_id_36e0d97b_fk_Production_productorder_id]
GO
ALTER TABLE [dbo].[Parts_partsorder]  WITH CHECK ADD  CONSTRAINT [Parts_partsorder_partsOrdPart_id_bacb7887_fk_Production_part_id] FOREIGN KEY([partsOrdPart_id])
REFERENCES [dbo].[Production_part] ([id])
GO
ALTER TABLE [dbo].[Parts_partsorder] CHECK CONSTRAINT [Parts_partsorder_partsOrdPart_id_bacb7887_fk_Production_part_id]
GO
ALTER TABLE [dbo].[Production_linemember]  WITH CHECK ADD  CONSTRAINT [Production_linemember_lineMemberName_id_e0b5e375_fk_Production_productionline_id] FOREIGN KEY([lineMemberName_id])
REFERENCES [dbo].[Production_productionline] ([id])
GO
ALTER TABLE [dbo].[Production_linemember] CHECK CONSTRAINT [Production_linemember_lineMemberName_id_e0b5e375_fk_Production_productionline_id]
GO
ALTER TABLE [dbo].[Production_linemember]  WITH CHECK ADD  CONSTRAINT [Production_linemember_lineMemberWorker_id_4635c033_fk_Employees_worker_id] FOREIGN KEY([lineMemberWorker_id])
REFERENCES [dbo].[Employees_worker] ([id])
GO
ALTER TABLE [dbo].[Production_linemember] CHECK CONSTRAINT [Production_linemember_lineMemberWorker_id_4635c033_fk_Employees_worker_id]
GO
ALTER TABLE [dbo].[Production_partsquantity]  WITH CHECK ADD  CONSTRAINT [Production_partsquantity_pPart_id_3e946724_fk_Production_part_id] FOREIGN KEY([pPart_id])
REFERENCES [dbo].[Production_part] ([id])
GO
ALTER TABLE [dbo].[Production_partsquantity] CHECK CONSTRAINT [Production_partsquantity_pPart_id_3e946724_fk_Production_part_id]
GO
ALTER TABLE [dbo].[Production_partsquantity]  WITH CHECK ADD  CONSTRAINT [Production_partsquantity_pProduct_id_bc58bc9a_fk_Production_product_id] FOREIGN KEY([pProduct_id])
REFERENCES [dbo].[Production_product] ([id])
GO
ALTER TABLE [dbo].[Production_partsquantity] CHECK CONSTRAINT [Production_partsquantity_pProduct_id_bc58bc9a_fk_Production_product_id]
GO
ALTER TABLE [dbo].[Production_productionline]  WITH CHECK ADD  CONSTRAINT [Production_productionline_productionLineArea_id_9ab32208_fk_Production_area_id] FOREIGN KEY([productionLineArea_id])
REFERENCES [dbo].[Production_area] ([id])
GO
ALTER TABLE [dbo].[Production_productionline] CHECK CONSTRAINT [Production_productionline_productionLineArea_id_9ab32208_fk_Production_area_id]
GO
ALTER TABLE [dbo].[Production_productorder]  WITH CHECK ADD  CONSTRAINT [Production_productorder_prodLineMember_id_82a1ac96_fk_Production_linemember_id] FOREIGN KEY([prodLineMember_id])
REFERENCES [dbo].[Production_linemember] ([id])
GO
ALTER TABLE [dbo].[Production_productorder] CHECK CONSTRAINT [Production_productorder_prodLineMember_id_82a1ac96_fk_Production_linemember_id]
GO
ALTER TABLE [dbo].[Production_productorder]  WITH CHECK ADD  CONSTRAINT [Production_productorder_prodOrdProduct_id_1f7f31cc_fk_Production_product_id] FOREIGN KEY([prodOrdProduct_id])
REFERENCES [dbo].[Production_product] ([id])
GO
ALTER TABLE [dbo].[Production_productorder] CHECK CONSTRAINT [Production_productorder_prodOrdProduct_id_1f7f31cc_fk_Production_product_id]
GO
ALTER TABLE [dbo].[Production_qualitycontrol]  WITH CHECK ADD  CONSTRAINT [Production_qualitycontrol_qcArea_id_b7f10ec5_fk_Production_area_id] FOREIGN KEY([qcArea_id])
REFERENCES [dbo].[Production_area] ([id])
GO
ALTER TABLE [dbo].[Production_qualitycontrol] CHECK CONSTRAINT [Production_qualitycontrol_qcArea_id_b7f10ec5_fk_Production_area_id]
GO
ALTER TABLE [dbo].[Production_qualitycontrol]  WITH CHECK ADD  CONSTRAINT [Production_qualitycontrol_qcWorker_id_11e86d2a_fk_Employees_worker_id] FOREIGN KEY([qcWorker_id])
REFERENCES [dbo].[Employees_worker] ([id])
GO
ALTER TABLE [dbo].[Production_qualitycontrol] CHECK CONSTRAINT [Production_qualitycontrol_qcWorker_id_11e86d2a_fk_Employees_worker_id]
GO
ALTER TABLE [dbo].[Warehouse_entrymaterialsheet]  WITH CHECK ADD  CONSTRAINT [Warehouse_entrymaterialsheet_entryMSEmployee_id_7acbec35_fk_Employees_employee_id] FOREIGN KEY([entryMSEmployee_id])
REFERENCES [dbo].[Employees_employee] ([id])
GO
ALTER TABLE [dbo].[Warehouse_entrymaterialsheet] CHECK CONSTRAINT [Warehouse_entrymaterialsheet_entryMSEmployee_id_7acbec35_fk_Employees_employee_id]
GO
ALTER TABLE [dbo].[Warehouse_entrymaterialsheet]  WITH CHECK ADD  CONSTRAINT [Warehouse_entrymaterialsheet_entryMSMaterialSheet_id_3394ecc4_fk_Warehouse_materialsheet_id] FOREIGN KEY([entryMSMaterialSheet_id])
REFERENCES [dbo].[Warehouse_materialsheet] ([id])
GO
ALTER TABLE [dbo].[Warehouse_entrymaterialsheet] CHECK CONSTRAINT [Warehouse_entrymaterialsheet_entryMSMaterialSheet_id_3394ecc4_fk_Warehouse_materialsheet_id]
GO
ALTER TABLE [dbo].[Warehouse_entrymaterialsheet]  WITH CHECK ADD  CONSTRAINT [Warehouse_entrymaterialsheet_entryMSReq_id_ceee605b_fk_Warehouse_requsition_id] FOREIGN KEY([entryMSReq_id])
REFERENCES [dbo].[Warehouse_requsition] ([id])
GO
ALTER TABLE [dbo].[Warehouse_entrymaterialsheet] CHECK CONSTRAINT [Warehouse_entrymaterialsheet_entryMSReq_id_ceee605b_fk_Warehouse_requsition_id]
GO
ALTER TABLE [dbo].[Warehouse_materialsheet]  WITH CHECK ADD  CONSTRAINT [Warehouse_materialsheet_matSheetPart_id_834aa9b0_fk_Production_part_id] FOREIGN KEY([matSheetPart_id])
REFERENCES [dbo].[Production_part] ([id])
GO
ALTER TABLE [dbo].[Warehouse_materialsheet] CHECK CONSTRAINT [Warehouse_materialsheet_matSheetPart_id_834aa9b0_fk_Production_part_id]
GO
ALTER TABLE [dbo].[Warehouse_reqitem]  WITH CHECK ADD  CONSTRAINT [Warehouse_reqitem_reqItemPart_id_87cf44f9_fk_Production_part_id] FOREIGN KEY([reqItemPart_id])
REFERENCES [dbo].[Production_part] ([id])
GO
ALTER TABLE [dbo].[Warehouse_reqitem] CHECK CONSTRAINT [Warehouse_reqitem_reqItemPart_id_87cf44f9_fk_Production_part_id]
GO
ALTER TABLE [dbo].[Warehouse_reqitem]  WITH CHECK ADD  CONSTRAINT [Warehouse_reqitem_reqItemReq_id_4c22e244_fk_Warehouse_requsition_id] FOREIGN KEY([reqItemReq_id])
REFERENCES [dbo].[Warehouse_requsition] ([id])
GO
ALTER TABLE [dbo].[Warehouse_reqitem] CHECK CONSTRAINT [Warehouse_reqitem_reqItemReq_id_4c22e244_fk_Warehouse_requsition_id]
GO
ALTER TABLE [dbo].[Warehouse_requsition]  WITH CHECK ADD  CONSTRAINT [Warehouse_requsition_reqProvider_id_57cfaa00_fk_Warehouse_provider_id] FOREIGN KEY([reqProvider_id])
REFERENCES [dbo].[Warehouse_provider] ([id])
GO
ALTER TABLE [dbo].[Warehouse_requsition] CHECK CONSTRAINT [Warehouse_requsition_reqProvider_id_57cfaa00_fk_Warehouse_provider_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
USE [master]
GO
ALTER DATABASE [ParrasInc] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [Retail3NF]    Script Date: 24.10.2023 3:25:17 ******/
CREATE DATABASE [Retail3NF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Retail3NF', FILENAME = N'D:\SQLServers\SQLServerRoot\MSSQL16.MSSQLSERVER\MSSQL\DATA\Retail3NF.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Retail3NF_log', FILENAME = N'D:\SQLServers\SQLServerRoot\MSSQL16.MSSQLSERVER\MSSQL\DATA\Retail3NF_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Retail3NF] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Retail3NF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Retail3NF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Retail3NF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Retail3NF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Retail3NF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Retail3NF] SET ARITHABORT OFF 
GO
ALTER DATABASE [Retail3NF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Retail3NF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Retail3NF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Retail3NF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Retail3NF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Retail3NF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Retail3NF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Retail3NF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Retail3NF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Retail3NF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Retail3NF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Retail3NF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Retail3NF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Retail3NF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Retail3NF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Retail3NF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Retail3NF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Retail3NF] SET RECOVERY FULL 
GO
ALTER DATABASE [Retail3NF] SET  MULTI_USER 
GO
ALTER DATABASE [Retail3NF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Retail3NF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Retail3NF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Retail3NF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Retail3NF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Retail3NF] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Retail3NF', N'ON'
GO
ALTER DATABASE [Retail3NF] SET QUERY_STORE = ON
GO
ALTER DATABASE [Retail3NF] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Retail3NF]
GO
/****** Object:  Table [dbo].[DeliveryRequest]    Script Date: 24.10.2023 3:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryRequest](
	[id] [bigint] NOT NULL,
	[Product] [bigint] NOT NULL,
	[Kiosk] [bigint] NOT NULL,
	[DeliveryService] [bigint] NOT NULL,
	[Amount] [bigint] NULL,
	[DateExpected] [datetime] NULL,
	[DateDeliviered] [datetime] NULL,
 CONSTRAINT [PK_DeliveryRequest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryService]    Script Date: 24.10.2023 3:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryService](
	[id] [bigint] NOT NULL,
	[PricePerUnit] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DeliveryService] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kiosk]    Script Date: 24.10.2023 3:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiosk](
	[id] [bigint] NOT NULL,
	[Name] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
 CONSTRAINT [PK_Kiosk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KioskStock]    Script Date: 24.10.2023 3:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KioskStock](
	[id] [bigint] NOT NULL,
	[Product] [bigint] NOT NULL,
	[Kiosk] [bigint] NOT NULL,
	[Amount] [bigint] NOT NULL,
 CONSTRAINT [PK_KioskStock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24.10.2023 3:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [bigint] NOT NULL,
	[Category] [bigint] NOT NULL,
	[Price] [bigint] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 24.10.2023 3:25:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [bigint] NOT NULL,
	[Name] [varchar](max) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeliveryRequest]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryRequest_DeliveryService] FOREIGN KEY([DeliveryService])
REFERENCES [dbo].[DeliveryService] ([id])
GO
ALTER TABLE [dbo].[DeliveryRequest] CHECK CONSTRAINT [FK_DeliveryRequest_DeliveryService]
GO
ALTER TABLE [dbo].[DeliveryRequest]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryRequest_Kiosk] FOREIGN KEY([Kiosk])
REFERENCES [dbo].[Kiosk] ([id])
GO
ALTER TABLE [dbo].[DeliveryRequest] CHECK CONSTRAINT [FK_DeliveryRequest_Kiosk]
GO
ALTER TABLE [dbo].[DeliveryRequest]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryRequest_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[DeliveryRequest] CHECK CONSTRAINT [FK_DeliveryRequest_Product]
GO
ALTER TABLE [dbo].[KioskStock]  WITH CHECK ADD  CONSTRAINT [FK_KioskStock_Kiosk] FOREIGN KEY([Kiosk])
REFERENCES [dbo].[Kiosk] ([id])
GO
ALTER TABLE [dbo].[KioskStock] CHECK CONSTRAINT [FK_KioskStock_Kiosk]
GO
ALTER TABLE [dbo].[KioskStock]  WITH CHECK ADD  CONSTRAINT [FK_KioskStock_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[KioskStock] CHECK CONSTRAINT [FK_KioskStock_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([Category])
REFERENCES [dbo].[ProductCategory] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
USE [master]
GO
ALTER DATABASE [Retail3NF] SET  READ_WRITE 
GO

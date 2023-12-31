USE [master]
GO
/****** Object:  Database [RetailDataVault]    Script Date: 24.10.2023 4:16:50 ******/
CREATE DATABASE [RetailDataVault]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RetailDataVault', FILENAME = N'D:\SQLServers\SQLServerRoot\MSSQL16.MSSQLSERVER\MSSQL\DATA\RetailDataVault.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RetailDataVault_log', FILENAME = N'D:\SQLServers\SQLServerRoot\MSSQL16.MSSQLSERVER\MSSQL\DATA\RetailDataVault_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RetailDataVault] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RetailDataVault].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RetailDataVault] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RetailDataVault] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RetailDataVault] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RetailDataVault] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RetailDataVault] SET ARITHABORT OFF 
GO
ALTER DATABASE [RetailDataVault] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RetailDataVault] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RetailDataVault] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RetailDataVault] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RetailDataVault] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RetailDataVault] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RetailDataVault] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RetailDataVault] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RetailDataVault] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RetailDataVault] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RetailDataVault] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RetailDataVault] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RetailDataVault] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RetailDataVault] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RetailDataVault] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RetailDataVault] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RetailDataVault] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RetailDataVault] SET RECOVERY FULL 
GO
ALTER DATABASE [RetailDataVault] SET  MULTI_USER 
GO
ALTER DATABASE [RetailDataVault] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RetailDataVault] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RetailDataVault] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RetailDataVault] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RetailDataVault] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RetailDataVault] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RetailDataVault', N'ON'
GO
ALTER DATABASE [RetailDataVault] SET QUERY_STORE = ON
GO
ALTER DATABASE [RetailDataVault] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RetailDataVault]
GO
/****** Object:  Table [dbo].[hub]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hub](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[code] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_hub] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hub_delivery_request]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hub_delivery_request](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[code] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_hub_delivery_request] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hub_delivery_service]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hub_delivery_service](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[code] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_hub_delivery_service] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hub_kiosk]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hub_kiosk](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[code] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_hub_kiosk] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hub_product]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hub_product](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[code] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_hub_product] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hub_product_cat]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hub_product_cat](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[code] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_hub_product_cat] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lnk_delivery_request_delivery_service]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lnk_delivery_request_delivery_service](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[delivery_service_hash_key] [binary](50) NOT NULL,
	[delivery_request_hash_key] [binary](50) NOT NULL,
 CONSTRAINT [PK_lnk_delivery_request_delivery_service] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lnk_delivery_request_kiosk]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lnk_delivery_request_kiosk](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[kiosk_hash_key] [binary](50) NOT NULL,
	[delivery_request_hash_key] [binary](50) NOT NULL,
 CONSTRAINT [PK_lnk_delivery_request_kiosk] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lnk_delivery_request_product]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lnk_delivery_request_product](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[product_hash_key] [binary](50) NOT NULL,
	[delivery_request_hash_key] [binary](50) NOT NULL,
 CONSTRAINT [PK_lnk_delivery_request_product] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lnk_prod_prod_cat]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lnk_prod_prod_cat](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[product_hash_key] [binary](50) NOT NULL,
	[product_cat_hash_key] [binary](50) NOT NULL,
 CONSTRAINT [PK_lnk_prod_prod_cat] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lnk_product_kiosk]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lnk_product_kiosk](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[kiosk_hash_key] [binary](50) NOT NULL,
	[product_hash_key] [binary](50) NOT NULL,
 CONSTRAINT [PK_lnk_product_kiosk] PRIMARY KEY CLUSTERED 
(
	[hash_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sat_deliery_request]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sat_deliery_request](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[Amount] [bigint] NOT NULL,
	[DateExpected] [datetime] NOT NULL,
	[DateDelivered] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sat_delivery_service]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sat_delivery_service](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PricePerUnit] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sat_kiosk]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sat_kiosk](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sat_product]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sat_product](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Price] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sat_product_cat]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sat_product_cat](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sat_product_kiosk]    Script Date: 24.10.2023 4:16:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sat_product_kiosk](
	[hash_key] [binary](50) NOT NULL,
	[load_date] [timestamp] NOT NULL,
	[record_source] [varchar](50) NOT NULL,
	[Amount] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[lnk_delivery_request_delivery_service]  WITH CHECK ADD  CONSTRAINT [FK_lnk_delivery_request_delivery_service_hub_delivery_request] FOREIGN KEY([delivery_request_hash_key])
REFERENCES [dbo].[hub_delivery_request] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_delivery_request_delivery_service] CHECK CONSTRAINT [FK_lnk_delivery_request_delivery_service_hub_delivery_request]
GO
ALTER TABLE [dbo].[lnk_delivery_request_delivery_service]  WITH CHECK ADD  CONSTRAINT [FK_lnk_delivery_request_delivery_service_hub_delivery_service] FOREIGN KEY([delivery_service_hash_key])
REFERENCES [dbo].[hub_delivery_service] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_delivery_request_delivery_service] CHECK CONSTRAINT [FK_lnk_delivery_request_delivery_service_hub_delivery_service]
GO
ALTER TABLE [dbo].[lnk_delivery_request_kiosk]  WITH CHECK ADD  CONSTRAINT [FK_lnk_delivery_request_kiosk_hub_delivery_request] FOREIGN KEY([delivery_request_hash_key])
REFERENCES [dbo].[hub_delivery_request] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_delivery_request_kiosk] CHECK CONSTRAINT [FK_lnk_delivery_request_kiosk_hub_delivery_request]
GO
ALTER TABLE [dbo].[lnk_delivery_request_kiosk]  WITH CHECK ADD  CONSTRAINT [FK_lnk_delivery_request_kiosk_hub_kiosk] FOREIGN KEY([kiosk_hash_key])
REFERENCES [dbo].[hub_kiosk] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_delivery_request_kiosk] CHECK CONSTRAINT [FK_lnk_delivery_request_kiosk_hub_kiosk]
GO
ALTER TABLE [dbo].[lnk_delivery_request_product]  WITH CHECK ADD  CONSTRAINT [FK_lnk_delivery_request_product_hub_delivery_request] FOREIGN KEY([delivery_request_hash_key])
REFERENCES [dbo].[hub_delivery_request] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_delivery_request_product] CHECK CONSTRAINT [FK_lnk_delivery_request_product_hub_delivery_request]
GO
ALTER TABLE [dbo].[lnk_delivery_request_product]  WITH CHECK ADD  CONSTRAINT [FK_lnk_delivery_request_product_hub_product] FOREIGN KEY([product_hash_key])
REFERENCES [dbo].[hub_product] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_delivery_request_product] CHECK CONSTRAINT [FK_lnk_delivery_request_product_hub_product]
GO
ALTER TABLE [dbo].[lnk_prod_prod_cat]  WITH CHECK ADD  CONSTRAINT [FK_lnk_prod_prod_cat_hub_product] FOREIGN KEY([product_hash_key])
REFERENCES [dbo].[hub_product] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_prod_prod_cat] CHECK CONSTRAINT [FK_lnk_prod_prod_cat_hub_product]
GO
ALTER TABLE [dbo].[lnk_prod_prod_cat]  WITH CHECK ADD  CONSTRAINT [FK_lnk_prod_prod_cat_hub_product_cat] FOREIGN KEY([product_cat_hash_key])
REFERENCES [dbo].[hub_product_cat] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_prod_prod_cat] CHECK CONSTRAINT [FK_lnk_prod_prod_cat_hub_product_cat]
GO
ALTER TABLE [dbo].[lnk_product_kiosk]  WITH CHECK ADD  CONSTRAINT [FK_lnk_product_kiosk_hub_kiosk] FOREIGN KEY([kiosk_hash_key])
REFERENCES [dbo].[hub_kiosk] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_product_kiosk] CHECK CONSTRAINT [FK_lnk_product_kiosk_hub_kiosk]
GO
ALTER TABLE [dbo].[lnk_product_kiosk]  WITH CHECK ADD  CONSTRAINT [FK_lnk_product_kiosk_hub_product] FOREIGN KEY([product_hash_key])
REFERENCES [dbo].[hub_product] ([hash_key])
GO
ALTER TABLE [dbo].[lnk_product_kiosk] CHECK CONSTRAINT [FK_lnk_product_kiosk_hub_product]
GO
ALTER TABLE [dbo].[sat_deliery_request]  WITH CHECK ADD  CONSTRAINT [FK_sat_deliery_request_hub_delivery_request] FOREIGN KEY([hash_key])
REFERENCES [dbo].[hub_delivery_request] ([hash_key])
GO
ALTER TABLE [dbo].[sat_deliery_request] CHECK CONSTRAINT [FK_sat_deliery_request_hub_delivery_request]
GO
ALTER TABLE [dbo].[sat_delivery_service]  WITH CHECK ADD  CONSTRAINT [FK_sat_delivery_service_hub_delivery_service] FOREIGN KEY([hash_key])
REFERENCES [dbo].[hub_delivery_service] ([hash_key])
GO
ALTER TABLE [dbo].[sat_delivery_service] CHECK CONSTRAINT [FK_sat_delivery_service_hub_delivery_service]
GO
ALTER TABLE [dbo].[sat_kiosk]  WITH CHECK ADD  CONSTRAINT [FK_sat_kiosk_hub_kiosk] FOREIGN KEY([hash_key])
REFERENCES [dbo].[hub_kiosk] ([hash_key])
GO
ALTER TABLE [dbo].[sat_kiosk] CHECK CONSTRAINT [FK_sat_kiosk_hub_kiosk]
GO
ALTER TABLE [dbo].[sat_product]  WITH CHECK ADD  CONSTRAINT [FK_sat_product_hub_product] FOREIGN KEY([hash_key])
REFERENCES [dbo].[hub_product] ([hash_key])
GO
ALTER TABLE [dbo].[sat_product] CHECK CONSTRAINT [FK_sat_product_hub_product]
GO
ALTER TABLE [dbo].[sat_product_cat]  WITH CHECK ADD  CONSTRAINT [FK_sat_product_cat_hub_product_cat] FOREIGN KEY([hash_key])
REFERENCES [dbo].[hub_product_cat] ([hash_key])
GO
ALTER TABLE [dbo].[sat_product_cat] CHECK CONSTRAINT [FK_sat_product_cat_hub_product_cat]
GO
ALTER TABLE [dbo].[sat_product_kiosk]  WITH CHECK ADD  CONSTRAINT [FK_sat_product_kiosk_lnk_product_kiosk] FOREIGN KEY([hash_key])
REFERENCES [dbo].[lnk_product_kiosk] ([hash_key])
GO
ALTER TABLE [dbo].[sat_product_kiosk] CHECK CONSTRAINT [FK_sat_product_kiosk_lnk_product_kiosk]
GO
USE [master]
GO
ALTER DATABASE [RetailDataVault] SET  READ_WRITE 
GO

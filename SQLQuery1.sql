USE [master]
GO
/****** Object:  Database [DataBaseEx]    Script Date: 9/28/2026 9:15:35 AM ******/
CREATE DATABASE [DataBaseEx]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UberSyDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\UberSyDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UberSyDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\UberSyDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DataBaseEx] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataBaseEx].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataBaseEx] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DataBaseEx] SET ANSI_NULLS ON 
GO
ALTER DATABASE [DataBaseEx] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DataBaseEx] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DataBaseEx] SET ARITHABORT OFF 
GO
ALTER DATABASE [DataBaseEx] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DataBaseEx] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DataBaseEx] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DataBaseEx] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DataBaseEx] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DataBaseEx] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DataBaseEx] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DataBaseEx] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [DataBaseEx] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DataBaseEx] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DataBaseEx] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DataBaseEx] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DataBaseEx] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DataBaseEx] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DataBaseEx] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DataBaseEx] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DataBaseEx] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DataBaseEx] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DataBaseEx] SET  MULTI_USER 
GO
ALTER DATABASE [DataBaseEx] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DataBaseEx] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DataBaseEx] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DataBaseEx] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DataBaseEx] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DataBaseEx] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'UberSyDb', N'ON'
GO
ALTER DATABASE [DataBaseEx] SET QUERY_STORE = ON
GO
ALTER DATABASE [DataBaseEx] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DataBaseEx]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
        [MigrationId] [nvarchar](150) NOT NULL,
        [ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
        [MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
        [Id] [int] IDENTITY(1,1) NOT NULL,
        [RoleId] [uniqueidentifier] NOT NULL,
        [ClaimType] [nvarchar](max) NULL,
        [ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
        [Id] [uniqueidentifier] NOT NULL,
        [Name] [nvarchar](256) NULL,
        [NormalizedName] [nvarchar](256) NULL,
        [ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
        [Id] [int] IDENTITY(1,1) NOT NULL,
        [UserId] [uniqueidentifier] NOT NULL,
        [ClaimType] [nvarchar](max) NULL,
        [ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
        [LoginProvider] [nvarchar](450) NOT NULL,
        [ProviderKey] [nvarchar](450) NOT NULL,
        [ProviderDisplayName] [nvarchar](max) NULL,
        [UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
        [LoginProvider] ASC,
        [ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
        [UserId] [uniqueidentifier] NOT NULL,
        [RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
        [UserId] ASC,
        [RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
        [Id] [uniqueidentifier] NOT NULL,
        [NameAr] [nvarchar](max) NOT NULL,
        [NameEn] [nvarchar](max) NOT NULL,
        [BannedUntil] [datetime2](7) NULL,
        [UserName] [nvarchar](256) NULL,
        [NormalizedUserName] [nvarchar](256) NULL,
        [Email] [nvarchar](256) NULL,
        [NormalizedEmail] [nvarchar](256) NULL,
        [EmailConfirmed] [bit] NOT NULL,
        [PasswordHash] [nvarchar](max) NULL,
        [SecurityStamp] [nvarchar](max) NULL,
        [ConcurrencyStamp] [nvarchar](max) NULL,
        [PhoneNumber] [nvarchar](max) NULL,
        [PhoneNumberConfirmed] [bit] NOT NULL,
        [TwoFactorEnabled] [bit] NOT NULL,
        [LockoutEnd] [datetimeoffset](7) NULL,
        [LockoutEnabled] [bit] NOT NULL,
        [AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
        [UserId] [uniqueidentifier] NOT NULL,
        [LoginProvider] [nvarchar](450) NOT NULL,
        [Name] [nvarchar](450) NOT NULL,
        [Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
        [UserId] ASC,
        [LoginProvider] ASC,
        [Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefreshTokens]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshTokens](
        [Id] [uniqueidentifier] NOT NULL,
        [Token] [nvarchar](200) NULL,
        [UserId] [uniqueidentifier] NOT NULL,
        [ExpiresOnUtc] [datetimeoffset](7) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RefreshTokens] PRIMARY KEY NONCLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbAddOn]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAddOn](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [NameAr] [nvarchar](100) NOT NULL,
        [NameEn] [nvarchar](100) NOT NULL,
        [Price] [decimal](10, 2) NOT NULL,
        [IsActive] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbAddOn__3214EC070FA8160A] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbAddress]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAddress](
        [Id] [uniqueidentifier] NOT NULL,
        [UserId] [uniqueidentifier] NOT NULL,
        [Street] [nvarchar](100) NOT NULL,
        [City] [nvarchar](100) NOT NULL,
        [Boundary] [geography] NOT NULL,
        [Label] [nvarchar](100) NULL,
        [Floor] [nvarchar](100) NULL,
        [Phone] [nvarchar](20) NULL,
        [IsDefault] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbAddres__3214EC07BCC06044] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCategory]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCategory](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [PrinterId] [uniqueidentifier] NULL,
        [NameAr] [nvarchar](100) NOT NULL,
        [NameEn] [nvarchar](100) NOT NULL,
        [IsActive] [bit] NOT NULL,
        [SortOrder] [tinyint] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbCatego__3214EC07EC94C04F] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbComplaint]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbComplaint](
        [Id] [uniqueidentifier] NOT NULL,
        [UserId] [uniqueidentifier] NOT NULL,
        [ServiceRequestId] [uniqueidentifier] NULL,
        [Subject] [nvarchar](200) NOT NULL,
        [Message] [nvarchar](2000) NOT NULL,
        [Status] [tinyint] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbCompla__3214EC07140EB01E] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbComplaintMessage]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbComplaintMessage](
        [Id] [uniqueidentifier] NOT NULL,
        [ComplaintId] [uniqueidentifier] NOT NULL,
        [SenderUserId] [uniqueidentifier] NOT NULL,
        [Message] [nvarchar](2000) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbCompla__3214EC075DB39A21] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDeliveryPricingRule]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDeliveryPricingRule](
        [Id] [uniqueidentifier] NOT NULL,
        [VehicleType] [tinyint] NOT NULL,
        [ServiceTier] [tinyint] NOT NULL,
        [CarType] [tinyint] NULL,
        [CustomerRatePerKm] [decimal](10, 2) NOT NULL,
        [DriverRatePerKm] [decimal](10, 2) NOT NULL,
        [DriverRatePerOrder] [decimal](10, 2) NULL,
        [MaxDistanceKm] [decimal](6, 2) NULL,
        [StartHour] [time](7) NULL,
        [EndHour] [time](7) NULL,
        [IsActive] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbDelive__3214EC0737513A98] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDiscount]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDiscount](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NULL,
        [Code] [nvarchar](20) NULL,
        [Type] [tinyint] NOT NULL,
        [Value] [decimal](10, 2) NOT NULL,
        [Scope] [tinyint] NOT NULL,
        [MinOrderAmount] [decimal](10, 2) NULL,
        [MaxUsageCount] [int] NULL,
        [MaxUsagePerCustomer] [tinyint] NULL,
        [StartDate] [datetime2](7) NOT NULL,
        [EndDate] [datetime2](7) NOT NULL,
        [IsActive] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbDiscou__3214EC07F5023E34] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDiscountItem]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDiscountItem](
        [DiscountId] [uniqueidentifier] NOT NULL,
        [ItemId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TbDiscountItem] PRIMARY KEY CLUSTERED 
(
        [DiscountId] ASC,
        [ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDiscountUsage]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDiscountUsage](
        [Id] [uniqueidentifier] NOT NULL,
        [DiscountId] [uniqueidentifier] NOT NULL,
        [CustomerId] [uniqueidentifier] NOT NULL,
        [ServiceRequestId] [uniqueidentifier] NOT NULL,
        [UsedAt] [datetime2](7) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbDiscou__3214EC07A1000626] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDriver]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDriver](
        [Id] [uniqueidentifier] NOT NULL,
        [UserId] [uniqueidentifier] NOT NULL,
        [VehicleType] [tinyint] NOT NULL,
        [ServiceTier] [tinyint] NOT NULL,
        [CarType] [tinyint] NULL,
        [NationalId] [nvarchar](20) NOT NULL,
        [PhotoUrl] [nvarchar](1000) NULL,
        [LicenseNumber] [nvarchar](50) NULL,
        [PlateNumber] [nvarchar](20) NULL,
        [Model] [nvarchar](100) NULL,
        [Color] [nvarchar](100) NULL,
        [Status] [tinyint] NOT NULL,
        [IsApproved] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbDriver__3214EC0703EA4F36] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDriverLocation]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDriverLocation](
        [Id] [uniqueidentifier] NOT NULL,
        [DriverId] [uniqueidentifier] NOT NULL,
        [Boundary] [geography] NOT NULL,
        [UpdatedAt] [datetime2](7) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbDriver__3214EC079E4D59BF] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDriverWallet]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDriverWallet](
        [Id] [uniqueidentifier] NOT NULL,
        [DriverId] [uniqueidentifier] NOT NULL,
        [Balance] [decimal](10, 2) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbDriver__3214EC07F451DB98] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDriverWalletTransaction]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDriverWalletTransaction](
        [Id] [uniqueidentifier] NOT NULL,
        [DriverWalletId] [uniqueidentifier] NOT NULL,
        [ServiceRequestId] [uniqueidentifier] NULL,
        [ProcessedByUserId] [uniqueidentifier] NULL,
        [TransactionId] [int] IDENTITY(1,1) NOT NULL,
        [Amount] [decimal](12, 2) NOT NULL,
        [Type] [tinyint] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbDriver__3214EC079D1AF900] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbFoodOrder]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbFoodOrder](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [AddressId] [uniqueidentifier] NOT NULL,
        [DriverId] [uniqueidentifier] NULL,
        [DiscountId] [uniqueidentifier] NULL,
        [DiscountAmount] [decimal](10, 2) NOT NULL,
        [DeliveryFee] [decimal](10, 2) NOT NULL,
        [DriverEarning] [decimal](10, 2) NOT NULL,
        [PlatformCommissionFromRestaurant] [decimal](10, 2) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbFoodOr__3214EC0715E2F3EE] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbItem]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbItem](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [CategoryId] [uniqueidentifier] NOT NULL,
        [NameAr] [nvarchar](100) NOT NULL,
        [NameEn] [nvarchar](100) NOT NULL,
        [DescriptionAr] [nvarchar](1000) NOT NULL,
        [DescriptionEn] [nvarchar](1000) NOT NULL,
        [Price] [decimal](10, 2) NOT NULL,
        [ImageUrl] [nvarchar](1000) NOT NULL,
        [Calories] [int] NULL,
        [IsActive] [bit] NOT NULL,
        [SortOrder] [tinyint] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbItem__3214EC0723E01AA4] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbItemAddOn]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbItemAddOn](
        [ItemId] [uniqueidentifier] NOT NULL,
        [AddOnId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TbItemAddOn] PRIMARY KEY CLUSTERED 
(
        [ItemId] ASC,
        [AddOnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbOrderItem]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbOrderItem](
        [Id] [uniqueidentifier] NOT NULL,
        [FoodOrderId] [uniqueidentifier] NOT NULL,
        [ItemId] [uniqueidentifier] NOT NULL,
        [Quantity] [int] NOT NULL,
        [UnitPrice] [decimal](10, 2) NOT NULL,
        [Note] [nvarchar](100) NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbOrderI__3214EC075C0837FA] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbOrderItemAddOn]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbOrderItemAddOn](
        [Id] [uniqueidentifier] NOT NULL,
        [OrderItemId] [uniqueidentifier] NOT NULL,
        [AddOnId] [uniqueidentifier] NOT NULL,
        [Price] [decimal](10, 2) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbOrderI__3214EC07C054362B] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPayment]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPayment](
        [Id] [uniqueidentifier] NOT NULL,
        [ServiceRequestId] [uniqueidentifier] NOT NULL,
        [Amount] [decimal](12, 2) NOT NULL,
        [Method] [tinyint] NOT NULL,
        [TransactionId] [nvarchar](100) NULL,
        [Status] [tinyint] NOT NULL,
        [PaidAt] [datetimeoffset](7) NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbPaymen__3214EC0790777B2D] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPrinter]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPrinter](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [Type] [tinyint] NOT NULL,
        [Name] [nvarchar](100) NULL,
        [ConnectionInfo] [nvarchar](1000) NOT NULL,
        [IsActive] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbPrinte__3214EC071CD9E703] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbRestaurant]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbRestaurant](
        [Id] [uniqueidentifier] NOT NULL,
        [OwnerId] [uniqueidentifier] NOT NULL,
        [NameAr] [nvarchar](100) NOT NULL,
        [NameEn] [nvarchar](100) NOT NULL,
        [DescriptionAr] [nvarchar](1000) NULL,
        [DescriptionEn] [nvarchar](1000) NULL,
        [Phone] [nvarchar](20) NOT NULL,
        [Email] [nvarchar](100) NULL,
        [LogoUrl] [nvarchar](1000) NULL,
        [CoverUrl] [nvarchar](1000) NULL,
        [CommissionRate] [decimal](10, 2) NOT NULL,
        [TaxRate] [decimal](10, 2) NOT NULL,
        [OpeningTime] [time](7) NOT NULL,
        [ClosingTime] [time](7) NOT NULL,
        [MinOrderAmount] [decimal](10, 2) NOT NULL,
        [MaxOrderAmount] [decimal](10, 2) NOT NULL,
        [IsOpenNow] [bit] NOT NULL,
        [Boundary] [geography] NOT NULL,
        [Rating] [decimal](3, 2) NOT NULL,
        [IsApproved] [bit] NOT NULL,
        [AcceptReservation] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbRestau__3214EC071BFEDFB1] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbRestaurantImage]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbRestaurantImage](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [ImageUrl] [nvarchar](1000) NOT NULL,
        [SortOrder] [tinyint] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbRestau__3214EC0721745D85] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbRestaurantTag]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbRestaurantTag](
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [TagId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TbRestaurantTag] PRIMARY KEY CLUSTERED 
(
        [RestaurantId] ASC,
        [TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbReview]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbReview](
        [Id] [uniqueidentifier] NOT NULL,
        [CustomerId] [uniqueidentifier] NOT NULL,
        [ServiceRequestId] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NULL,
        [DriverId] [uniqueidentifier] NULL,
        [Rating] [tinyint] NOT NULL,
        [Note] [nvarchar](1000) NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbReview__3214EC079BD3F549] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbRideRequest]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbRideRequest](
        [Id] [uniqueidentifier] NOT NULL,
        [DriverId] [uniqueidentifier] NULL,
        [RequestedVehicleType] [tinyint] NOT NULL,
        [RequestedServiceTier] [tinyint] NOT NULL,
        [RequestedCarType] [tinyint] NULL,
        [ReceiverName] [nvarchar](100) NULL,
        [ReceiverPhone] [nvarchar](20) NULL,
        [PickupBoundary] [geography] NOT NULL,
        [DropoffBoundary] [geography] NOT NULL,
        [DistanceKm] [decimal](6, 2) NOT NULL,
        [DeliveryFee] [decimal](10, 2) NOT NULL,
        [DriverEarning] [decimal](10, 2) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbRideRe__3214EC07B4A5C518] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbServiceRequest]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbServiceRequest](
        [Id] [uniqueidentifier] NOT NULL,
        [CustomerId] [uniqueidentifier] NOT NULL,
        [ServiceType] [tinyint] NOT NULL,
        [TrackingNumber] [int] IDENTITY(1,1) NOT NULL,
        [Status] [tinyint] NOT NULL,
        [TotalAmount] [decimal](10, 2) NOT NULL,
        [CancellationReason] [nvarchar](100) NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbServic__3214EC07831A20B8] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbServiceRequestHistory]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbServiceRequestHistory](
        [Id] [uniqueidentifier] NOT NULL,
        [ServiceRequestId] [uniqueidentifier] NOT NULL,
        [Status] [tinyint] NOT NULL,
        [Note] [nvarchar](500) NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbServic__3214EC07642341B0] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbServiceRequestOffer]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbServiceRequestOffer](
        [Id] [uniqueidentifier] NOT NULL,
        [ServiceRequestId] [uniqueidentifier] NOT NULL,
        [DriverId] [uniqueidentifier] NOT NULL,
        [Status] [tinyint] NOT NULL,
        [SentAt] [datetimeoffset](7) NOT NULL,
        [RespondedAt] [datetimeoffset](7) NULL,
        [IsDeleted] [bit] NOT NULL,
        [CreatedAtUtc] [datetimeoffset](7) NOT NULL,
        [CreatedBy] [uniqueidentifier] NULL,
        [LastModifiedUtc] [datetimeoffset](7) NOT NULL,
        [LastModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK__TbServic__3214EC07D247AFFA] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbServiceZone]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbServiceZone](
        [Id] [uniqueidentifier] NOT NULL,
        [NameAr] [nvarchar](100) NOT NULL,
        [NameEn] [nvarchar](100) NOT NULL,
        [Boundary] [geography] NOT NULL,
        [City] [nvarchar](100) NOT NULL,
        [IsActive] [bit] NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbServic__3214EC078865692F] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTableReservation]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTableReservation](
        [Id] [uniqueidentifier] NOT NULL,
        [RestaurantId] [uniqueidentifier] NOT NULL,
        [ReservationTime] [datetime2](7) NOT NULL,
        [PartySize] [int] NOT NULL,
        [DepositAmount] [decimal](10, 2) NOT NULL,
        [Note] [nvarchar](1000) NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbTableR__3214EC07DB205D72] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTag]    Script Date: 9/28/2026 9:15:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTag](
        [Id] [uniqueidentifier] NOT NULL,
        [NameAr] [nvarchar](100) NOT NULL,
        [NameEn] [nvarchar](100) NOT NULL,
        [IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__TbTag__3214EC072088A8E9] PRIMARY KEY CLUSTERED 
(
        [Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
        [RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
        [NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
        [UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
        [UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
        [RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
        [NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
        [NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RefreshTokens_Token]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_RefreshTokens_Token] ON [dbo].[RefreshTokens]
(
        [Token] ASC
)
WHERE ([Token] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbAddOn_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbAddOn_RestaurantId] ON [dbo].[TbAddOn]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbAddress_UserId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbAddress_UserId] ON [dbo].[TbAddress]
(
        [UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbCategory_PrinterId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbCategory_PrinterId] ON [dbo].[TbCategory]
(
        [PrinterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbCategory_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbCategory_RestaurantId] ON [dbo].[TbCategory]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbComplaint_ServiceRequestId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbComplaint_ServiceRequestId] ON [dbo].[TbComplaint]
(
        [ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbComplaintMessage_ComplaintId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbComplaintMessage_ComplaintId] ON [dbo].[TbComplaintMessage]
(
        [ComplaintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbDiscount_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbDiscount_RestaurantId] ON [dbo].[TbDiscount]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_TbDiscount_Code]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_TbDiscount_Code] ON [dbo].[TbDiscount]
(
        [Code] ASC
)
WHERE ([Code] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbDiscountItem_ItemId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbDiscountItem_ItemId] ON [dbo].[TbDiscountItem]
(
        [ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbDiscountUsage_DiscountId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbDiscountUsage_DiscountId] ON [dbo].[TbDiscountUsage]
(
        [DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbDiscountUsage_ServiceRequestId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbDiscountUsage_ServiceRequestId] ON [dbo].[TbDiscountUsage]
(
        [ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_TbDriver_UserId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_TbDriver_UserId] ON [dbo].[TbDriver]
(
        [UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_TbDriverLocation_DriverId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_TbDriverLocation_DriverId] ON [dbo].[TbDriverLocation]
(
        [DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_TbDriverWallet_DriverId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_TbDriverWallet_DriverId] ON [dbo].[TbDriverWallet]
(
        [DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbDriverWalletTransaction_DriverWalletId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbDriverWalletTransaction_DriverWalletId] ON [dbo].[TbDriverWalletTransaction]
(
        [DriverWalletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbDriverWalletTransaction_ServiceRequestId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbDriverWalletTransaction_ServiceRequestId] ON [dbo].[TbDriverWalletTransaction]
(
        [ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbFoodOrder_AddressId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbFoodOrder_AddressId] ON [dbo].[TbFoodOrder]
(
        [AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbFoodOrder_DiscountId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbFoodOrder_DiscountId] ON [dbo].[TbFoodOrder]
(
        [DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbFoodOrder_DriverId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbFoodOrder_DriverId] ON [dbo].[TbFoodOrder]
(
        [DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbFoodOrder_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbFoodOrder_RestaurantId] ON [dbo].[TbFoodOrder]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbItem_CategoryId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbItem_CategoryId] ON [dbo].[TbItem]
(
        [CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbItem_Restaurant_Active]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbItem_Restaurant_Active] ON [dbo].[TbItem]
(
        [RestaurantId] ASC,
        [IsActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbItem_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbItem_RestaurantId] ON [dbo].[TbItem]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbItemAddOn_AddOnId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbItemAddOn_AddOnId] ON [dbo].[TbItemAddOn]
(
        [AddOnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbOrderItem_FoodOrderId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbOrderItem_FoodOrderId] ON [dbo].[TbOrderItem]
(
        [FoodOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbOrderItem_ItemId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbOrderItem_ItemId] ON [dbo].[TbOrderItem]
(
        [ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbOrderItemAddOn_AddOnId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbOrderItemAddOn_AddOnId] ON [dbo].[TbOrderItemAddOn]
(
        [AddOnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbOrderItemAddOn_OrderItemId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbOrderItemAddOn_OrderItemId] ON [dbo].[TbOrderItemAddOn]
(
        [OrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbPayment_ServiceRequestId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbPayment_ServiceRequestId] ON [dbo].[TbPayment]
(
        [ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbPrinter_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbPrinter_RestaurantId] ON [dbo].[TbPrinter]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbRestaurant_OwnerId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbRestaurant_OwnerId] ON [dbo].[TbRestaurant]
(
        [OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbRestaurantImage_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbRestaurantImage_RestaurantId] ON [dbo].[TbRestaurantImage]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbRestaurantTag_TagId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbRestaurantTag_TagId] ON [dbo].[TbRestaurantTag]
(
        [TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbReview_DriverId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbReview_DriverId] ON [dbo].[TbReview]
(
        [DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbReview_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbReview_RestaurantId] ON [dbo].[TbReview]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbReview_ServiceRequestId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbReview_ServiceRequestId] ON [dbo].[TbReview]
(
        [ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbRideRequest_DriverId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbRideRequest_DriverId] ON [dbo].[TbRideRequest]
(
        [DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbServiceRequest_Customer_Status_CreatedAt]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbServiceRequest_Customer_Status_CreatedAt] ON [dbo].[TbServiceRequest]
(
        [CustomerId] ASC,
        [Status] ASC,
        [CreatedAtUtc] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbServiceRequestHistory_ServiceRequestId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbServiceRequestHistory_ServiceRequestId] ON [dbo].[TbServiceRequestHistory]
(
        [ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbServiceRequestOffer_DriverId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbServiceRequestOffer_DriverId] ON [dbo].[TbServiceRequestOffer]
(
        [DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbServiceRequestOffer_ServiceRequestId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbServiceRequestOffer_ServiceRequestId] ON [dbo].[TbServiceRequestOffer]
(
        [ServiceRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbTableReservation_RestaurantId]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE NONCLUSTERED INDEX [IX_TbTableReservation_RestaurantId] ON [dbo].[TbTableReservation]
(
        [RestaurantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TbAddOn] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[TbCategory] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[TbComplaint] ADD  DEFAULT (sysutcdatetime()) FOR [CreatedAtUtc]
GO
ALTER TABLE [dbo].[TbComplaintMessage] ADD  DEFAULT (sysutcdatetime()) FOR [CreatedAtUtc]
GO
ALTER TABLE [dbo].[TbDeliveryPricingRule] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[TbDiscount] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[TbDiscountUsage] ADD  DEFAULT (sysutcdatetime()) FOR [UsedAt]
GO
ALTER TABLE [dbo].[TbDriver] ADD  DEFAULT (CONVERT([tinyint],(1))) FOR [ServiceTier]
GO
ALTER TABLE [dbo].[TbDriver] ADD  DEFAULT (CONVERT([tinyint],(1))) FOR [Status]
GO
ALTER TABLE [dbo].[TbDriverLocation] ADD  DEFAULT (sysutcdatetime()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[TbDriverWallet] ADD  DEFAULT (sysutcdatetime()) FOR [CreatedAtUtc]
GO
ALTER TABLE [dbo].[TbDriverWalletTransaction] ADD  DEFAULT (sysutcdatetime()) FOR [CreatedAtUtc]
GO
ALTER TABLE [dbo].[TbItem] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[TbPayment] ADD  DEFAULT (sysutcdatetime()) FOR [CreatedAtUtc]
GO
ALTER TABLE [dbo].[TbPrinter] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[TbReview] ADD  DEFAULT (sysutcdatetime()) FOR [CreatedAtUtc]
GO
ALTER TABLE [dbo].[TbServiceRequestHistory] ADD  DEFAULT (sysutcdatetime()) FOR [CreatedAtUtc]
GO
ALTER TABLE [dbo].[TbServiceRequestOffer] ADD  DEFAULT (sysutcdatetime()) FOR [SentAt]
GO
ALTER TABLE [dbo].[TbServiceZone] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TbAddOn]  WITH CHECK ADD  CONSTRAINT [FK_TbAddOn_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbAddOn] CHECK CONSTRAINT [FK_TbAddOn_Restaurant]
GO
ALTER TABLE [dbo].[TbCategory]  WITH CHECK ADD  CONSTRAINT [FK_TbCategory_Printer] FOREIGN KEY([PrinterId])
REFERENCES [dbo].[TbPrinter] ([Id])
GO
ALTER TABLE [dbo].[TbCategory] CHECK CONSTRAINT [FK_TbCategory_Printer]
GO
ALTER TABLE [dbo].[TbCategory]  WITH CHECK ADD  CONSTRAINT [FK_TbCategory_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbCategory] CHECK CONSTRAINT [FK_TbCategory_Restaurant]
GO
ALTER TABLE [dbo].[TbComplaint]  WITH CHECK ADD  CONSTRAINT [FK_TbComplaint_ServiceRequest] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbComplaint] CHECK CONSTRAINT [FK_TbComplaint_ServiceRequest]
GO
ALTER TABLE [dbo].[TbComplaintMessage]  WITH CHECK ADD  CONSTRAINT [FK_TbComplaintMessage_Complaint] FOREIGN KEY([ComplaintId])
REFERENCES [dbo].[TbComplaint] ([Id])
GO
ALTER TABLE [dbo].[TbComplaintMessage] CHECK CONSTRAINT [FK_TbComplaintMessage_Complaint]
GO
ALTER TABLE [dbo].[TbDiscount]  WITH CHECK ADD  CONSTRAINT [FK_TbDiscount_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbDiscount] CHECK CONSTRAINT [FK_TbDiscount_Restaurant]
GO
ALTER TABLE [dbo].[TbDiscountItem]  WITH CHECK ADD  CONSTRAINT [FK_TbDiscountItem_Discount] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[TbDiscount] ([Id])
GO
ALTER TABLE [dbo].[TbDiscountItem] CHECK CONSTRAINT [FK_TbDiscountItem_Discount]
GO
ALTER TABLE [dbo].[TbDiscountItem]  WITH CHECK ADD  CONSTRAINT [FK_TbDiscountItem_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[TbItem] ([Id])
GO
ALTER TABLE [dbo].[TbDiscountItem] CHECK CONSTRAINT [FK_TbDiscountItem_Item]
GO
ALTER TABLE [dbo].[TbDiscountUsage]  WITH CHECK ADD  CONSTRAINT [FK_TbDiscountUsage_Discount] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[TbDiscount] ([Id])
GO
ALTER TABLE [dbo].[TbDiscountUsage] CHECK CONSTRAINT [FK_TbDiscountUsage_Discount]
GO
ALTER TABLE [dbo].[TbDiscountUsage]  WITH CHECK ADD  CONSTRAINT [FK_TbDiscountUsage_ServiceRequest] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbDiscountUsage] CHECK CONSTRAINT [FK_TbDiscountUsage_ServiceRequest]
GO
ALTER TABLE [dbo].[TbDriverLocation]  WITH CHECK ADD  CONSTRAINT [FK_TbDriverLocation_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[TbDriver] ([Id])
GO
ALTER TABLE [dbo].[TbDriverLocation] CHECK CONSTRAINT [FK_TbDriverLocation_Driver]
GO
ALTER TABLE [dbo].[TbDriverWallet]  WITH CHECK ADD  CONSTRAINT [FK_TbDriverWallet_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[TbDriver] ([Id])
GO
ALTER TABLE [dbo].[TbDriverWallet] CHECK CONSTRAINT [FK_TbDriverWallet_Driver]
GO
ALTER TABLE [dbo].[TbDriverWalletTransaction]  WITH CHECK ADD  CONSTRAINT [FK_TbDriverWalletTransaction_ServiceRequest] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbDriverWalletTransaction] CHECK CONSTRAINT [FK_TbDriverWalletTransaction_ServiceRequest]
GO
ALTER TABLE [dbo].[TbDriverWalletTransaction]  WITH CHECK ADD  CONSTRAINT [FK_TbDriverWalletTransaction_Wallet] FOREIGN KEY([DriverWalletId])
REFERENCES [dbo].[TbDriverWallet] ([Id])
GO
ALTER TABLE [dbo].[TbDriverWalletTransaction] CHECK CONSTRAINT [FK_TbDriverWalletTransaction_Wallet]
GO
ALTER TABLE [dbo].[TbFoodOrder]  WITH CHECK ADD  CONSTRAINT [FK_TbFoodOrder_Address] FOREIGN KEY([AddressId])
REFERENCES [dbo].[TbAddress] ([Id])
GO
ALTER TABLE [dbo].[TbFoodOrder] CHECK CONSTRAINT [FK_TbFoodOrder_Address]
GO
ALTER TABLE [dbo].[TbFoodOrder]  WITH CHECK ADD  CONSTRAINT [FK_TbFoodOrder_Discount] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[TbDiscount] ([Id])
GO
ALTER TABLE [dbo].[TbFoodOrder] CHECK CONSTRAINT [FK_TbFoodOrder_Discount]
GO
ALTER TABLE [dbo].[TbFoodOrder]  WITH CHECK ADD  CONSTRAINT [FK_TbFoodOrder_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[TbDriver] ([Id])
GO
ALTER TABLE [dbo].[TbFoodOrder] CHECK CONSTRAINT [FK_TbFoodOrder_Driver]
GO
ALTER TABLE [dbo].[TbFoodOrder]  WITH CHECK ADD  CONSTRAINT [FK_TbFoodOrder_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbFoodOrder] CHECK CONSTRAINT [FK_TbFoodOrder_Restaurant]
GO
ALTER TABLE [dbo].[TbFoodOrder]  WITH CHECK ADD  CONSTRAINT [FK_TbFoodOrder_ServiceRequest] FOREIGN KEY([Id])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbFoodOrder] CHECK CONSTRAINT [FK_TbFoodOrder_ServiceRequest]
GO
ALTER TABLE [dbo].[TbItem]  WITH CHECK ADD  CONSTRAINT [FK_TbItem_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[TbCategory] ([Id])
GO
ALTER TABLE [dbo].[TbItem] CHECK CONSTRAINT [FK_TbItem_Category]
GO
ALTER TABLE [dbo].[TbItem]  WITH CHECK ADD  CONSTRAINT [FK_TbItem_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbItem] CHECK CONSTRAINT [FK_TbItem_Restaurant]
GO
ALTER TABLE [dbo].[TbItemAddOn]  WITH CHECK ADD  CONSTRAINT [FK_TbItemAddOn_AddOn] FOREIGN KEY([AddOnId])
REFERENCES [dbo].[TbAddOn] ([Id])
GO
ALTER TABLE [dbo].[TbItemAddOn] CHECK CONSTRAINT [FK_TbItemAddOn_AddOn]
GO
ALTER TABLE [dbo].[TbItemAddOn]  WITH CHECK ADD  CONSTRAINT [FK_TbItemAddOn_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[TbItem] ([Id])
GO
ALTER TABLE [dbo].[TbItemAddOn] CHECK CONSTRAINT [FK_TbItemAddOn_Item]
GO
ALTER TABLE [dbo].[TbOrderItem]  WITH CHECK ADD  CONSTRAINT [FK_TbOrderItem_FoodOrder] FOREIGN KEY([FoodOrderId])
REFERENCES [dbo].[TbFoodOrder] ([Id])
GO
ALTER TABLE [dbo].[TbOrderItem] CHECK CONSTRAINT [FK_TbOrderItem_FoodOrder]
GO
ALTER TABLE [dbo].[TbOrderItem]  WITH CHECK ADD  CONSTRAINT [FK_TbOrderItem_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[TbItem] ([Id])
GO
ALTER TABLE [dbo].[TbOrderItem] CHECK CONSTRAINT [FK_TbOrderItem_Item]
GO
ALTER TABLE [dbo].[TbOrderItemAddOn]  WITH CHECK ADD  CONSTRAINT [FK_TbOrderItemAddOn_AddOn] FOREIGN KEY([AddOnId])
REFERENCES [dbo].[TbAddOn] ([Id])
GO
ALTER TABLE [dbo].[TbOrderItemAddOn] CHECK CONSTRAINT [FK_TbOrderItemAddOn_AddOn]
GO
ALTER TABLE [dbo].[TbOrderItemAddOn]  WITH CHECK ADD  CONSTRAINT [FK_TbOrderItemAddOn_OrderItem] FOREIGN KEY([OrderItemId])
REFERENCES [dbo].[TbOrderItem] ([Id])
GO
ALTER TABLE [dbo].[TbOrderItemAddOn] CHECK CONSTRAINT [FK_TbOrderItemAddOn_OrderItem]
GO
ALTER TABLE [dbo].[TbPayment]  WITH CHECK ADD  CONSTRAINT [FK_TbPayment_ServiceRequest] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbPayment] CHECK CONSTRAINT [FK_TbPayment_ServiceRequest]
GO
ALTER TABLE [dbo].[TbPrinter]  WITH CHECK ADD  CONSTRAINT [FK_TbPrinter_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbPrinter] CHECK CONSTRAINT [FK_TbPrinter_Restaurant]
GO
ALTER TABLE [dbo].[TbRestaurantImage]  WITH CHECK ADD  CONSTRAINT [FK_TbRestaurantImage_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbRestaurantImage] CHECK CONSTRAINT [FK_TbRestaurantImage_Restaurant]
GO
ALTER TABLE [dbo].[TbRestaurantTag]  WITH CHECK ADD  CONSTRAINT [FK_TbRestaurantTag_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbRestaurantTag] CHECK CONSTRAINT [FK_TbRestaurantTag_Restaurant]
GO
ALTER TABLE [dbo].[TbRestaurantTag]  WITH CHECK ADD  CONSTRAINT [FK_TbRestaurantTag_Tag] FOREIGN KEY([TagId])
REFERENCES [dbo].[TbTag] ([Id])
GO
ALTER TABLE [dbo].[TbRestaurantTag] CHECK CONSTRAINT [FK_TbRestaurantTag_Tag]
GO
ALTER TABLE [dbo].[TbReview]  WITH CHECK ADD  CONSTRAINT [FK_TbReview_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[TbDriver] ([Id])
GO
ALTER TABLE [dbo].[TbReview] CHECK CONSTRAINT [FK_TbReview_Driver]
GO
ALTER TABLE [dbo].[TbReview]  WITH CHECK ADD  CONSTRAINT [FK_TbReview_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbReview] CHECK CONSTRAINT [FK_TbReview_Restaurant]
GO
ALTER TABLE [dbo].[TbReview]  WITH CHECK ADD  CONSTRAINT [FK_TbReview_ServiceRequest] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbReview] CHECK CONSTRAINT [FK_TbReview_ServiceRequest]
GO
ALTER TABLE [dbo].[TbRideRequest]  WITH CHECK ADD  CONSTRAINT [FK_TbRideRequest_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[TbDriver] ([Id])
GO
ALTER TABLE [dbo].[TbRideRequest] CHECK CONSTRAINT [FK_TbRideRequest_Driver]
GO
ALTER TABLE [dbo].[TbRideRequest]  WITH CHECK ADD  CONSTRAINT [FK_TbRideRequest_ServiceRequest] FOREIGN KEY([Id])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbRideRequest] CHECK CONSTRAINT [FK_TbRideRequest_ServiceRequest]
GO
ALTER TABLE [dbo].[TbServiceRequestHistory]  WITH CHECK ADD  CONSTRAINT [FK_TbServiceRequestHistory_ServiceRequest] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbServiceRequestHistory] CHECK CONSTRAINT [FK_TbServiceRequestHistory_ServiceRequest]
GO
ALTER TABLE [dbo].[TbServiceRequestOffer]  WITH CHECK ADD  CONSTRAINT [FK_TbServiceRequestOffer_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[TbDriver] ([Id])
GO
ALTER TABLE [dbo].[TbServiceRequestOffer] CHECK CONSTRAINT [FK_TbServiceRequestOffer_Driver]
GO
ALTER TABLE [dbo].[TbServiceRequestOffer]  WITH CHECK ADD  CONSTRAINT [FK_TbServiceRequestOffer_ServiceRequest] FOREIGN KEY([ServiceRequestId])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbServiceRequestOffer] CHECK CONSTRAINT [FK_TbServiceRequestOffer_ServiceRequest]
GO
ALTER TABLE [dbo].[TbTableReservation]  WITH CHECK ADD  CONSTRAINT [FK_TbTableReservation_Restaurant] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[TbRestaurant] ([Id])
GO
ALTER TABLE [dbo].[TbTableReservation] CHECK CONSTRAINT [FK_TbTableReservation_Restaurant]
GO
ALTER TABLE [dbo].[TbTableReservation]  WITH CHECK ADD  CONSTRAINT [FK_TbTableReservation_ServiceRequest] FOREIGN KEY([Id])
REFERENCES [dbo].[TbServiceRequest] ([Id])
GO
ALTER TABLE [dbo].[TbTableReservation] CHECK CONSTRAINT [FK_TbTableReservation_ServiceRequest]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [SIX_TbAddress_Boundary]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE SPATIAL INDEX [SIX_TbAddress_Boundary] ON [dbo].[TbAddress]
(
        [Boundary]
)USING  GEOGRAPHY_AUTO_GRID 
WITH (
CELLS_PER_OBJECT = 12, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [SIX_TbDriverLocation_Boundary]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE SPATIAL INDEX [SIX_TbDriverLocation_Boundary] ON [dbo].[TbDriverLocation]
(
        [Boundary]
)USING  GEOGRAPHY_AUTO_GRID 
WITH (
CELLS_PER_OBJECT = 12, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [SIX_TbRestaurant_Boundary]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE SPATIAL INDEX [SIX_TbRestaurant_Boundary] ON [dbo].[TbRestaurant]
(
        [Boundary]
)USING  GEOGRAPHY_AUTO_GRID 
WITH (
CELLS_PER_OBJECT = 12, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [SIX_TbRideRequest_DropoffBoundary]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE SPATIAL INDEX [SIX_TbRideRequest_DropoffBoundary] ON [dbo].[TbRideRequest]
(
        [DropoffBoundary]
)USING  GEOGRAPHY_AUTO_GRID 
WITH (
CELLS_PER_OBJECT = 12, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [SIX_TbRideRequest_PickupBoundary]    Script Date: 9/28/2026 9:15:36 AM ******/
CREATE SPATIAL INDEX [SIX_TbRideRequest_PickupBoundary] ON [dbo].[TbRideRequest]
(
        [PickupBoundary]
)USING  GEOGRAPHY_AUTO_GRID 
WITH (
CELLS_PER_OBJECT = 12, PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DataBaseEx] SET  READ_WRITE 
GO

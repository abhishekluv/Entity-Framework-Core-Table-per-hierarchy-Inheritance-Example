﻿USE [master]
GO
/****** Object:  Database [EFCoreTPHDemo]    Script Date: 11-09-2023 16:55:13 ******/
CREATE DATABASE [EFCoreTPHDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EFCoreTPHDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EFCoreTPHDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EFCoreTPHDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EFCoreTPHDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EFCoreTPHDemo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EFCoreTPHDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EFCoreTPHDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EFCoreTPHDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EFCoreTPHDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EFCoreTPHDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EFCoreTPHDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EFCoreTPHDemo] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EFCoreTPHDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EFCoreTPHDemo] SET  MULTI_USER 
GO
ALTER DATABASE [EFCoreTPHDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EFCoreTPHDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EFCoreTPHDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EFCoreTPHDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EFCoreTPHDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EFCoreTPHDemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EFCoreTPHDemo] SET QUERY_STORE = OFF
GO
USE [EFCoreTPHDemo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11-09-2023 16:55:13 ******/
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
/****** Object:  Table [dbo].[Vehicles]    Script Date: 11-09-2023 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Make] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Speed] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[TrunkSize] [int] NULL,
	[EnginePower] [int] NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230911110956_initial', N'7.0.10')
GO
SET IDENTITY_INSERT [dbo].[Vehicles] ON 
GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Color], [Speed], [Discriminator], [TrunkSize], [EnginePower]) VALUES (1, N'BMW', N'Red', 300, N'Car', 200, NULL)
GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Color], [Speed], [Discriminator], [TrunkSize], [EnginePower]) VALUES (2, N'Audi', N'Blue', 200, N'Car', 300, NULL)
GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Color], [Speed], [Discriminator], [TrunkSize], [EnginePower]) VALUES (3, N'Royal enfield', N'Black', 250, N'Motorcycle', NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
GO
USE [master]
GO
ALTER DATABASE [EFCoreTPHDemo] SET  READ_WRITE 
GO

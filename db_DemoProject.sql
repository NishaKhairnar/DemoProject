USE [master]
GO
/****** Object:  Database [NishaDemo]    Script Date: 07-06-2023 15:12:37 ******/
CREATE DATABASE [NishaDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NishaDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NishaDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NishaDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NishaDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NishaDemo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NishaDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NishaDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NishaDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NishaDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NishaDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NishaDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [NishaDemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NishaDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NishaDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NishaDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NishaDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NishaDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NishaDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NishaDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NishaDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NishaDemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NishaDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NishaDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NishaDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NishaDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NishaDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NishaDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NishaDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NishaDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NishaDemo] SET  MULTI_USER 
GO
ALTER DATABASE [NishaDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NishaDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NishaDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NishaDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NishaDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NishaDemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NishaDemo] SET QUERY_STORE = OFF
GO
USE [NishaDemo]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[CityName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserRegistration]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserRegistration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Address] [nvarchar](max) NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[InsertedDateTime] [datetime] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_tblUserRegistration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCity] ON 

INSERT [dbo].[tblCity] ([Id], [StateId], [CityName]) VALUES (1, 1, N'Surat')
INSERT [dbo].[tblCity] ([Id], [StateId], [CityName]) VALUES (2, 1, N'Bardoli')
INSERT [dbo].[tblCity] ([Id], [StateId], [CityName]) VALUES (3, 1, N'Baroda')
INSERT [dbo].[tblCity] ([Id], [StateId], [CityName]) VALUES (4, 2, N'Mumbai')
INSERT [dbo].[tblCity] ([Id], [StateId], [CityName]) VALUES (5, 2, N'Pune')
SET IDENTITY_INSERT [dbo].[tblCity] OFF
GO
SET IDENTITY_INSERT [dbo].[tblState] ON 

INSERT [dbo].[tblState] ([Id], [StateName]) VALUES (1, N'Gujarat')
INSERT [dbo].[tblState] ([Id], [StateName]) VALUES (2, N'Maharashtra')
SET IDENTITY_INSERT [dbo].[tblState] OFF
GO
ALTER TABLE [dbo].[tblUserRegistration] ADD  CONSTRAINT [DF_tblUserRegistration_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[tblUserRegistration] ADD  CONSTRAINT [DF_tblUserRegistration_InsertedDateTime]  DEFAULT (getutcdate()) FOR [InsertedDateTime]
GO
ALTER TABLE [dbo].[tblCity]  WITH CHECK ADD  CONSTRAINT [FK_tblCity_tblState] FOREIGN KEY([StateId])
REFERENCES [dbo].[tblState] ([Id])
GO
ALTER TABLE [dbo].[tblCity] CHECK CONSTRAINT [FK_tblCity_tblState]
GO
ALTER TABLE [dbo].[tblUserRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblUserRegistration_tblCity] FOREIGN KEY([CityId])
REFERENCES [dbo].[tblCity] ([Id])
GO
ALTER TABLE [dbo].[tblUserRegistration] CHECK CONSTRAINT [FK_tblUserRegistration_tblCity]
GO
ALTER TABLE [dbo].[tblUserRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblUserRegistration_tblState] FOREIGN KEY([StateId])
REFERENCES [dbo].[tblState] ([Id])
GO
ALTER TABLE [dbo].[tblUserRegistration] CHECK CONSTRAINT [FK_tblUserRegistration_tblState]
GO
/****** Object:  StoredProcedure [dbo].[AddEditUsers]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nisha Khairnar
-- Create date: 05-06-2023
-- Description:	For add and update Users details
-- =============================================
-- EXEC AddEditUsers 2,'Nisha khairnar s','nisha@yopmail.com','51665456146',null,1,2
-- =============================================
CREATE PROCEDURE [dbo].[AddEditUsers]
@Id INT,
@Name NVARCHAR(255),
@Email NVARCHAR(255),
@Phone NVARCHAR(255),
@Address NVARCHAR(MAX) = NULL,
@StateId INT,
@CityId INT
AS
BEGIN
	
	IF EXISTS (SELECT 1 FROM tblUserRegistration WHERE Id = @Id AND IsDeleted=0)
	BEGIN 
			--UPDATE DATA
			UPDATE tblUserRegistration SET 
					[Name] = @Name,
					Email = @Email,
					Phone = @Phone,
					[Address] = @Address,
					StateId = @StateId,
					CityId = @CityId,
					UpdatedDateTime = GETUTCDATE()
			WHERE Id = @Id

			SELECT CAST(1 AS BIT) AS Isscuss,'Data Updated Successfully.' AS Message
	END 
	ELSE 
	BEGIN
			INSERT INTO tblUserRegistration
			(
				[Name],
				Email,
				Phone,
				[Address],
				StateId,
				CityId
			)
			VALUES
			(
				@Name,
				@Email,
				@Phone,
				@Address,
				@StateId,
				@CityId
			)
			
			SELECT CAST(1 AS BIT) AS Isscuss,'Data Added Successfully.' AS Message

	END 
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nisha Khairnar
-- Create date: 05-06-2023
-- Description:	For delete users details
-- =============================================
-- EXEC DeleteUser 2
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUser]
@Id INT
AS
BEGIN
	
	UPDATE tblUserRegistration SET IsDeleted = 1,UpdatedDateTime = GETUTCDATE() WHERE Id = @Id

	
	SELECT CAST(1 AS BIT) AS Isscuss,'Data Deleted Successfully.' AS Message
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCitiesByState]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nisha Khairnar
-- Create date: 05-06-2023
-- Description:	For Get All Cities by State
-- =============================================
-- EXEC GetAllCitiesByState 2
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCitiesByState]
@StateId INT
AS
BEGIN
	SELECt Id,CityName,StateId FROM tblCity
	WHERE StateId =  @StateId
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllStates]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nisha Khairnar
-- Create date: 05-06-2023
-- Description:	get all states
-- =============================================
CREATE PROCEDURE [dbo].[GetAllStates]
AS
BEGIN
	SELECT Id,StateName FROM tblState
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nisha Khairnar
-- Create date: 05-06-2023
-- Description:	For get all users information
-- =============================================
-- EXEC GetAllUsers
-- =============================================
CREATE PROCEDURE [dbo].[GetAllUsers]
AS
BEGIN
	SELECT U.Id,
		   U.Name,
		   U.Email,
		   U.Phone,
		   U.Address,
		   U.StateId,
		   S.StateName,
		   U.CityId,
		   C.CityName
	FROM tblUserRegistration U
	INNER JOIN tblState S ON S.Id = U.StateId
	INNER JOIN tblCity  C ON C.Id = U.CityId
	WHERE IsDeleted = 0
	ORDER BY U.InsertedDateTime DESC 
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserDetailsById]    Script Date: 07-06-2023 15:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
-- EXEC GetUserDetailsById 1
-- =============================================
CREATE PROCEDURE [dbo].[GetUserDetailsById]
@Id INT
AS
BEGIN
	SELECT Id,
		   [Name],
		   Email,
		   Phone,
		   [Address],
		   StateId,
		   CityId
	FROM tblUserRegistration 
	WHERE Id=@Id AND IsDeleted = 0
END
GO
USE [master]
GO
ALTER DATABASE [NishaDemo] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [ACADEMICO_2]    Script Date: 15/06/2023 3:32:35 ******/
CREATE DATABASE [ACADEMICO_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ACADEMICO_2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ACADEMICO_2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ACADEMICO_2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ACADEMICO_2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ACADEMICO_2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ACADEMICO_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ACADEMICO_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ACADEMICO_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ACADEMICO_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ACADEMICO_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ACADEMICO_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET RECOVERY FULL 
GO
ALTER DATABASE [ACADEMICO_2] SET  MULTI_USER 
GO
ALTER DATABASE [ACADEMICO_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ACADEMICO_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ACADEMICO_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ACADEMICO_2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ACADEMICO_2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ACADEMICO_2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ACADEMICO_2', N'ON'
GO
ALTER DATABASE [ACADEMICO_2] SET QUERY_STORE = ON
GO
ALTER DATABASE [ACADEMICO_2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ACADEMICO_2]
GO
/****** Object:  Table [dbo].[Docente]    Script Date: 15/06/2023 3:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docente](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Especialidad] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 15/06/2023 3:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Carrera] [varchar](50) NULL,
	[Semestre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 15/06/2023 3:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[ID] [int] NOT NULL,
	[DiaSemana] [varchar](50) NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFin] [time](7) NULL,
	[Aula] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imparte]    Script Date: 15/06/2023 3:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imparte](
	[ID_Docente] [int] NOT NULL,
	[ID_Materia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Docente] ASC,
	[ID_Materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripcion]    Script Date: 15/06/2023 3:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripcion](
	[ID_Estudiante] [int] NOT NULL,
	[ID_Materia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Estudiante] ASC,
	[ID_Materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 15/06/2023 3:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](255) NULL,
	[Creditos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notas]    Script Date: 15/06/2023 3:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notas](
	[ID_Estudiante] [int] NOT NULL,
	[ID_Materia] [int] NOT NULL,
	[Nota] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Estudiante] ASC,
	[ID_Materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Imparte]  WITH CHECK ADD FOREIGN KEY([ID_Docente])
REFERENCES [dbo].[Docente] ([ID])
GO
ALTER TABLE [dbo].[Imparte]  WITH CHECK ADD FOREIGN KEY([ID_Materia])
REFERENCES [dbo].[Materia] ([ID])
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD FOREIGN KEY([ID_Estudiante])
REFERENCES [dbo].[Estudiante] ([ID])
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD FOREIGN KEY([ID_Materia])
REFERENCES [dbo].[Materia] ([ID])
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([ID_Estudiante])
REFERENCES [dbo].[Estudiante] ([ID])
GO
ALTER TABLE [dbo].[Notas]  WITH CHECK ADD FOREIGN KEY([ID_Materia])
REFERENCES [dbo].[Materia] ([ID])
GO
USE [master]
GO
ALTER DATABASE [ACADEMICO_2] SET  READ_WRITE 
GO

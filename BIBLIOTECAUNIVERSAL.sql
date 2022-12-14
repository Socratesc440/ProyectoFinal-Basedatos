/******  ******/
/****** Nombre: Socrates Junior Peña Cabrera, Matricula: 21-EIIN-1-010, Seccion: 0541 ******/
/****** Materia: Base De Datos, Maestro: Starling Germosen Reynoso ******/
/****** Universidad Dominicana OYM ******/
/****** Proyecto Final: BibliotecaUniversal ******/

USE [master]
GO
/****** Object:  Database [BibliotecaUniversal]    Script Date: 8/21/2022 1:24:42 PM ******/
CREATE DATABASE [BibliotecaUniversal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BibliotecaUniversal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BibliotecaUniversal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BibliotecaUniversal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BibliotecaUniversal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BibliotecaUniversal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BibliotecaUniversal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BibliotecaUniversal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET ARITHABORT OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BibliotecaUniversal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BibliotecaUniversal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BibliotecaUniversal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BibliotecaUniversal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BibliotecaUniversal] SET  MULTI_USER 
GO
ALTER DATABASE [BibliotecaUniversal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BibliotecaUniversal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BibliotecaUniversal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BibliotecaUniversal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BibliotecaUniversal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BibliotecaUniversal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BibliotecaUniversal] SET QUERY_STORE = OFF
GO
USE [BibliotecaUniversal]
GO
/****** Object:  Table [dbo].[Tabl_Autor]    Script Date: 8/21/2022 1:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabl_Autor](
	[IdAutor] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Nacionalidad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tabl_Autor] PRIMARY KEY CLUSTERED 
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabl_Estudiante]    Script Date: 8/21/2022 1:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabl_Estudiante](
	[IdLector] [int] NOT NULL,
	[DNI] [int] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Direccion] [nvarchar](300) NULL,
	[Carrera] [nvarchar](50) NULL,
	[Edad] [int] NULL,
 CONSTRAINT [PK_Tabl_Estudiante] PRIMARY KEY CLUSTERED 
(
	[IdLector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabl_LibAutor]    Script Date: 8/21/2022 1:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabl_LibAutor](
	[IdAutor] [int] NULL,
	[IdLibro] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabl_Libro]    Script Date: 8/21/2022 1:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabl_Libro](
	[IdLibro] [int] NOT NULL,
	[Titulo] [nvarchar](100) NULL,
	[Editorial] [nvarchar](50) NULL,
	[Area] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tabl_Libro] PRIMARY KEY CLUSTERED 
(
	[IdLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabl_Prestamo]    Script Date: 8/21/2022 1:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabl_Prestamo](
	[IdLector] [int] NULL,
	[IdLibro] [int] NULL,
	[FechaPrestamo] [date] NULL,
	[FechaDevolucion] [date] NULL,
	[Devolucion] [date] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (1, N'Isabel Allende', N'Peruana')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (2, N'Juan Bosh', N'Dominicano')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (3, N'James D. Stewart', N'Canadiense')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (4, N'Dr. Cruz Jiminian', N'Dominicano')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (5, N'Joanne Rowling', N'Britanica')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (6, N'Juan Bosh', N'Dominicano')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (7, N'Walter Scott', N'Britanico')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (8, N'Gustave Flaubert', N'Frances')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (9, N'Frederick Phillips Brooks', N'USA')
INSERT [dbo].[Tabl_Autor] ([IdAutor], [Nombre], [Nacionalidad]) VALUES (10, N'Aurelio Baldor de la Vega', N'Cubano')
GO
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (1, 98, N'Juan', N'Capotillo', N'Literatura', 32)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (2, 97, N'Pedro', N'Herrera', N'Historia', 25)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (3, 95, N'Lucas', N'San Isidro', N'Matematica', 45)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (4, 94, N'David', N'Los Alcarrizos', N'Medicina', 50)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (5, 92, N'Rafael', N'Cristo Rey', N'Lenguas Modernas', 35)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (6, 91, N'Maria', N'Reparto Peralta', N'Historia', 28)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (7, 89, N'Sofia', N'Pueblo Nuevo', N'Historia', 37)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (8, 88, N'Vanesa', N'Haina', N'Lenguas Modernas', 41)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (9, 86, N'Andrea', N'Urb, El Dorado', N'Sistema', 39)
INSERT [dbo].[Tabl_Estudiante] ([IdLector], [DNI], [Nombre], [Direccion], [Carrera], [Edad]) VALUES (10, 85, N'Cris', N'El Millon', N'Matematica', 22)
GO
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (1, 1)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (2, 2)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (3, 3)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (4, 4)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (5, 5)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (6, 6)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (7, 7)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (8, 8)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (9, 9)
INSERT [dbo].[Tabl_LibAutor] ([IdAutor], [IdLibro]) VALUES (10, 10)
GO
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (1, N'Paula', N'Santillana', N'Literatura')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (2, N'Cuentos Dominicanos', N'Susaeta', N'Literatura')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (3, N'Calculo', N'Anaya', N'Matematica')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (4, N'Anatomia II', N'Padilla', N'Salud')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (5, N'Ingles III', N'El Pais', N'Idioma')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (6, N'Historia Dominicana', N'El Diario Libre', N'Historia')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (7, N'Historia Inglesa', N'Susaeta', N'Historia')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (8, N'France I', N'Anaya', N'Idioma')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (9, N'Programacion II', N'Santillana', N'Tecnologia')
INSERT [dbo].[Tabl_Libro] ([IdLibro], [Titulo], [Editorial], [Area]) VALUES (10, N'Algebra', N'Padilla', N'Matematica')
GO
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (1, 1, CAST(N'2022-08-20' AS Date), CAST(N'2022-09-20' AS Date), CAST(N'2022-09-10' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (2, 2, CAST(N'2022-01-15' AS Date), CAST(N'2022-02-15' AS Date), CAST(N'2022-02-05' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (3, 3, CAST(N'2022-02-10' AS Date), CAST(N'2022-03-10' AS Date), CAST(N'2022-03-01' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (4, 4, CAST(N'2022-04-21' AS Date), CAST(N'2022-05-21' AS Date), CAST(N'2022-05-11' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (5, 5, CAST(N'2022-08-20' AS Date), CAST(N'2022-09-20' AS Date), CAST(N'2022-09-05' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (6, 6, CAST(N'2022-01-15' AS Date), CAST(N'2022-02-15' AS Date), CAST(N'2022-02-10' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (7, 7, CAST(N'2022-02-10' AS Date), CAST(N'2022-03-10' AS Date), CAST(N'2022-03-05' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (8, 8, CAST(N'2022-04-21' AS Date), CAST(N'2022-05-21' AS Date), CAST(N'2022-05-15' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (9, 9, CAST(N'2021-12-23' AS Date), CAST(N'2022-01-23' AS Date), CAST(N'2022-01-08' AS Date))
INSERT [dbo].[Tabl_Prestamo] ([IdLector], [IdLibro], [FechaPrestamo], [FechaDevolucion], [Devolucion]) VALUES (10, 10, CAST(N'2022-01-23' AS Date), CAST(N'2022-02-23' AS Date), CAST(N'2022-02-09' AS Date))
GO
ALTER TABLE [dbo].[Tabl_LibAutor]  WITH CHECK ADD  CONSTRAINT [FK_Tabl_LibAutor_Tabl_Autor] FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Tabl_Autor] ([IdAutor])
GO
ALTER TABLE [dbo].[Tabl_LibAutor] CHECK CONSTRAINT [FK_Tabl_LibAutor_Tabl_Autor]
GO
ALTER TABLE [dbo].[Tabl_LibAutor]  WITH CHECK ADD  CONSTRAINT [FK_Tabl_LibAutor_Tabl_Libro] FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Tabl_Libro] ([IdLibro])
GO
ALTER TABLE [dbo].[Tabl_LibAutor] CHECK CONSTRAINT [FK_Tabl_LibAutor_Tabl_Libro]
GO
ALTER TABLE [dbo].[Tabl_Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Tabl_Prestamo_Tabl_Estudiante] FOREIGN KEY([IdLector])
REFERENCES [dbo].[Tabl_Estudiante] ([IdLector])
GO
ALTER TABLE [dbo].[Tabl_Prestamo] CHECK CONSTRAINT [FK_Tabl_Prestamo_Tabl_Estudiante]
GO
ALTER TABLE [dbo].[Tabl_Prestamo]  WITH CHECK ADD  CONSTRAINT [FK_Tabl_Prestamo_Tabl_Libro] FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Tabl_Libro] ([IdLibro])
GO
ALTER TABLE [dbo].[Tabl_Prestamo] CHECK CONSTRAINT [FK_Tabl_Prestamo_Tabl_Libro]
GO
USE [master]
GO
ALTER DATABASE [BibliotecaUniversal] SET  READ_WRITE 
GO

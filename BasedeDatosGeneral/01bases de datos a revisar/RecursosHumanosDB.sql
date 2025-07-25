USE [master]
GO
/****** Object:  Database [RecursosHumanosDB]    Script Date: 1/3/2025 18:45:26 ******/
CREATE DATABASE [RecursosHumanosDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RecursosHumanosDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RecursosHumanosDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RecursosHumanosDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RecursosHumanosDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RecursosHumanosDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RecursosHumanosDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RecursosHumanosDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RecursosHumanosDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RecursosHumanosDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RecursosHumanosDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RecursosHumanosDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RecursosHumanosDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET RECOVERY FULL 
GO
ALTER DATABASE [RecursosHumanosDB] SET  MULTI_USER 
GO
ALTER DATABASE [RecursosHumanosDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RecursosHumanosDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RecursosHumanosDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RecursosHumanosDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RecursosHumanosDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RecursosHumanosDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RecursosHumanosDB', N'ON'
GO
ALTER DATABASE [RecursosHumanosDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [RecursosHumanosDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RecursosHumanosDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cantones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantones](
	[Cod_Canton] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Provincia] [int] NOT NULL,
	[Nom_Canton] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Cantones] PRIMARY KEY CLUSTERED 
(
	[Cod_Canton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Correos]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Correos](
	[Id_Correo] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[DireccionCorreo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Correos] PRIMARY KEY CLUSTERED 
(
	[Id_Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deducciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deducciones](
	[DeduccionId] [int] IDENTITY(1,1) NOT NULL,
	[PlanillaId] [int] NOT NULL,
	[TipoDeduccionId] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Deducciones] PRIMARY KEY CLUSTERED 
(
	[DeduccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direcciones](
	[Id_Direccion] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Provincia] [int] NOT NULL,
	[Cod_Canton] [int] NOT NULL,
	[Cod_Distrito] [int] NOT NULL,
	[DireccionExacta] [nvarchar](max) NULL,
	[FechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Direcciones] PRIMARY KEY CLUSTERED 
(
	[Id_Direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distritos]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distritos](
	[Cod_Distrito] [int] IDENTITY(1,1) NOT NULL,
	[Cod_Canton] [int] NOT NULL,
	[Nom_Distrito] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Distritos] PRIMARY KEY CLUSTERED 
(
	[Cod_Distrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellido1] [nvarchar](max) NULL,
	[Apellido2] [nvarchar](max) NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[PuestoId] [int] NOT NULL,
	[DireccionId] [int] NOT NULL,
	[SalarioBase] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoLiquidaciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoLiquidaciones](
	[EstadoLiquidacionId] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EstadoLiquidaciones] PRIMARY KEY CLUSTERED 
(
	[EstadoLiquidacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPermisos]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPermisos](
	[EstadoPermisoId] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EstadoPermisos] PRIMARY KEY CLUSTERED 
(
	[EstadoPermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoVacaciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoVacaciones](
	[EstadoVacacionId] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EstadoVacaciones] PRIMARY KEY CLUSTERED 
(
	[EstadoVacacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialAcciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialAcciones](
	[HistorialId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[Accion] [nvarchar](max) NULL,
	[FechaHora] [datetime] NOT NULL,
	[Detalles] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.HistorialAcciones] PRIMARY KEY CLUSTERED 
(
	[HistorialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorasExtras]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorasExtras](
	[HoraExtraId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[HorasTrabajadas] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.HorasExtras] PRIMARY KEY CLUSTERED 
(
	[HoraExtraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Liquidaciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liquidaciones](
	[LiquidacionId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[TipoLiquidacionId] [int] NOT NULL,
	[EstadoLiquidacionId] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Liquidaciones] PRIMARY KEY CLUSTERED 
(
	[LiquidacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[MarcaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[TipoMarcaId] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[HoraEntrada] [time](7) NOT NULL,
	[HoraSalida] [time](7) NULL,
 CONSTRAINT [PK_dbo.Marcas] PRIMARY KEY CLUSTERED 
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[PermisoId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[TipoPermisoId] [int] NOT NULL,
	[EstadoPermisoId] [int] NOT NULL,
	[HorasSolicitadas] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Permisos] PRIMARY KEY CLUSTERED 
(
	[PermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planillas]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planillas](
	[PlanillaId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[TotalPago] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Planillas] PRIMARY KEY CLUSTERED 
(
	[PlanillaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[Cod_Provincia] [int] IDENTITY(1,1) NOT NULL,
	[Nom_Provincia] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Provincias] PRIMARY KEY CLUSTERED 
(
	[Cod_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puestos]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puestos](
	[PuestoId] [int] IDENTITY(1,1) NOT NULL,
	[NombrePuesto] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Puestos] PRIMARY KEY CLUSTERED 
(
	[PuestoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[NombreRol] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefonos](
	[Id_Telefono] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[NumeroTelefono] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Telefonos] PRIMARY KEY CLUSTERED 
(
	[Id_Telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDeducciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDeducciones](
	[TipoDeduccionId] [int] IDENTITY(1,1) NOT NULL,
	[NombreDeduccion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoDeducciones] PRIMARY KEY CLUSTERED 
(
	[TipoDeduccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoLiquidaciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLiquidaciones](
	[TipoLiquidacionId] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoLiquidaciones] PRIMARY KEY CLUSTERED 
(
	[TipoLiquidacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMarcas]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMarcas](
	[TipoMarcaId] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoMarcas] PRIMARY KEY CLUSTERED 
(
	[TipoMarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPermisos]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPermisos](
	[TipoPermisoId] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoPermisos] PRIMARY KEY CLUSTERED 
(
	[TipoPermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioRoles]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioRoles](
	[UsuarioRolId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[RolId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.UsuarioRoles] PRIMARY KEY CLUSTERED 
(
	[UsuarioRolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [nvarchar](max) NOT NULL,
	[Contrasena] [nvarchar](max) NOT NULL,
	[EmpleadoId] [int] NULL,
	[ConfirmarContraseña] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Usuarios] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacaciones]    Script Date: 1/3/2025 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacaciones](
	[VacacionId] [int] IDENTITY(1,1) NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[EstadoVacacionId] [int] NOT NULL,
	[DiasDisponibles] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Vacaciones] PRIMARY KEY CLUSTERED 
(
	[VacacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cod_Provincia]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_Cod_Provincia] ON [dbo].[Cantones]
(
	[Cod_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Correos]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlanillaId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_PlanillaId] ON [dbo].[Deducciones]
(
	[PlanillaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TipoDeduccionId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_TipoDeduccionId] ON [dbo].[Deducciones]
(
	[TipoDeduccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cod_Canton]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_Cod_Canton] ON [dbo].[Direcciones]
(
	[Cod_Canton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cod_Distrito]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_Cod_Distrito] ON [dbo].[Direcciones]
(
	[Cod_Distrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cod_Provincia]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_Cod_Provincia] ON [dbo].[Direcciones]
(
	[Cod_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cod_Canton]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_Cod_Canton] ON [dbo].[Distritos]
(
	[Cod_Canton] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DireccionId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_DireccionId] ON [dbo].[Empleados]
(
	[DireccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PuestoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_PuestoId] ON [dbo].[Empleados]
(
	[PuestoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsuarioId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_UsuarioId] ON [dbo].[HistorialAcciones]
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[HorasExtras]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Liquidaciones]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstadoLiquidacionId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EstadoLiquidacionId] ON [dbo].[Liquidaciones]
(
	[EstadoLiquidacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TipoLiquidacionId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_TipoLiquidacionId] ON [dbo].[Liquidaciones]
(
	[TipoLiquidacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Marcas]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TipoMarcaId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_TipoMarcaId] ON [dbo].[Marcas]
(
	[TipoMarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Permisos]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstadoPermisoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EstadoPermisoId] ON [dbo].[Permisos]
(
	[EstadoPermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TipoPermisoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_TipoPermisoId] ON [dbo].[Permisos]
(
	[TipoPermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Planillas]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Telefonos]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_RolId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_RolId] ON [dbo].[UsuarioRoles]
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsuarioId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_UsuarioId] ON [dbo].[UsuarioRoles]
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Usuarios]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmpleadoId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EmpleadoId] ON [dbo].[Vacaciones]
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstadoVacacionId]    Script Date: 1/3/2025 18:45:27 ******/
CREATE NONCLUSTERED INDEX [IX_EstadoVacacionId] ON [dbo].[Vacaciones]
(
	[EstadoVacacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ('') FOR [ConfirmarContraseña]
GO
ALTER TABLE [dbo].[Cantones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cantones_dbo.Provincias_Cod_Provincia] FOREIGN KEY([Cod_Provincia])
REFERENCES [dbo].[Provincias] ([Cod_Provincia])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cantones] CHECK CONSTRAINT [FK_dbo.Cantones_dbo.Provincias_Cod_Provincia]
GO
ALTER TABLE [dbo].[Correos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Correos_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Correos] CHECK CONSTRAINT [FK_dbo.Correos_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Deducciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Deducciones_dbo.Planillas_PlanillaId] FOREIGN KEY([PlanillaId])
REFERENCES [dbo].[Planillas] ([PlanillaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deducciones] CHECK CONSTRAINT [FK_dbo.Deducciones_dbo.Planillas_PlanillaId]
GO
ALTER TABLE [dbo].[Deducciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Deducciones_dbo.TipoDeducciones_TipoDeduccionId] FOREIGN KEY([TipoDeduccionId])
REFERENCES [dbo].[TipoDeducciones] ([TipoDeduccionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deducciones] CHECK CONSTRAINT [FK_dbo.Deducciones_dbo.TipoDeducciones_TipoDeduccionId]
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Direcciones_dbo.Cantones_Cod_Canton] FOREIGN KEY([Cod_Canton])
REFERENCES [dbo].[Cantones] ([Cod_Canton])
GO
ALTER TABLE [dbo].[Direcciones] CHECK CONSTRAINT [FK_dbo.Direcciones_dbo.Cantones_Cod_Canton]
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Direcciones_dbo.Distritos_Cod_Distrito] FOREIGN KEY([Cod_Distrito])
REFERENCES [dbo].[Distritos] ([Cod_Distrito])
GO
ALTER TABLE [dbo].[Direcciones] CHECK CONSTRAINT [FK_dbo.Direcciones_dbo.Distritos_Cod_Distrito]
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Direcciones_dbo.Provincias_Cod_Provincia] FOREIGN KEY([Cod_Provincia])
REFERENCES [dbo].[Provincias] ([Cod_Provincia])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Direcciones] CHECK CONSTRAINT [FK_dbo.Direcciones_dbo.Provincias_Cod_Provincia]
GO
ALTER TABLE [dbo].[Distritos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Distritos_dbo.Cantones_Cod_Canton] FOREIGN KEY([Cod_Canton])
REFERENCES [dbo].[Cantones] ([Cod_Canton])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Distritos] CHECK CONSTRAINT [FK_dbo.Distritos_dbo.Cantones_Cod_Canton]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empleados_dbo.Direcciones_DireccionId] FOREIGN KEY([DireccionId])
REFERENCES [dbo].[Direcciones] ([Id_Direccion])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_dbo.Empleados_dbo.Direcciones_DireccionId]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empleados_dbo.Puestos_PuestoId] FOREIGN KEY([PuestoId])
REFERENCES [dbo].[Puestos] ([PuestoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_dbo.Empleados_dbo.Puestos_PuestoId]
GO
ALTER TABLE [dbo].[HistorialAcciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HistorialAcciones_dbo.Usuarios_UsuarioId] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistorialAcciones] CHECK CONSTRAINT [FK_dbo.HistorialAcciones_dbo.Usuarios_UsuarioId]
GO
ALTER TABLE [dbo].[HorasExtras]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorasExtras_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorasExtras] CHECK CONSTRAINT [FK_dbo.HorasExtras_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Liquidaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Liquidaciones_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Liquidaciones] CHECK CONSTRAINT [FK_dbo.Liquidaciones_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Liquidaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Liquidaciones_dbo.EstadoLiquidaciones_EstadoLiquidacionId] FOREIGN KEY([EstadoLiquidacionId])
REFERENCES [dbo].[EstadoLiquidaciones] ([EstadoLiquidacionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Liquidaciones] CHECK CONSTRAINT [FK_dbo.Liquidaciones_dbo.EstadoLiquidaciones_EstadoLiquidacionId]
GO
ALTER TABLE [dbo].[Liquidaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Liquidaciones_dbo.TipoLiquidaciones_TipoLiquidacionId] FOREIGN KEY([TipoLiquidacionId])
REFERENCES [dbo].[TipoLiquidaciones] ([TipoLiquidacionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Liquidaciones] CHECK CONSTRAINT [FK_dbo.Liquidaciones_dbo.TipoLiquidaciones_TipoLiquidacionId]
GO
ALTER TABLE [dbo].[Marcas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Marcas_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Marcas] CHECK CONSTRAINT [FK_dbo.Marcas_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Marcas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Marcas_dbo.TipoMarcas_TipoMarcaId] FOREIGN KEY([TipoMarcaId])
REFERENCES [dbo].[TipoMarcas] ([TipoMarcaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Marcas] CHECK CONSTRAINT [FK_dbo.Marcas_dbo.TipoMarcas_TipoMarcaId]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permisos_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_dbo.Permisos_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permisos_dbo.EstadoPermisos_EstadoPermisoId] FOREIGN KEY([EstadoPermisoId])
REFERENCES [dbo].[EstadoPermisos] ([EstadoPermisoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_dbo.Permisos_dbo.EstadoPermisos_EstadoPermisoId]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Permisos_dbo.TipoPermisos_TipoPermisoId] FOREIGN KEY([TipoPermisoId])
REFERENCES [dbo].[TipoPermisos] ([TipoPermisoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_dbo.Permisos_dbo.TipoPermisos_TipoPermisoId]
GO
ALTER TABLE [dbo].[Planillas]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Planillas_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Planillas] CHECK CONSTRAINT [FK_dbo.Planillas_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Telefonos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Telefonos_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Telefonos] CHECK CONSTRAINT [FK_dbo.Telefonos_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[UsuarioRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioRoles_dbo.Roles_RolId] FOREIGN KEY([RolId])
REFERENCES [dbo].[Roles] ([RolId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsuarioRoles] CHECK CONSTRAINT [FK_dbo.UsuarioRoles_dbo.Roles_RolId]
GO
ALTER TABLE [dbo].[UsuarioRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioRoles_dbo.Usuarios_UsuarioId] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsuarioRoles] CHECK CONSTRAINT [FK_dbo.UsuarioRoles_dbo.Usuarios_UsuarioId]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Usuarios_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_dbo.Usuarios_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Vacaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vacaciones_dbo.Empleados_EmpleadoId] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleados] ([EmpleadoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vacaciones] CHECK CONSTRAINT [FK_dbo.Vacaciones_dbo.Empleados_EmpleadoId]
GO
ALTER TABLE [dbo].[Vacaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vacaciones_dbo.EstadoVacaciones_EstadoVacacionId] FOREIGN KEY([EstadoVacacionId])
REFERENCES [dbo].[EstadoVacaciones] ([EstadoVacacionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vacaciones] CHECK CONSTRAINT [FK_dbo.Vacaciones_dbo.EstadoVacaciones_EstadoVacacionId]
GO
USE [master]
GO
ALTER DATABASE [RecursosHumanosDB] SET  READ_WRITE 
GO

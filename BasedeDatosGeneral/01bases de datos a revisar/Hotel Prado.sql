USE [HotelPrado]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bitacoraEventos]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacoraEventos](
	[IdEvento] [int] IDENTITY(1,1) NOT NULL,
	[TablaDeEvento] [varchar](20) NULL,
	[TipoDeEvento] [varchar](20) NOT NULL,
	[FechaDeEvento] [datetime] NOT NULL,
	[DescripcionDeEvento] [varchar](max) NOT NULL,
	[StackTrace] [varchar](max) NULL,
	[DatosAnteriores] [varchar](max) NULL,
	[DatosPosteriores] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[IdCita] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[PrimerApellido] [varchar](100) NOT NULL,
	[SegundoApellido] [varchar](100) NULL,
	[Telefono] [int] NULL,
	[Correo] [varchar](150) NOT NULL,
	[MedioContacto] [varchar](50) NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[FechaHoraInicio] [datetime] NULL,
	[FechaHoraFin] [datetime] NULL,
	[Estado] [varchar](50) NOT NULL,
	[Observaciones] [text] NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[IdColaborador] [int] NULL,
	[EnlaceWhatsApp] [varchar](255) NULL,
	[EnlaceCorreo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[NombreCliente] [varchar](50) NULL,
	[PrimerApellidoCliente] [varchar](50) NULL,
	[SegundoApellidoCliente] [varchar](50) NULL,
	[EmailCliente] [nvarchar](50) NULL,
	[TelefonoCliente] [int] NOT NULL,
	[DireccionCliente] [nvarchar](100) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesContactos]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesContactos](
	[IdContacto] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[TipoContacto] [nvarchar](50) NULL,
	[ValorContacto] [nvarchar](50) NOT NULL,
	[EsPrincipal] [bit] NULL,
	[FechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colaborador]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colaborador](
	[IdColaborador] [int] IDENTITY(1,1) NOT NULL,
	[NombreColaborador] [varchar](100) NOT NULL,
	[PrimerApellidoColaborador] [varchar](100) NOT NULL,
	[SegundoApellidoColaborador] [varchar](100) NOT NULL,
	[CedulaColaborador] [int] NOT NULL,
	[PuestoColaborador] [varchar](100) NOT NULL,
	[EstadoLaboral] [varchar](50) NOT NULL,
	[IngresoColaborador] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdColaborador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdTipoDepartamento] [int] NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
	[IdCliente] [int] NULL,
	[Descripcion] [varchar](255) NULL,
	[UrlImagenes] [varchar](max) NULL,
	[NumeroDepartamento] [int] NULL,
	[NumeroEmpresa] [varchar](50) NULL,
	[CorreoEmpresa] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitaciones]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitaciones](
	[IdHabitacion] [int] IDENTITY(1,1) NOT NULL,
	[NumeroHabitacion] [varchar](5) NULL,
	[Estado] [varchar](15) NULL,
	[CapacidadMin] [int] NULL,
	[PrecioPorNoche2P] [decimal](18, 0) NULL,
	[PrecioPorNoche1P] [decimal](18, 0) NULL,
	[PrecioPorNoche3P] [decimal](18, 0) NULL,
	[PrecioPorNoche4P] [decimal](18, 0) NULL,
	[UrlImagenes] [varchar](max) NULL,
	[CapacidadMax] [int] NULL,
 CONSTRAINT [PK_Habitaciones] PRIMARY KEY CLUSTERED 
(
	[IdHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagenesDepartamento]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagenesDepartamento](
	[IdImagen] [int] IDENTITY(1,1) NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[UrlImagen] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdImagen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagenesHabitacion]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagenesHabitacion](
	[IdImagen] [int] IDENTITY(1,1) NOT NULL,
	[IdHabitacion] [int] NOT NULL,
	[UrlImagen] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdImagen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[Descripcion] [varchar](max) NOT NULL,
	[Estado] [varchar](15) NOT NULL,
	[idHabitacion] [int] NULL,
	[idDepartamento] [int] NULL,
	[DepartamentoNombre] [nvarchar](100) NULL,
	[IdMantenimiento] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Mantenimiento] PRIMARY KEY CLUSTERED 
(
	[IdMantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[IdPuesto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[IdReserva] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [nvarchar](128) NOT NULL,
	[cantidadPersonas] [int] NULL,
	[NombreCliente] [nvarchar](128) NULL,
	[IdHabitacion] [int] NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[EstadoReserva] [nvarchar](50) NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[NumeroEmpresa] [varchar](50) NULL,
	[CorreoEmpresa] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDepartamento]    Script Date: 11/04/2025 20:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDepartamento](
	[IdTipoDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[NumeroHabitaciones] [int] NOT NULL,
	[Amueblado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bitacoraEventos] ON 
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (1, N'ModuloDepartamentos', N'Registrar', CAST(N'2025-04-05T21:10:04.980' AS DateTime), N'Se registró un nuevo departamento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdDepartamento": 0,
                    "IdCliente": ,
                    "Nombre": "Suite preferencial",
                    "Descripcion": "incluye cafe",
                    "IdTipoDepartamento": 4,
                    "Precio": 85,
                    "Estado": "Disponible",
                    "NumeroHabitaciones": 0,
                    "Amueblado": false
                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (2, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:41:05.247' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": mantenimiento,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (3, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:42:43.837' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": mantenimiento por desorden,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (4, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:42:57.747' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": mantenimiento por desorden,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (5, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:42:58.880' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": mantenimiento por desorden,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (6, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:44:04.303' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": mantenimiento por desorden,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (7, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:44:20.213' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": maantenimiento,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (8, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:44:43.343' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": maantenimiento,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (9, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-05T21:48:12.367' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": mantenimiento,
                    "Estado": "Pendiente",
                    "idDepartamento": "1",
                    "DepartamentoNombre": Suite preferencial,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (10, N'ModuloMantenimiento', N'Editar', CAST(N'2025-04-05T22:08:08.530' AS DateTime), N'Se editó un registro en la tabla ModuloMantenimiento', N'No hubo error', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "Pendiente",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "Realizado",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (11, N'ModuloMantenimiento', N'Editar', CAST(N'2025-04-05T22:09:09.367' AS DateTime), N'Se editó un registro en la tabla ModuloMantenimiento', N'No hubo error', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "Pendiente",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "Pendiente",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (12, N'ModuloMantenimiento', N'Editar', CAST(N'2025-04-05T22:09:44.127' AS DateTime), N'Se editó un registro en la tabla ModuloMantenimiento', N'No hubo error', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "Pendiente",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "Realizado",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (13, N'ModuloMantenimiento', N'Editar', CAST(N'2025-04-05T22:12:27.617' AS DateTime), N'Se editó un registro en la tabla ModuloMantenimiento', N'No hubo error', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "Pendiente",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }', N'
            {
                "IdMantenimiento": 1,
                "Descripcion": "mantenimiento",
                "Estado": "En Proceso",
                "idDepartamento": "1",
                "DepartamentoNombre": "Suite preferencial"
            }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (1002, N'ModuloDepartamentos', N'Registrar', CAST(N'2025-04-11T00:06:28.313' AS DateTime), N'Se registró un nuevo departamento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdDepartamento": 0,
                    "IdCliente": ,
                    "Nombre": "Suite preferencial 2",
                    "Descripcion": "test",
                    "IdTipoDepartamento": 12,
                    "Precio": 85,
                    "Estado": "Disponible",
                    "NumeroHabitaciones": 0,
                    "Amueblado": false
                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (1003, N'ModuloDepartamentos', N'Registrar', CAST(N'2025-04-11T00:20:17.913' AS DateTime), N'Se registró un nuevo departamento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdDepartamento": 0,
                    "IdCliente": ,
                    "Nombre": "Suite preferencial 4",
                    "Descripcion": "dsfs",
                    "IdTipoDepartamento": 14,
                    "Precio": 25,
                    "Estado": "Disponible",
                    "NumeroHabitaciones": 0,
                    "Amueblado": false
                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (1004, N'ModuloDepartamentos', N'Registrar', CAST(N'2025-04-11T00:21:46.620' AS DateTime), N'Se registró un nuevo departamento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdDepartamento": 0,
                    "IdCliente": ,
                    "Nombre": "Suite preferencial 5",
                    "Descripcion": "dsfs",
                    "IdTipoDepartamento": 14,
                    "Precio": 25,
                    "Estado": "Disponible",
                    "NumeroHabitaciones": 0,
                    "Amueblado": false
                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (1005, N'ModuloDepartamentos', N'Registrar', CAST(N'2025-04-11T00:24:45.430' AS DateTime), N'Se registró un nuevo departamento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdDepartamento": 0,
                    "IdCliente": ,
                    "Nombre": "Suite preferencial 6",
                    "Descripcion": "pjnjn",
                    "IdTipoDepartamento": 12,
                    "Precio": 80,
                    "Estado": "Disponible",
                    "NumeroHabitaciones": 0,
                    "Amueblado": false
                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (1006, N'ModuloMantenimiento', N'Registrar', CAST(N'2025-04-11T02:09:05.337' AS DateTime), N'Se registró un nuevo Mantenimiento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdMantenimiento": 0,
                    "Descripcion": test,
                    "Estado": "En Proceso",
                    "idDepartamento": "3",
                    "DepartamentoNombre": Suite preferencial 4,

                }')
GO
INSERT [dbo].[bitacoraEventos] ([IdEvento], [TablaDeEvento], [TipoDeEvento], [FechaDeEvento], [DescripcionDeEvento], [StackTrace], [DatosAnteriores], [DatosPosteriores]) VALUES (1007, N'ModuloDepartamentos', N'Registrar', CAST(N'2025-04-11T02:19:01.640' AS DateTime), N'Se registró un nuevo departamento en la base de datos.', N'Sin errores', N'NA', N'
                {
                    "IdDepartamento": 0,
                    "IdCliente": ,
                    "Nombre": "recursos Humanos",
                    "Descripcion": "recursos humanos",
                    "IdTipoDepartamento": 17,
                    "Precio": 1000,
                    "Estado": "Disponible",
                    "NumeroHabitaciones": 0,
                    "Amueblado": false
                }')
GO
SET IDENTITY_INSERT [dbo].[bitacoraEventos] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (1, N'Juan', N'Pérez', N'Gómez', N'juan.perez@email.com', 123456789, N'Calle Ficticia 123, Madrid')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (2, N'Ana', N'López', N'Martínez', N'ana.lopez@email.com', 987654321, N'Avenida Real 45, Barcelona')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (3, N'Carlos', N'García', N'Fernández', N'carlos.garcia@email.com', 456789123, N'Calle del Sol 87, Valencia')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (4, N'María', N'Sánchez', N'Jiménez', N'maria.sanchez@email.com', 789123456, N'Calle Luna 56, Sevilla')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (5, N'Pedro', N'Rodríguez', N'Pérez', N'pedro.rodriguez@email.com', 112233445, N'Calle Estrella 11, Zaragoza')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (6, N'Laura', N'Martín', N'Moreno', N'laura.martin@email.com', 667788990, N'Calle Marqués 34, Bilbao')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (7, N'José', N'Hernández', N'Vázquez', N'jose.hernandez@email.com', 334455667, N'Calle del Norte 20, Málaga')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (8, N'Lucía', N'González', N'Ruiz', N'lucia.gonzalez@email.com', 223344556, N'Calle de la Paz 89, Granada')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (9, N'Fernando', N'Díaz', N'Alvarez', N'fernando.diaz@email.com', 998877665, N'Calle del Río 12, Alicante')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (10, N'Marta', N'Torres', N'Cabrera', N'marta.torres@email.com', 556677889, N'Calle de la Victoria 76, Salamanca')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (11, N'Miguel', N'Ramírez', N'Herrera', N'miguel.ramirez@email.com', 443322110, N'Calle Mayor 52, Toledo')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (12, N'Patricia', N'Gómez', N'Ruiz', N'patricia.gomez@email.com', 889900112, N'Calle del Carmen 8, Valladolid')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (13, N'David', N'Vázquez', N'Molina', N'david.vazquez@email.com', 123321123, N'Calle de las Flores 14, Murcia')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (14, N'Elena', N'Jiménez', N'Lozano', N'elena.jimenez@email.com', 778899224, N'Calle del Ángel 90, Palma')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (15, N'Raúl', N'Morales', N'Rodríguez', N'raul.morales@email.com', 667799334, N'Calle San José 6, Málaga')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (16, N'Beatriz', N'Serrano', N'Gómez', N'beatriz.serrano@email.com', 334455668, N'Calle San Juan 58, La Coruña')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (17, N'Ricardo', N'Fernández', N'Córdoba', N'ricardo.fernandez@email.com', 776655443, N'Avenida del Mar 40, Santander')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (18, N'Verónica', N'Álvarez', N'García', N'veronica.alvarez@email.com', 556677998, N'Calle Real 28, Cádiz')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (19, N'Javier', N'Castro', N'Pérez', N'javier.castro@email.com', 998877332, N'Callejón del Sol 33, Huelva')
GO
INSERT [dbo].[Cliente] ([IdCliente], [NombreCliente], [PrimerApellidoCliente], [SegundoApellidoCliente], [EmailCliente], [TelefonoCliente], [DireccionCliente]) VALUES (20, N'Isabel', N'Ríos', N'García', N'isabel.rios@email.com', 112233668, N'Avenida del Prado 88, Lugo')
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([IdDepartamento], [Nombre], [IdTipoDepartamento], [Precio], [Estado], [IdCliente], [Descripcion], [UrlImagenes], [NumeroDepartamento], [NumeroEmpresa], [CorreoEmpresa]) VALUES (1, N'Suite preferencial', 4, CAST(85.00 AS Decimal(10, 2)), N'Disponible', NULL, N'incluye cafe', N'/Uploads/Micro sd 64.jpg', 11, NULL, NULL)
GO
INSERT [dbo].[Departamento] ([IdDepartamento], [Nombre], [IdTipoDepartamento], [Precio], [Estado], [IdCliente], [Descripcion], [UrlImagenes], [NumeroDepartamento], [NumeroEmpresa], [CorreoEmpresa]) VALUES (2, N'Suite preferencial 2', 12, CAST(85.00 AS Decimal(10, 2)), N'Disponible', NULL, N'test', N'/Uploads/bd073298-afa1-4dbe-aa22-39cefd5bd1ed.jpg', 21, NULL, NULL)
GO
INSERT [dbo].[Departamento] ([IdDepartamento], [Nombre], [IdTipoDepartamento], [Precio], [Estado], [IdCliente], [Descripcion], [UrlImagenes], [NumeroDepartamento], [NumeroEmpresa], [CorreoEmpresa]) VALUES (3, N'Suite preferencial 4', 14, CAST(25.00 AS Decimal(10, 2)), N'Disponible', NULL, N'dsfs', N'/Uploads/3c86e7d9-308f-4468-bf50-8e29e9d8df10.jpg', 18, NULL, NULL)
GO
INSERT [dbo].[Departamento] ([IdDepartamento], [Nombre], [IdTipoDepartamento], [Precio], [Estado], [IdCliente], [Descripcion], [UrlImagenes], [NumeroDepartamento], [NumeroEmpresa], [CorreoEmpresa]) VALUES (4, N'Suite preferencial 5', 14, CAST(25.00 AS Decimal(10, 2)), N'Disponible', NULL, N'dsfs', N'/Uploads/aa643f76-47e5-4310-b5fd-ef16544ddbd1.jpg', 17, NULL, NULL)
GO
INSERT [dbo].[Departamento] ([IdDepartamento], [Nombre], [IdTipoDepartamento], [Precio], [Estado], [IdCliente], [Descripcion], [UrlImagenes], [NumeroDepartamento], [NumeroEmpresa], [CorreoEmpresa]) VALUES (5, N'Suite preferencial 6', 12, CAST(80.00 AS Decimal(10, 2)), N'Disponible', NULL, N'pjnjn', N'/Uploads/7eabdd56-131f-47c4-8495-7ae09fa54447.jpg', 15, NULL, NULL)
GO
INSERT [dbo].[Departamento] ([IdDepartamento], [Nombre], [IdTipoDepartamento], [Precio], [Estado], [IdCliente], [Descripcion], [UrlImagenes], [NumeroDepartamento], [NumeroEmpresa], [CorreoEmpresa]) VALUES (6, N'recursos Humanos', 17, CAST(1000.00 AS Decimal(10, 2)), N'Disponible', NULL, N'recursos humanos', N'/Uploads/Micro sd 64.jpg', 13, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Habitaciones] ON 
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (1, N'101', N'Disponible', 1, CAST(100 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), CAST(140 AS Decimal(18, 0)), N'http://hotelprado.com/images/101.jpg', 4)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (2, N'102', N'Ocupada', 2, CAST(120 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(140 AS Decimal(18, 0)), CAST(160 AS Decimal(18, 0)), N'http://hotelprado.com/images/102.jpg', 4)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (3, N'103', N'Ocupado', 1, CAST(90 AS Decimal(18, 0)), CAST(75 AS Decimal(18, 0)), CAST(110 AS Decimal(18, 0)), CAST(130 AS Decimal(18, 0)), N'http://hotelprado.com/images/103.jpg', 3)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (4, N'104', N'Mantenimiento', 2, CAST(150 AS Decimal(18, 0)), CAST(130 AS Decimal(18, 0)), CAST(180 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), N'http://hotelprado.com/images/104.jpg', 5)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (5, N'105', N'Disponible', 1, CAST(80 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), N'http://hotelprado.com/images/105.jpg', 3)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (6, N'106', N'Ocupada', 3, CAST(200 AS Decimal(18, 0)), CAST(170 AS Decimal(18, 0)), CAST(210 AS Decimal(18, 0)), CAST(250 AS Decimal(18, 0)), N'http://hotelprado.com/images/106.jpg', 5)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (7, N'107', N'Disponible', 2, CAST(130 AS Decimal(18, 0)), CAST(110 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(170 AS Decimal(18, 0)), N'http://hotelprado.com/images/107.jpg', 4)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (8, N'108', N'Ocupada', 4, CAST(250 AS Decimal(18, 0)), CAST(220 AS Decimal(18, 0)), CAST(280 AS Decimal(18, 0)), CAST(300 AS Decimal(18, 0)), N'http://hotelprado.com/images/108.jpg', 6)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (9, N'109', N'Ocupado', 2, CAST(140 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), CAST(160 AS Decimal(18, 0)), CAST(180 AS Decimal(18, 0)), N'http://hotelprado.com/images/109.jpg', 4)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (10, N'110', N'Disponible', 1, CAST(110 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)), CAST(130 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), N'http://hotelprado.com/images/110.jpg', 3)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (11, N'111', N'Mantenimiento', 3, CAST(160 AS Decimal(18, 0)), CAST(140 AS Decimal(18, 0)), CAST(180 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), N'http://hotelprado.com/images/111.jpg', 5)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (12, N'112', N'Disponible', 1, CAST(95 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)), CAST(115 AS Decimal(18, 0)), CAST(135 AS Decimal(18, 0)), N'http://hotelprado.com/images/112.jpg', 3)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (13, N'113', N'Ocupada', 2, CAST(120 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), CAST(140 AS Decimal(18, 0)), CAST(160 AS Decimal(18, 0)), N'http://hotelprado.com/images/113.jpg', 4)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (14, N'114', N'Disponible', 4, CAST(220 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), CAST(260 AS Decimal(18, 0)), CAST(280 AS Decimal(18, 0)), N'http://hotelprado.com/images/114.jpg', 6)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (15, N'115', N'Ocupada', 1, CAST(75 AS Decimal(18, 0)), CAST(65 AS Decimal(18, 0)), CAST(95 AS Decimal(18, 0)), CAST(115 AS Decimal(18, 0)), N'http://hotelprado.com/images/115.jpg', 2)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (16, N'116', N'Disponible', 3, CAST(180 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), CAST(190 AS Decimal(18, 0)), CAST(210 AS Decimal(18, 0)), N'http://hotelprado.com/images/116.jpg', 5)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (17, N'117', N'Mantenimiento', 2, CAST(140 AS Decimal(18, 0)), CAST(120 AS Decimal(18, 0)), CAST(160 AS Decimal(18, 0)), CAST(180 AS Decimal(18, 0)), N'http://hotelprado.com/images/117.jpg', 4)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (18, N'118', N'Disponible', 1, CAST(85 AS Decimal(18, 0)), CAST(70 AS Decimal(18, 0)), CAST(105 AS Decimal(18, 0)), CAST(125 AS Decimal(18, 0)), N'http://hotelprado.com/images/118.jpg', 3)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (19, N'119', N'Ocupada', 4, CAST(210 AS Decimal(18, 0)), CAST(180 AS Decimal(18, 0)), CAST(230 AS Decimal(18, 0)), CAST(250 AS Decimal(18, 0)), N'http://hotelprado.com/images/119.jpg', 6)
GO
INSERT [dbo].[Habitaciones] ([IdHabitacion], [NumeroHabitacion], [Estado], [CapacidadMin], [PrecioPorNoche2P], [PrecioPorNoche1P], [PrecioPorNoche3P], [PrecioPorNoche4P], [UrlImagenes], [CapacidadMax]) VALUES (20, N'120', N'Disponible', 2, CAST(160 AS Decimal(18, 0)), CAST(140 AS Decimal(18, 0)), CAST(180 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), N'http://hotelprado.com/images/120.jpg', 4)
GO
SET IDENTITY_INSERT [dbo].[Habitaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento] ON 
GO
INSERT [dbo].[Mantenimiento] ([Descripcion], [Estado], [idHabitacion], [idDepartamento], [DepartamentoNombre], [IdMantenimiento]) VALUES (N'mantenimiento', N'En Proceso', NULL, 1, N'Suite preferencial', 1)
GO
INSERT [dbo].[Mantenimiento] ([Descripcion], [Estado], [idHabitacion], [idDepartamento], [DepartamentoNombre], [IdMantenimiento]) VALUES (N'test', N'En Proceso', NULL, 3, N'Suite preferencial 4', 2)
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDepartamento] ON 
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (1, 1, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (2, 2, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (3, 3, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (4, 4, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (5, 1, 0)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (6, 2, 0)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (7, 3, 0)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (8, 4, 0)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (9, 2, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (10, 3, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (11, 1, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (12, 2, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (13, 5, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (14, 1, 0)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (15, 2, 0)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (16, 3, 0)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (17, 4, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (18, 2, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (19, 3, 1)
GO
INSERT [dbo].[TipoDepartamento] ([IdTipoDepartamento], [NumeroHabitaciones], [Amueblado]) VALUES (20, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[TipoDepartamento] OFF
GO
/****** Object:  Index [UQ__Colabora__556FD593A3978CF1]    Script Date: 11/04/2025 20:08:19 ******/
ALTER TABLE [dbo].[Colaborador] ADD UNIQUE NONCLUSTERED 
(
	[CedulaColaborador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Citas] ADD  CONSTRAINT [DF_Citas_Estado]  DEFAULT ('CitaPendiente') FOR [Estado]
GO
ALTER TABLE [dbo].[Citas] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[ClientesContactos] ADD  DEFAULT ('Teléfono') FOR [TipoContacto]
GO
ALTER TABLE [dbo].[ClientesContactos] ADD  DEFAULT ((0)) FOR [EsPrincipal]
GO
ALTER TABLE [dbo].[ClientesContactos] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Departamento] ADD  DEFAULT ('Disponible') FOR [Estado]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD FOREIGN KEY([IdColaborador])
REFERENCES [dbo].[Colaborador] ([IdColaborador])
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[ClientesContactos]  WITH CHECK ADD  CONSTRAINT [FK_ClientesContactos_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[ClientesContactos] CHECK CONSTRAINT [FK_ClientesContactos_Clientes]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD FOREIGN KEY([IdTipoDepartamento])
REFERENCES [dbo].[TipoDepartamento] ([IdTipoDepartamento])
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Cliente]
GO
ALTER TABLE [dbo].[ImagenesDepartamento]  WITH CHECK ADD FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [fk_mantenimiento_departamento] FOREIGN KEY([idDepartamento])
REFERENCES [dbo].[Departamento] ([IdDepartamento])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [fk_mantenimiento_departamento]
GO
ALTER TABLE [dbo].[Mantenimiento]  WITH CHECK ADD  CONSTRAINT [fk_mantenimiento_habitacion] FOREIGN KEY([idHabitacion])
REFERENCES [dbo].[Habitaciones] ([IdHabitacion])
GO
ALTER TABLE [dbo].[Mantenimiento] CHECK CONSTRAINT [fk_mantenimiento_habitacion]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Habitacion] FOREIGN KEY([IdHabitacion])
REFERENCES [dbo].[Habitaciones] ([IdHabitacion])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Habitacion]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Usuarios] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Usuarios]
GO

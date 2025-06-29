USE [DBRRHH]
GO
/****** Object:  Table [dbo].[Canton]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canton](
	[CantonID] [int] IDENTITY(1,1) NOT NULL,
	[provinciaID] [int] NULL,
	[CantonCodigo] [varchar](5) NULL,
	[canton] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CantonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[DepartamentoID] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [nvarchar](max) NULL,
	[DepartamentoCreate] [datetime] NULL,
	[DepartamentoUpdate] [datetime] NULL,
	[DepartamentoDelete] [datetime] NULL,
	[DepartamentoStatus] [bit] NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distrito]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distrito](
	[DistritoID] [int] IDENTITY(1,1) NOT NULL,
	[CantonID] [int] NOT NULL,
	[Codigodistrito] [varchar](5) NULL,
	[distrito] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistritoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorasExtra]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorasExtra](
	[HorasExtraID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[TipoJornadaID] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[TipoPago] [varchar](50) NOT NULL,
	[HorasExtra] [int] NOT NULL,
	[MontoPagoSalario] [float] NULL,
	[Motivo] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HorasExtraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImpuestoRenta]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpuestoRenta](
	[ImpuestoRentaID] [int] IDENTITY(1,1) NOT NULL,
	[RangoIngreso] [varchar](100) NOT NULL,
	[Porcentaje] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImpuestoRentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Liquidaciones]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liquidaciones](
	[LiquidacionID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[TipoLiquidacionId] [int] NOT NULL,
	[FechaLiquidacion] [date] NOT NULL,
	[SalarioBase] [float] NOT NULL,
	[VacacionesNoDisfrutadas] [decimal](18, 2) NULL,
	[AguinaldoProporcional] [decimal](18, 2) NULL,
	[Preaviso] [decimal](18, 2) NULL,
	[Indemnizacion] [decimal](18, 2) NULL,
	[TotalLiquidacion] [decimal](18, 2) NOT NULL,
	[Estado] [varchar](20) NULL,
	[FechaPago] [datetime] NULL,
	[Banco] [varchar](50) NULL,
	[NumeroCuenta] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LiquidacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logs]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logs](
	[LogsID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[UsuarioID] [int] NULL,
	[Modulo] [varchar](45) NULL,
	[detalles_adicionales] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[MarcaId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[HoraEntrada] [datetime] NOT NULL,
	[HoraSalida] [datetime] NULL,
	[MarcaCreacion] [datetime] NULL,
	[MarcaUpdate] [datetime] NULL,
	[MarcaDelete] [datetime] NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[PermisoId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[TipoPermisoId] [int] NOT NULL,
	[PermisoStatus] [int] NULL,
	[HorasSolicitadas] [int] NOT NULL,
	[PermisoCreacion] [datetime] NULL,
	[PermisoUpdate] [datetime] NULL,
	[PermisoDelete] [datetime] NULL,
	[UsuarioIDAprobadoPor] [int] NULL,
	[Motivo] [varchar](max) NOT NULL,
 CONSTRAINT [PK__Permisos__96E0C7233E6CD94C] PRIMARY KEY CLUSTERED 
(
	[PermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planilla]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planilla](
	[PlanillaID] [int] IDENTITY(1,1) NOT NULL,
	[FechaPlanilla] [datetime] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[HorasTrabajadas] [int] NULL,
	[HorasExtras] [float] NULL,
	[TipoDeduccionId] [int] NOT NULL,
	[Deducciones] [float] NULL,
	[ImpuestoRentaID] [int] NULL,
	[ImpuestoRenta] [float] NULL,
	[SalarioNeto] [float] NULL,
	[PlanillaFechaPago] [datetime] NULL,
	[PlanillaStatus] [int] NULL,
	[Banco] [varchar](100) NULL,
	[NumeroCuenta] [varchar](50) NULL,
 CONSTRAINT [PK__Planilla__D6603A4A23F2DD0C] PRIMARY KEY CLUSTERED 
(
	[PlanillaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincia](
	[provinciaID] [int] IDENTITY(1,1) NOT NULL,
	[provincia] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[provinciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RolID] [int] IDENTITY(1,1) NOT NULL,
	[NombreRol] [nvarchar](max) NULL,
	[RolCreate] [datetime] NULL,
	[RolUpdate] [datetime] NULL,
	[RolDelete] [datetime] NULL,
	[RolStatus] [bit] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDeducciones]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDeducciones](
	[TipoDeduccionId] [int] IDENTITY(1,1) NOT NULL,
	[DeduccionNombre] [varchar](200) NULL,
	[DeduccionPorcentaje] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoDeduccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoJornada]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoJornada](
	[TipoJornadaID] [int] IDENTITY(1,1) NOT NULL,
	[TipoJornada] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoJornadaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoLiquidaciones]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLiquidaciones](
	[TipoLiquidacionId] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipo] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoLiquidacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPermisos]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPermisos](
	[TipoPermisoID] [int] IDENTITY(1,1) NOT NULL,
	[TipoPermiso] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoPermisoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Apellidos] [varchar](200) NULL,
	[RolID] [int] NOT NULL,
	[DepartamentoID] [int] NOT NULL,
	[FechaNacimiento] [datetime] NULL,
	[SalarioBase] [float] NULL,
	[NombreUsuario] [varchar](200) NOT NULL,
	[Contrasena] [varchar](200) NOT NULL,
	[Token] [varchar](255) NOT NULL,
	[DireccionExacta] [varchar](100) NULL,
	[provinciaID] [int] NULL,
	[CantonID] [int] NULL,
	[DistritoID] [int] NULL,
	[UsuarioCreacion] [datetime] NULL,
	[UsuarioUpdate] [datetime] NULL,
	[UsuarioDelete] [datetime] NULL,
	[UsuarioStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacaciones]    Script Date: 02/03/2025 0:29:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacaciones](
	[VacacionID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[FechaSolicitud] [datetime] NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[DiasSolicitados] [int] NOT NULL,
	[DiasAprobados] [int] NULL,
	[Estado] [varchar](20) NOT NULL,
	[Comentarios] [varchar](255) NULL,
	[FechaAprobacion] [datetime] NULL,
	[FechaCancelacion] [datetime] NULL,
	[SalarioVacaciones] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[VacacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Canton] ON 
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (1, 1, N'01', N'San José')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (2, 1, N'02', N'Escazú')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (3, 1, N'03', N'Desamparados')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (4, 1, N'04', N'Puriscal')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (5, 1, N'05', N'Tarrazú')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (6, 1, N'06', N'Aserrí')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (7, 1, N'07', N'Mora')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (8, 1, N'08', N'Goicoechea')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (9, 1, N'09', N'Santa Ana')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (10, 1, N'10', N'Alajuelita')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (11, 1, N'11', N'Vásquez de Coronado')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (12, 1, N'12', N'Acosta')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (13, 1, N'13', N'Tibás')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (14, 1, N'14', N'Moravia')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (15, 1, N'15', N'Montes de Oca')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (16, 1, N'16', N'Turrubares')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (17, 1, N'17', N'Dota')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (18, 1, N'18', N'Curridabat')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (19, 1, N'19', N'Pérez Zeledón')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (20, 1, N'20', N'León Cortéz Castro')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (21, 2, N'01', N'Alajuela')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (22, 2, N'02', N'San Ramón')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (23, 2, N'03', N'Grecia')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (24, 2, N'04', N'San Mateo')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (25, 2, N'05', N'Atenas')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (26, 2, N'06', N'Naranjo')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (27, 2, N'07', N'Palmares')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (28, 2, N'08', N'Poás')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (29, 2, N'09', N'Orotina')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (30, 2, N'10', N'San Carlos')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (31, 2, N'11', N'Zarcero')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (32, 2, N'12', N'Valverde Vega')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (33, 2, N'13', N'Upala')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (34, 2, N'14', N'Los Chiles')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (35, 2, N'15', N'Guatuso')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (36, 3, N'01', N'Cartago')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (37, 3, N'02', N'Paraíso')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (38, 3, N'03', N'La Unión')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (39, 3, N'04', N'Jiménez')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (40, 3, N'05', N'Turrialba')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (41, 3, N'06', N'Alvarado')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (42, 3, N'07', N'Oreamuno')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (43, 3, N'08', N'El Guarco')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (44, 4, N'01', N'Heredia')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (45, 4, N'02', N'Barva')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (46, 4, N'03', N'Santo Domingo')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (47, 4, N'04', N'Santa Bárbara')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (48, 4, N'05', N'San Rafaél')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (49, 4, N'06', N'San Isidro')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (50, 4, N'07', N'Belén')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (51, 4, N'08', N'Flores')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (52, 4, N'09', N'San Pablo')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (53, 4, N'10', N'Sarapiquí')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (54, 5, N'01', N'Liberia')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (55, 5, N'02', N'Nicoya')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (56, 5, N'03', N'Santa Cruz')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (57, 5, N'04', N'Bagaces')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (58, 5, N'05', N'Carrillo')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (59, 5, N'06', N'Cañas')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (60, 5, N'07', N'Abangáres')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (61, 5, N'08', N'Tilarán')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (62, 5, N'09', N'Nandayure')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (63, 5, N'10', N'La Cruz')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (64, 5, N'11', N'Hojancha')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (65, 6, N'01', N'Puntarenas')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (66, 6, N'02', N'Esparza')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (67, 6, N'03', N'Buenos Aires')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (68, 6, N'04', N'Montes de Oro')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (69, 6, N'05', N'Osa')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (70, 6, N'06', N'Aguirre')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (71, 6, N'07', N'Golfito')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (72, 6, N'08', N'Coto Brus')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (73, 6, N'09', N'Parrita')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (74, 6, N'10', N'Corredores')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (75, 6, N'11', N'Garabito')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (76, 7, N'01', N'Limón')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (77, 7, N'02', N'Pococí')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (78, 7, N'03', N'Siquirres')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (79, 7, N'04', N'Talamanca')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (80, 7, N'05', N'Matina')
GO
INSERT [dbo].[Canton] ([CantonID], [provinciaID], [CantonCodigo], [canton]) VALUES (81, 7, N'06', N'Guácimo')
GO
SET IDENTITY_INSERT [dbo].[Canton] OFF
GO
SET IDENTITY_INSERT [dbo].[Distrito] ON 
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (1, 1, N'01', N'CARMEN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (2, 1, N'02', N'MERCED')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (3, 1, N'03', N'HOSPITAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (4, 1, N'04', N'CATEDRAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (5, 1, N'05', N'ZAPOTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (6, 1, N'06', N'SAN FRANCISCO DE DOS RÍOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (7, 1, N'07', N'URUCA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (8, 1, N'08', N'MATA REDONDA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (9, 1, N'09', N'PAVAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (10, 1, N'10', N'HATILLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (11, 1, N'11', N'SAN SEBASTIÁN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (12, 2, N'01', N'ESCAZÚ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (13, 2, N'02', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (14, 2, N'03', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (15, 3, N'01', N'DESAMPARADOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (16, 3, N'02', N'SAN MIGUEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (17, 3, N'03', N'SAN JUAN DE DIOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (18, 3, N'04', N'SAN RAFAEL ARRIBA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (19, 3, N'05', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (20, 3, N'06', N'FRAILES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (21, 3, N'07', N'PATARRÁ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (22, 3, N'08', N'SAN CRISTÓBAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (23, 3, N'09', N'ROSARIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (24, 3, N'10', N'DAMAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (25, 3, N'11', N'SAN RAFAEL ABAJO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (26, 3, N'12', N'GRAVILIAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (27, 3, N'13', N'LOS GUIDO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (28, 4, N'01', N'SANTIAGO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (29, 4, N'02', N'MERCEDES SUR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (30, 4, N'03', N'BARBACOAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (31, 4, N'04', N'GRIFO ALTO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (32, 4, N'05', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (33, 4, N'06', N'CANDELARITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (34, 4, N'07', N'DESAMPARADITOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (35, 4, N'08', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (36, 4, N'09', N'CHIRES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (37, 5, N'01', N'SAN MARCOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (38, 5, N'02', N'SAN LORENZO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (39, 5, N'03', N'SAN CARLOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (40, 6, N'01', N'ASERRI')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (41, 6, N'02', N'TARBACA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (42, 6, N'03', N'VUELTA DE JORCO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (43, 6, N'04', N'SAN GABRIEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (44, 6, N'05', N'LEGUA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (45, 6, N'06', N'MONTERREY')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (46, 6, N'07', N'SALITRILLOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (47, 7, N'01', N'COLÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (48, 7, N'02', N'GUAYABO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (49, 7, N'03', N'TABARCIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (50, 7, N'04', N'PIEDRAS NEGRAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (51, 7, N'05', N'PICAGRES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (52, 7, N'06', N'JARIS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (53, 7, N'07', N'QUITIRRISI')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (54, 8, N'01', N'GUADALUPE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (55, 8, N'02', N'SAN FRANCISCO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (56, 8, N'03', N'CALLE BLANCOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (57, 8, N'04', N'MATA DE PLÁTANO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (58, 8, N'05', N'IPÍS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (59, 8, N'06', N'RANCHO REDONDO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (60, 8, N'07', N'PURRAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (61, 9, N'01', N'SANTA ANA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (62, 9, N'02', N'SALITRAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (63, 9, N'03', N'POZOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (64, 9, N'04', N'URUCA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (65, 9, N'05', N'PIEDADES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (66, 9, N'06', N'BRASIL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (67, 10, N'01', N'ALAJUELITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (68, 10, N'02', N'SAN JOSECITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (69, 10, N'03', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (70, 10, N'04', N'CONCEPCIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (71, 10, N'05', N'SAN FELIPE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (72, 11, N'01', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (73, 11, N'02', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (74, 11, N'03', N'DULCE NOMBRE DE JESÚS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (75, 11, N'04', N'PATALILLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (76, 11, N'05', N'CASCAJAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (77, 12, N'01', N'SAN IGNACIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (78, 12, N'02', N'GUAITIL Villa')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (79, 12, N'03', N'PALMICHAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (80, 12, N'04', N'CANGREJAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (81, 12, N'05', N'SABANILLAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (82, 13, N'01', N'SAN JUAN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (83, 13, N'02', N'CINCO ESQUINAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (84, 13, N'03', N'ANSELMO LLORENTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (85, 13, N'04', N'LEON XIII')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (86, 13, N'05', N'COLIMA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (87, 14, N'01', N'SAN VICENTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (88, 14, N'02', N'SAN JERÓNIMO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (89, 14, N'03', N'LA TRINIDAD')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (90, 15, N'01', N'SAN PEDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (91, 15, N'02', N'SABANILLA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (92, 15, N'03', N'MERCEDES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (93, 15, N'04', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (94, 16, N'01', N'SAN PABLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (95, 16, N'02', N'SAN PEDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (96, 16, N'03', N'SAN JUAN DE MATA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (97, 16, N'04', N'SAN LUIS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (98, 16, N'05', N'CARARA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (99, 17, N'01', N'SANTA MARÍA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (100, 17, N'02', N'JARDÍN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (101, 17, N'03', N'COPEY')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (102, 18, N'01', N'CURRIDABAT')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (103, 18, N'02', N'GRANADILLA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (104, 18, N'03', N'SÁNCHEZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (105, 18, N'04', N'TIRRASES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (106, 19, N'01', N'SAN ISIDRO DE EL GENERAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (107, 19, N'02', N'EL GENERAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (108, 19, N'03', N'DANIEL FLORES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (109, 19, N'04', N'RIVAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (110, 19, N'05', N'SAN PEDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (111, 19, N'06', N'PLATANARES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (112, 19, N'07', N'PEJIBAYE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (113, 19, N'08', N'CAJÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (114, 19, N'09', N'BARÚ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (115, 19, N'10', N'RÍO NUEVO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (116, 19, N'11', N'PÁRAMO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (117, 20, N'01', N'SAN PABLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (118, 20, N'02', N'SAN ANDRÉS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (119, 20, N'03', N'LLANO BONITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (120, 20, N'04', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (121, 20, N'05', N'SANTA CRUZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (122, 20, N'06', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (123, 21, N'01', N'ALAJUELA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (124, 21, N'02', N'SAN JOSÉ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (125, 21, N'03', N'CARRIZAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (126, 21, N'04', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (127, 21, N'05', N'GUÁCIMA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (128, 21, N'06', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (129, 21, N'07', N'SABANILLA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (130, 21, N'08', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (131, 21, N'09', N'RÍO SEGUNDO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (132, 21, N'10', N'DESAMPARADOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (133, 21, N'11', N'TURRÚCARES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (134, 21, N'12', N'TAMBOR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (135, 21, N'13', N'GARITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (136, 21, N'14', N'SARAPIQUÍ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (137, 22, N'01', N'SAN RAMÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (138, 22, N'02', N'SANTIAGO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (139, 22, N'03', N'SAN JUAN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (140, 22, N'04', N'PIEDADES NORTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (141, 22, N'05', N'PIEDADES SUR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (142, 22, N'06', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (143, 22, N'07', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (144, 22, N'08', N'ÁNGELES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (145, 22, N'09', N'ALFARO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (146, 22, N'10', N'VOLIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (147, 22, N'11', N'CONCEPCIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (148, 22, N'12', N'ZAPOTAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (149, 22, N'13', N'PEÑAS BLANCAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (150, 23, N'01', N'GRECIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (151, 23, N'02', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (152, 23, N'03', N'SAN JOSÉ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (153, 23, N'04', N'SAN ROQUE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (154, 23, N'05', N'TACARES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (155, 23, N'06', N'RÍO CUARTO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (156, 23, N'07', N'PUENTE DE PIEDRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (157, 23, N'08', N'BOLÍVAR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (158, 24, N'01', N'SAN MATEO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (159, 24, N'02', N'DESMONTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (160, 24, N'03', N'JESÚS MARÍA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (161, 24, N'04', N'LABRADOR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (162, 25, N'01', N'ATENAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (163, 25, N'02', N'JESÚS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (164, 25, N'03', N'MERCEDES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (165, 25, N'04', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (166, 25, N'05', N'CONCEPCIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (167, 25, N'06', N'SAN JOSE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (168, 25, N'07', N'SANTA EULALIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (169, 25, N'08', N'ESCOBAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (170, 26, N'01', N'NARANJO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (171, 26, N'02', N'SAN MIGUEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (172, 26, N'03', N'SAN JOSÉ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (173, 26, N'04', N'CIRRÍ SUR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (174, 26, N'05', N'SAN JERÓNIMO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (175, 26, N'06', N'SAN JUAN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (176, 26, N'07', N'EL ROSARIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (177, 26, N'08', N'PALMITOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (178, 27, N'01', N'PALMARES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (179, 27, N'02', N'ZARAGOZA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (180, 27, N'03', N'BUENOS AIRES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (181, 27, N'04', N'SANTIAGO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (182, 27, N'05', N'CANDELARIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (183, 27, N'06', N'ESQUÍPULAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (184, 27, N'07', N'LA GRANJA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (185, 28, N'01', N'SAN PEDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (186, 28, N'02', N'SAN JUAN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (187, 28, N'03', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (188, 28, N'04', N'CARRILLOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (189, 28, N'05', N'SABANA REDONDA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (190, 29, N'01', N'OROTINA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (191, 29, N'02', N'EL MASTATE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (192, 29, N'03', N'HACIENDA VIEJA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (193, 29, N'04', N'COYOLAR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (194, 29, N'05', N'LA CEIBA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (195, 30, N'01', N'QUESADA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (196, 30, N'02', N'FLORENCIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (197, 30, N'03', N'BUENAVISTA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (198, 30, N'04', N'AGUAS ZARCAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (199, 30, N'05', N'VENECIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (200, 30, N'06', N'PITAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (201, 30, N'07', N'LA FORTUNA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (202, 30, N'08', N'LA TIGRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (203, 30, N'09', N'LA PALMERA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (204, 30, N'10', N'VENADO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (205, 30, N'11', N'CUTRIS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (206, 30, N'12', N'MONTERREY')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (207, 30, N'13', N'POCOSOL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (208, 31, N'01', N'ZARCERO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (209, 31, N'02', N'LAGUNA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (210, 31, N'04', N'GUADALUPE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (211, 31, N'05', N'PALMIRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (212, 31, N'06', N'ZAPOTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (213, 31, N'07', N'BRISAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (214, 32, N'01', N'SARCHÍ NORTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (215, 32, N'02', N'SARCHÍ SUR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (216, 32, N'03', N'TORO AMARILLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (217, 32, N'04', N'SAN PEDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (218, 32, N'05', N'RODRÍGUEZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (219, 33, N'01', N'UPALA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (220, 33, N'02', N'AGUAS CLARAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (221, 33, N'03', N'SAN JOSÉ o PIZOTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (222, 33, N'04', N'BIJAGUA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (223, 33, N'05', N'DELICIAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (224, 33, N'06', N'DOS RÍOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (225, 33, N'07', N'YOLILLAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (226, 33, N'08', N'CANALETE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (227, 34, N'01', N'LOS CHILES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (228, 34, N'02', N'CAÑO NEGRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (229, 34, N'03', N'EL AMPARO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (230, 34, N'04', N'SAN JORGE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (231, 35, N'02', N'BUENAVISTA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (232, 35, N'03', N'COTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (233, 35, N'04', N'KATIRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (234, 36, N'01', N'ORIENTAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (235, 36, N'02', N'OCCIDENTAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (236, 36, N'03', N'CARMEN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (237, 36, N'04', N'SAN NICOLÁS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (238, 36, N'05', N'AGUACALIENTE o SAN FRANCISCO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (239, 36, N'06', N'GUADALUPE o ARENILLA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (240, 36, N'07', N'CORRALILLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (241, 36, N'08', N'TIERRA BLANCA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (242, 36, N'09', N'DULCE NOMBRE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (243, 36, N'10', N'LLANO GRANDE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (244, 36, N'11', N'QUEBRADILLA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (245, 37, N'01', N'PARAÍSO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (246, 37, N'02', N'SANTIAGO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (247, 37, N'03', N'OROSI')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (248, 37, N'04', N'CACHÍ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (249, 37, N'05', N'LLANOS DE SANTA LUCÍA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (250, 38, N'01', N'TRES RÍOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (251, 38, N'02', N'SAN DIEGO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (252, 38, N'03', N'SAN JUAN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (253, 38, N'04', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (254, 38, N'05', N'CONCEPCIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (255, 38, N'06', N'DULCE NOMBRE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (256, 38, N'07', N'SAN RAMÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (257, 38, N'08', N'RÍO AZUL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (258, 39, N'01', N'JUAN VIÑAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (259, 39, N'02', N'TUCURRIQUE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (260, 39, N'03', N'PEJIBAYE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (261, 40, N'01', N'TURRIALBA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (262, 40, N'02', N'LA SUIZA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (263, 40, N'03', N'PERALTA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (264, 40, N'04', N'SANTA CRUZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (265, 40, N'05', N'SANTA TERESITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (266, 40, N'06', N'PAVONES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (267, 40, N'07', N'TUIS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (268, 40, N'08', N'TAYUTIC')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (269, 40, N'09', N'SANTA ROSA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (270, 40, N'10', N'TRES EQUIS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (271, 40, N'11', N'LA ISABEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (272, 40, N'12', N'CHIRRIPÓ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (273, 41, N'01', N'PACAYAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (274, 41, N'02', N'CERVANTES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (275, 41, N'03', N'CAPELLADES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (276, 42, N'01', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (277, 42, N'02', N'COT')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (278, 42, N'03', N'POTRERO CERRADO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (279, 42, N'04', N'CIPRESES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (280, 42, N'05', N'SANTA ROSA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (281, 43, N'01', N'EL TEJAR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (282, 43, N'02', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (283, 43, N'03', N'TOBOSI')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (284, 43, N'04', N'PATIO DE AGUA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (285, 44, N'01', N'HEREDIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (286, 44, N'02', N'MERCEDES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (287, 44, N'03', N'SAN FRANCISCO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (288, 44, N'04', N'ULLOA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (289, 44, N'05', N'VARABLANCA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (290, 45, N'01', N'BARVA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (291, 45, N'02', N'SAN PEDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (292, 45, N'03', N'SAN PABLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (293, 45, N'04', N'SAN ROQUE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (294, 45, N'05', N'SANTA LUCÍA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (295, 45, N'06', N'SAN JOSÉ DE LA MONTAÑA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (296, 46, N'02', N'SAN VICENTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (297, 46, N'03', N'SAN MIGUEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (298, 46, N'04', N'PARACITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (299, 46, N'05', N'SANTO TOMÁS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (300, 46, N'06', N'SANTA ROSA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (301, 46, N'07', N'TURES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (302, 46, N'08', N'PARÁ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (303, 47, N'01', N'SANTA BÁRBARA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (304, 47, N'02', N'SAN PEDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (305, 47, N'03', N'SAN JUAN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (306, 47, N'04', N'JESÚS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (307, 47, N'05', N'SANTO DOMINGO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (308, 47, N'06', N'PURABÁ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (309, 48, N'01', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (310, 48, N'02', N'SAN JOSECITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (311, 48, N'03', N'SANTIAGO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (312, 48, N'04', N'ÁNGELES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (313, 48, N'05', N'CONCEPCIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (314, 49, N'01', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (315, 49, N'02', N'SAN JOSÉ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (316, 49, N'03', N'CONCEPCIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (317, 49, N'04', N'SAN FRANCISCO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (318, 50, N'01', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (319, 50, N'02', N'LA RIBERA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (320, 50, N'03', N'LA ASUNCIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (321, 51, N'01', N'SAN JOAQUÍN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (322, 51, N'02', N'BARRANTES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (323, 51, N'03', N'LLORENTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (324, 52, N'01', N'SAN PABLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (325, 53, N'01', N'PUERTO VIEJO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (326, 53, N'02', N'LA VIRGEN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (327, 53, N'03', N'LAS HORQUETAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (328, 53, N'04', N'LLANURAS DEL GASPAR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (329, 53, N'05', N'CUREÑA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (330, 54, N'01', N'LIBERIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (331, 54, N'02', N'CAÑAS DULCES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (332, 54, N'03', N'MAYORGA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (333, 54, N'04', N'NACASCOLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (334, 54, N'05', N'CURUBANDÉ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (335, 55, N'01', N'NICOYA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (336, 55, N'02', N'MANSIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (337, 55, N'03', N'SAN ANTONIO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (338, 55, N'04', N'QUEBRADA HONDA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (339, 55, N'05', N'SÁMARA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (340, 55, N'06', N'NOSARA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (341, 55, N'07', N'BELÉN DE NOSARITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (342, 56, N'01', N'SANTA CRUZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (343, 56, N'02', N'BOLSÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (344, 56, N'03', N'VEINTISIETE DE ABRIL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (345, 56, N'04', N'TEMPATE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (346, 56, N'05', N'CARTAGENA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (347, 56, N'06', N'CUAJINIQUIL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (348, 56, N'07', N'DIRIÁ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (349, 56, N'08', N'CABO VELAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (350, 56, N'09', N'TAMARINDO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (351, 57, N'01', N'BAGACES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (352, 57, N'02', N'LA FORTUNA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (353, 57, N'03', N'MOGOTE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (354, 57, N'04', N'RÍO NARANJO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (355, 58, N'01', N'FILADELFIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (356, 58, N'02', N'PALMIRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (357, 58, N'03', N'SARDINAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (358, 58, N'04', N'BELÉN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (359, 59, N'01', N'CAÑAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (360, 59, N'02', N'PALMIRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (361, 59, N'03', N'SAN MIGUEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (362, 59, N'04', N'BEBEDERO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (363, 59, N'05', N'POROZAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (364, 60, N'01', N'LAS JUNTAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (365, 60, N'02', N'SIERRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (366, 60, N'03', N'SAN JUAN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (367, 60, N'04', N'COLORADO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (368, 61, N'01', N'TILARÁN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (369, 61, N'02', N'QUEBRADA GRANDE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (370, 61, N'03', N'TRONADORA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (371, 61, N'04', N'SANTA ROSA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (372, 61, N'05', N'LÍBANO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (373, 61, N'06', N'TIERRAS MORENAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (374, 61, N'07', N'ARENAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (375, 62, N'01', N'CARMONA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (376, 62, N'02', N'SANTA RITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (377, 62, N'03', N'ZAPOTAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (378, 62, N'04', N'SAN PABLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (379, 62, N'05', N'PORVENIR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (380, 62, N'06', N'BEJUCO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (381, 63, N'01', N'LA CRUZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (382, 63, N'02', N'SANTA CECILIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (383, 63, N'03', N'LA GARITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (384, 63, N'04', N'SANTA ELENA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (385, 64, N'01', N'HOJANCHA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (386, 64, N'02', N'MONTE ROMO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (387, 64, N'03', N'PUERTO CARRILLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (388, 64, N'04', N'HUACAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (389, 65, N'01', N'PUNTARENAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (390, 65, N'02', N'PITAHAYA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (391, 65, N'03', N'CHOMES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (392, 65, N'04', N'LEPANTO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (393, 65, N'05', N'PAQUERA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (394, 65, N'06', N'MANZANILLO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (395, 65, N'07', N'GUACIMAL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (396, 65, N'08', N'BARRANCA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (397, 65, N'09', N'MONTE VERDE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (398, 65, N'11', N'CÓBANO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (399, 65, N'12', N'CHACARITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (400, 65, N'13', N'CHIRA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (401, 65, N'14', N'ACAPULCO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (402, 65, N'15', N'EL ROBLE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (403, 65, N'16', N'ARANCIBIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (404, 66, N'01', N'ESPÍRITU SANTO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (405, 66, N'02', N'SAN JUAN GRANDE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (406, 66, N'03', N'MACACONA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (407, 66, N'04', N'SAN RAFAEL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (408, 66, N'05', N'SAN JERÓNIMO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (409, 66, N'06', N'CALDERA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (410, 67, N'01', N'BUENOS AIRES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (411, 67, N'02', N'VOLCÁN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (412, 67, N'03', N'POTRERO GRANDE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (413, 67, N'04', N'BORUCA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (414, 67, N'05', N'PILAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (415, 67, N'06', N'COLINAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (416, 67, N'07', N'CHÁNGUENA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (417, 67, N'08', N'BIOLLEY')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (418, 67, N'09', N'BRUNKA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (419, 68, N'01', N'MIRAMAR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (420, 68, N'02', N'LA UNIÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (421, 68, N'03', N'SAN ISIDRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (422, 69, N'01', N'PUERTO CORTÉS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (423, 69, N'02', N'PALMAR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (424, 69, N'03', N'SIERPE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (425, 69, N'04', N'BAHÍA BALLENA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (426, 69, N'05', N'PIEDRAS BLANCAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (427, 69, N'06', N'BAHÍA DRAKE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (428, 70, N'01', N'QUEPOS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (429, 70, N'02', N'SAVEGRE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (430, 70, N'03', N'NARANJITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (431, 71, N'01', N'GOLFITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (432, 71, N'02', N'PUERTO JIMÉNEZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (433, 71, N'03', N'GUAYCARÁ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (434, 71, N'04', N'PAVÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (435, 72, N'01', N'SAN VITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (436, 72, N'02', N'SABALITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (437, 72, N'03', N'AGUABUENA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (438, 72, N'04', N'LIMONCITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (439, 72, N'05', N'PITTIER')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (440, 72, N'06', N'GUTIERREZ BRAUN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (441, 73, N'01', N'PARRITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (442, 74, N'01', N'CORREDOR')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (443, 74, N'02', N'LA CUESTA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (444, 74, N'03', N'CANOAS')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (445, 74, N'04', N'LAUREL')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (446, 75, N'01', N'JACÓ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (447, 75, N'02', N'TÁRCOLES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (448, 76, N'01', N'LIMÓN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (449, 76, N'02', N'VALLE LA ESTRELLA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (450, 76, N'04', N'MATAMA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (451, 77, N'01', N'GUÁPILES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (452, 77, N'02', N'JIMÉNEZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (453, 77, N'03', N'RITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (454, 77, N'04', N'ROXANA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (455, 77, N'05', N'CARIARI')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (456, 77, N'06', N'COLORADO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (457, 77, N'07', N'LA COLONIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (458, 78, N'01', N'SIQUIRRES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (459, 78, N'02', N'PACUARITO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (460, 78, N'03', N'FLORIDA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (461, 78, N'04', N'GERMANIA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (462, 78, N'05', N'EL CAIRO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (463, 78, N'06', N'ALEGRÍA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (464, 79, N'01', N'BRATSI')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (465, 79, N'02', N'SIXAOLA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (466, 79, N'03', N'CAHUITA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (467, 79, N'04', N'TELIRE')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (468, 80, N'01', N'MATINA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (469, 80, N'02', N'BATÁN')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (470, 80, N'03', N'CARRANDI')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (471, 81, N'01', N'GUÁCIMO')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (472, 81, N'02', N'MERCEDES')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (473, 81, N'03', N'POCORA')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (474, 81, N'04', N'RÍO JIMÉNEZ')
GO
INSERT [dbo].[Distrito] ([DistritoID], [CantonID], [Codigodistrito], [distrito]) VALUES (475, 81, N'05', N'DUACARÍ')
GO
SET IDENTITY_INSERT [dbo].[Distrito] OFF
GO
SET IDENTITY_INSERT [dbo].[ImpuestoRenta] ON 
GO
INSERT [dbo].[ImpuestoRenta] ([ImpuestoRentaID], [RangoIngreso], [Porcentaje]) VALUES (1, N'De 0 a 1.060.000 (no sujeto)', 0)
GO
INSERT [dbo].[ImpuestoRenta] ([ImpuestoRentaID], [RangoIngreso], [Porcentaje]) VALUES (2, N'De 1.060.001 a 2.120.000', 10)
GO
INSERT [dbo].[ImpuestoRenta] ([ImpuestoRentaID], [RangoIngreso], [Porcentaje]) VALUES (3, N'De 2.120.001 a 3.180.000', 15)
GO
INSERT [dbo].[ImpuestoRenta] ([ImpuestoRentaID], [RangoIngreso], [Porcentaje]) VALUES (4, N'De 3.180.001 a 4.240.000', 20)
GO
INSERT [dbo].[ImpuestoRenta] ([ImpuestoRentaID], [RangoIngreso], [Porcentaje]) VALUES (5, N'De 4.240.001 a 5.300.000', 25)
GO
INSERT [dbo].[ImpuestoRenta] ([ImpuestoRentaID], [RangoIngreso], [Porcentaje]) VALUES (6, N'Más de 5.300.000', 30)
GO
SET IDENTITY_INSERT [dbo].[ImpuestoRenta] OFF
GO
SET IDENTITY_INSERT [dbo].[provincia] ON 
GO
INSERT [dbo].[provincia] ([provinciaID], [provincia]) VALUES (1, N'San José')
GO
INSERT [dbo].[provincia] ([provinciaID], [provincia]) VALUES (2, N'Alajuela')
GO
INSERT [dbo].[provincia] ([provinciaID], [provincia]) VALUES (3, N'Cartago')
GO
INSERT [dbo].[provincia] ([provinciaID], [provincia]) VALUES (4, N'Heredia')
GO
INSERT [dbo].[provincia] ([provinciaID], [provincia]) VALUES (5, N'Guanacaste')
GO
INSERT [dbo].[provincia] ([provinciaID], [provincia]) VALUES (6, N'Puntarenas')
GO
INSERT [dbo].[provincia] ([provinciaID], [provincia]) VALUES (7, N'Limón')
GO
SET IDENTITY_INSERT [dbo].[provincia] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDeducciones] ON 
GO
INSERT [dbo].[TipoDeducciones] ([TipoDeduccionId], [DeduccionNombre], [DeduccionPorcentaje]) VALUES (1, N'Deducciones voluntarias:', NULL)
GO
INSERT [dbo].[TipoDeducciones] ([TipoDeduccionId], [DeduccionNombre], [DeduccionPorcentaje]) VALUES (2, N'Deducciones obligatorias', NULL)
GO
SET IDENTITY_INSERT [dbo].[TipoDeducciones] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPermisos] ON 
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (1, N'Permiso por Maternidad')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (2, N'Permiso por Paternidad')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (3, N'Permiso por Lactancia')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (4, N'Permiso por Duelo')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (5, N'Permiso por Citación Judicial')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (6, N'Permiso para Votaciones')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (7, N'Permiso para Donación de Sangre')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (8, N'Permiso por Incapacidad Médica')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (9, N'Permiso por Adopción')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (10, N'Permiso por Emergencias Nacionales')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (11, N'Permiso para Bomberos o Socorristas')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (12, N'Permiso por Huelgas Autorizadas')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (13, N'Permiso para Asuntos Familiares')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (14, N'Permiso para Estudios')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (15, N'Permiso por Matrimonio')
GO
INSERT [dbo].[TipoPermisos] ([TipoPermisoID], [TipoPermiso]) VALUES (16, N'Permiso por Acompañamiento Médico')
GO
SET IDENTITY_INSERT [dbo].[TipoPermisos] OFF
GO
ALTER TABLE [dbo].[Departamentos] ADD  DEFAULT ((1)) FOR [DepartamentoStatus]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((1)) FOR [RolStatus]
GO
ALTER TABLE [dbo].[Canton]  WITH CHECK ADD  CONSTRAINT [FK_Canton_provincia] FOREIGN KEY([provinciaID])
REFERENCES [dbo].[provincia] ([provinciaID])
GO
ALTER TABLE [dbo].[Canton] CHECK CONSTRAINT [FK_Canton_provincia]
GO
ALTER TABLE [dbo].[Distrito]  WITH CHECK ADD  CONSTRAINT [FK_Distrito_Canton] FOREIGN KEY([CantonID])
REFERENCES [dbo].[Canton] ([CantonID])
GO
ALTER TABLE [dbo].[Distrito] CHECK CONSTRAINT [FK_Distrito_Canton]
GO
ALTER TABLE [dbo].[HorasExtra]  WITH CHECK ADD  CONSTRAINT [FK_HorasExtra_TipoJornada] FOREIGN KEY([TipoJornadaID])
REFERENCES [dbo].[TipoJornada] ([TipoJornadaID])
GO
ALTER TABLE [dbo].[HorasExtra] CHECK CONSTRAINT [FK_HorasExtra_TipoJornada]
GO
ALTER TABLE [dbo].[HorasExtra]  WITH CHECK ADD  CONSTRAINT [FK_HorasExtra_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[HorasExtra] CHECK CONSTRAINT [FK_HorasExtra_Usuarios]
GO
ALTER TABLE [dbo].[Liquidaciones]  WITH CHECK ADD  CONSTRAINT [FK_Liquidaciones_TipoLiquidaciones] FOREIGN KEY([TipoLiquidacionId])
REFERENCES [dbo].[TipoLiquidaciones] ([TipoLiquidacionId])
GO
ALTER TABLE [dbo].[Liquidaciones] CHECK CONSTRAINT [FK_Liquidaciones_TipoLiquidaciones]
GO
ALTER TABLE [dbo].[Liquidaciones]  WITH CHECK ADD  CONSTRAINT [FK_Liquidaciones_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Liquidaciones] CHECK CONSTRAINT [FK_Liquidaciones_Usuarios]
GO
ALTER TABLE [dbo].[logs]  WITH CHECK ADD  CONSTRAINT [FK_logs_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[logs] CHECK CONSTRAINT [FK_logs_Usuarios]
GO
ALTER TABLE [dbo].[Marcas]  WITH CHECK ADD  CONSTRAINT [FK_Marcas_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Marcas] CHECK CONSTRAINT [FK_Marcas_Usuarios]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_TipoPermisos] FOREIGN KEY([TipoPermisoId])
REFERENCES [dbo].[TipoPermisos] ([TipoPermisoID])
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_Permisos_TipoPermisos]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_Permisos_Usuarios]
GO
ALTER TABLE [dbo].[Permisos]  WITH CHECK ADD  CONSTRAINT [FK_Permisos_Usuarios1] FOREIGN KEY([UsuarioIDAprobadoPor])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Permisos] CHECK CONSTRAINT [FK_Permisos_Usuarios1]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_ImpuestoRenta] FOREIGN KEY([ImpuestoRentaID])
REFERENCES [dbo].[ImpuestoRenta] ([ImpuestoRentaID])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_ImpuestoRenta]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_TipoDeducciones] FOREIGN KEY([TipoDeduccionId])
REFERENCES [dbo].[TipoDeducciones] ([TipoDeduccionId])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_TipoDeducciones]
GO
ALTER TABLE [dbo].[Planilla]  WITH CHECK ADD  CONSTRAINT [FK_Planilla_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Planilla] CHECK CONSTRAINT [FK_Planilla_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Canton] FOREIGN KEY([CantonID])
REFERENCES [dbo].[Canton] ([CantonID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Canton]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Departamentos] FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[Departamentos] ([DepartamentoID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Departamentos]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Distrito] FOREIGN KEY([DistritoID])
REFERENCES [dbo].[Distrito] ([DistritoID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Distrito]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_provincia] FOREIGN KEY([provinciaID])
REFERENCES [dbo].[provincia] ([provinciaID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_provincia]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Roles] FOREIGN KEY([RolID])
REFERENCES [dbo].[Roles] ([RolID])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Roles]
GO
ALTER TABLE [dbo].[Vacaciones]  WITH CHECK ADD  CONSTRAINT [FK_Vacaciones_Usuarios] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuarios] ([UsuarioID])
GO
ALTER TABLE [dbo].[Vacaciones] CHECK CONSTRAINT [FK_Vacaciones_Usuarios]
GO

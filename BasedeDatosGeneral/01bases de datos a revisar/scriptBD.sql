USE [SEVRCUC]
GO
/****** Object:  Table [dbo].[AdministraciondeRiesgos]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministraciondeRiesgos](
	[CodigoAdministracion] [int] IDENTITY(1,1) NOT NULL,
	[CodigoRiesgo] [int] NOT NULL,
	[ToleranciadeRiesgo] [varchar](20) NOT NULL,
	[idGradoDeAfectacion] [int] NOT NULL,
	[Importanciadelodelobjetivo] [varchar](100) NOT NULL,
	[Variaciondelnivelderiesgo] [int] NOT NULL,
	[Analisiscosto] [decimal](18, 0) NOT NULL,
	[idNiveldeRiesgoAceptable] [int] NULL,
	[ResultadoEvaluacion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoAdministracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[IdArea] [int] IDENTITY(1,1) NOT NULL,
	[NombreArea] [varchar](50) NOT NULL,
	[IdFactor] [int] NOT NULL,
	[IdBloque] [int] NOT NULL,
	[IdTipodeRiesgo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aspecto]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aspecto](
	[IdAspecto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[IdFactor] [int] NOT NULL,
	[IDDepartamento] [int] NOT NULL,
	[IdBloque] [int] NOT NULL,
	[IdTipodeRiesgo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAspecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[IDDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Departam__5BDCB260B8D07D77] PRIMARY KEY CLUSTERED 
(
	[IDDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepartamentoXBloque]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartamentoXBloque](
	[IdBloque] [int] IDENTITY(1,1) NOT NULL,
	[NombreBloque] [varchar](100) NOT NULL,
	[IDDepartamento] [int] NOT NULL,
	[IdFactor] [int] NOT NULL,
	[IdTipodeRiesgo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBloque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dependencia]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dependencia](
	[IDDependenciaCarrera] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Dependen__20494259E023DC07] PRIMARY KEY CLUSTERED 
(
	[IDDependenciaCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirecciondeRiesgo]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirecciondeRiesgo](
	[id_riesgo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_riesgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvaluacionRiesgoInherente]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluacionRiesgoInherente](
	[RiesgoInherente] [int] IDENTITY(1,1) NOT NULL,
	[CodigoRiesgo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[idProbabilidad] [int] NOT NULL,
	[idImpacto] [int] NOT NULL,
	[NiveldeRiesgoInherente] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RiesgoInherente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactorRiesgo]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactorRiesgo](
	[IdFactor] [int] IDENTITY(1,1) NOT NULL,
	[NombreFactor] [varchar](100) NOT NULL,
	[IdTipodeRiesgo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFactor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradoDeAfectacion]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradoDeAfectacion](
	[idGradoDeAfectacion] [int] IDENTITY(1,1) NOT NULL,
	[GradoAfectacion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGradoDeAfectacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificaciondeRiesgoEspecifico]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificaciondeRiesgoEspecifico](
	[IdentificacionEspecifico] [int] NOT NULL,
	[CodigoRiesgo] [int] NOT NULL,
	[ObjetivodelProceso] [varchar](100) NOT NULL,
	[CausaEspecifica] [varchar](100) NOT NULL,
	[id_riesgo] [int] NULL,
	[DirrecciondeRiesgo] [varchar](30) NULL,
	[DescripciondelaCausa] [varchar](300) NOT NULL,
	[DescripciondelEvento] [varchar](300) NOT NULL,
	[DescripciondelaConsecuencia] [varchar](300) NOT NULL,
	[FechaIdentificaciondeRiesgo] [datetime] NOT NULL,
	[idInteresados] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdentificacionEspecifico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificacionRiesgoGeneral]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificacionRiesgoGeneral](
	[IdentificacionGeneral] [int] IDENTITY(1,1) NOT NULL,
	[CodigoRiesgo] [int] NOT NULL,
	[ObjetivodelProceso] [varchar](100) NULL,
	[Causa] [varchar](300) NOT NULL,
	[IDTipoCausa] [int] NOT NULL,
	[DefinicionCausa] [varchar](300) NOT NULL,
	[CategoriaFactor] [varchar](100) NOT NULL,
	[SubCategoriaFactor] [varchar](100) NULL,
	[DescripciondelaCausa] [varchar](300) NOT NULL,
	[DescripciondelEvento] [varchar](300) NOT NULL,
	[DescripcióndelaConsecuencia] [varchar](300) NOT NULL,
	[FechaIdentificaciondeRiesgo] [datetime] NOT NULL,
	[IDInteresado] [int] NOT NULL,
 CONSTRAINT [PK__Identifi__EAF47A2E16DBB2C3] PRIMARY KEY CLUSTERED 
(
	[IdentificacionGeneral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Impacto]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impacto](
	[idImpacto] [int] NOT NULL,
	[magnitud] [int] NOT NULL,
	[idTipoMedida] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idImpacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interesado]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interesado](
	[IdInteresado] [int] NOT NULL,
	[NombreInteresado] [varchar](100) NOT NULL,
	[IdTipoInteresado] [int] NOT NULL,
 CONSTRAINT [PK_Interesado] PRIMARY KEY CLUSTERED 
(
	[IdInteresado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedidaImpacto]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedidaImpacto](
	[idTipoMedida] [int] NOT NULL,
	[Medida] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTipoMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NiveldeRiesgoAceptable]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NiveldeRiesgoAceptable](
	[idNiveldeRiesgo] [int] NOT NULL,
	[NiveldeRiesgo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idNiveldeRiesgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Probabilidad]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Probabilidad](
	[idProbabilidad] [int] IDENTITY(1,1) NOT NULL,
	[porcentaje] [varchar](10) NULL,
	[posibilidades] [varchar](10) NULL,
	[posibilidadocurrente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProbabilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Riesgo]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Riesgo](
	[CodigoRiesgo] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](300) NULL,
	[IDDepartamento] [int] NOT NULL,
	[IdBloque] [int] NOT NULL,
	[IdFactor] [int] NULL,
	[IdTipodeRiesgo] [int] NOT NULL,
	[IdAspecto] [int] NULL,
 CONSTRAINT [PK_Riesgo] PRIMARY KEY CLUSTERED 
(
	[CodigoRiesgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCausaRiesgoGeneral]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCausaRiesgoGeneral](
	[IdTipoCausa] [int] IDENTITY(1,1) NOT NULL,
	[TipoCausa] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoCausa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipodeRiesgo]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipodeRiesgo](
	[IdTipodeRiesgo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK__TipodeRi__043C4935BDBD0257] PRIMARY KEY CLUSTERED 
(
	[IdTipodeRiesgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPoblacion]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPoblacion](
	[IdTipoPoblacion] [int] NOT NULL,
	[TipoPoblacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoPoblacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoPoblacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 18/7/2021 22:15:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[IDDepartamento] [int] NOT NULL,
	[IDDependenciaCarrera] [int] NULL,
	[Contrasena] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([IDDepartamento], [Nombre]) VALUES (1, N'Administracion')
INSERT [dbo].[Departamento] ([IDDepartamento], [Nombre]) VALUES (2, N'Academia')
INSERT [dbo].[Departamento] ([IDDepartamento], [Nombre]) VALUES (3, N'DECAT')
INSERT [dbo].[Departamento] ([IDDepartamento], [Nombre]) VALUES (4, N'DPD')
INSERT [dbo].[Departamento] ([IDDepartamento], [Nombre]) VALUES (5, N'Decanatura')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Dependencia] ON 

INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (1, N'DAF-Gestion Administrativa Financiera')
INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (2, N'REG- Gestión Depto de Registro')
INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (3, N'FIN- Gestion Depto Financiero')
INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (4, N'GIR- Gestion Depto de Gestion Institucional de Recurso Humano')
INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (5, N'BYD- Gestion Depto de Blibliteca y Documentacion')
INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (6, N'SOP-Depto Servicios Operativos-Gestion Administrativa')
INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (7, N'UMA- Depto Servicios Operativos-Mantenimiento')
INSERT [dbo].[Dependencia] ([IDDependenciaCarrera], [Nombre]) VALUES (8, N'UMA- Depto Servicios Operativos-Consejeria')
SET IDENTITY_INSERT [dbo].[Dependencia] OFF
GO
SET IDENTITY_INSERT [dbo].[TipodeRiesgo] ON 

INSERT [dbo].[TipodeRiesgo] ([IdTipodeRiesgo], [Nombre]) VALUES (1, N'General')
INSERT [dbo].[TipodeRiesgo] ([IdTipodeRiesgo], [Nombre]) VALUES (2, N'Especifico')
SET IDENTITY_INSERT [dbo].[TipodeRiesgo] OFF
GO
ALTER TABLE [dbo].[AdministraciondeRiesgos]  WITH CHECK ADD  CONSTRAINT [FK_AdministracionriesgosGradoAfectacion] FOREIGN KEY([idGradoDeAfectacion])
REFERENCES [dbo].[GradoDeAfectacion] ([idGradoDeAfectacion])
GO
ALTER TABLE [dbo].[AdministraciondeRiesgos] CHECK CONSTRAINT [FK_AdministracionriesgosGradoAfectacion]
GO
ALTER TABLE [dbo].[AdministraciondeRiesgos]  WITH CHECK ADD  CONSTRAINT [FKAdministraciondeRiesgosRiesgoAceptable] FOREIGN KEY([idNiveldeRiesgoAceptable])
REFERENCES [dbo].[NiveldeRiesgoAceptable] ([idNiveldeRiesgo])
GO
ALTER TABLE [dbo].[AdministraciondeRiesgos] CHECK CONSTRAINT [FKAdministraciondeRiesgosRiesgoAceptable]
GO
ALTER TABLE [dbo].[AdministraciondeRiesgos]  WITH CHECK ADD  CONSTRAINT [FKRiesgoAdministracion] FOREIGN KEY([CodigoRiesgo])
REFERENCES [dbo].[Riesgo] ([CodigoRiesgo])
GO
ALTER TABLE [dbo].[AdministraciondeRiesgos] CHECK CONSTRAINT [FKRiesgoAdministracion]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [Area_Bloque] FOREIGN KEY([IdBloque])
REFERENCES [dbo].[DepartamentoXBloque] ([IdBloque])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [Area_Bloque]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [Area_Factor] FOREIGN KEY([IdFactor])
REFERENCES [dbo].[FactorRiesgo] ([IdFactor])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [Area_Factor]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [Area_TipodeRiesgo] FOREIGN KEY([IdTipodeRiesgo])
REFERENCES [dbo].[TipodeRiesgo] ([IdTipodeRiesgo])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [Area_TipodeRiesgo]
GO
ALTER TABLE [dbo].[Aspecto]  WITH CHECK ADD  CONSTRAINT [AspectoDepartamentoXBloque] FOREIGN KEY([IdBloque])
REFERENCES [dbo].[DepartamentoXBloque] ([IdBloque])
GO
ALTER TABLE [dbo].[Aspecto] CHECK CONSTRAINT [AspectoDepartamentoXBloque]
GO
ALTER TABLE [dbo].[Aspecto]  WITH CHECK ADD  CONSTRAINT [AspectoFactorRiesgo] FOREIGN KEY([IdFactor])
REFERENCES [dbo].[FactorRiesgo] ([IdFactor])
GO
ALTER TABLE [dbo].[Aspecto] CHECK CONSTRAINT [AspectoFactorRiesgo]
GO
ALTER TABLE [dbo].[Aspecto]  WITH CHECK ADD  CONSTRAINT [AspectoTipoRiesgo] FOREIGN KEY([IdTipodeRiesgo])
REFERENCES [dbo].[TipodeRiesgo] ([IdTipodeRiesgo])
GO
ALTER TABLE [dbo].[Aspecto] CHECK CONSTRAINT [AspectoTipoRiesgo]
GO
ALTER TABLE [dbo].[Aspecto]  WITH CHECK ADD  CONSTRAINT [AspectoXDepartamento] FOREIGN KEY([IDDepartamento])
REFERENCES [dbo].[Departamento] ([IDDepartamento])
GO
ALTER TABLE [dbo].[Aspecto] CHECK CONSTRAINT [AspectoXDepartamento]
GO
ALTER TABLE [dbo].[DepartamentoXBloque]  WITH CHECK ADD  CONSTRAINT [FKDepartamento_Bloque] FOREIGN KEY([IDDepartamento])
REFERENCES [dbo].[Departamento] ([IDDepartamento])
GO
ALTER TABLE [dbo].[DepartamentoXBloque] CHECK CONSTRAINT [FKDepartamento_Bloque]
GO
ALTER TABLE [dbo].[DepartamentoXBloque]  WITH CHECK ADD  CONSTRAINT [FKDepartamentoBloqueFactor] FOREIGN KEY([IdFactor])
REFERENCES [dbo].[FactorRiesgo] ([IdFactor])
GO
ALTER TABLE [dbo].[DepartamentoXBloque] CHECK CONSTRAINT [FKDepartamentoBloqueFactor]
GO
ALTER TABLE [dbo].[DepartamentoXBloque]  WITH CHECK ADD  CONSTRAINT [FKDepartamentoBloqueTipoRiesgo] FOREIGN KEY([IdTipodeRiesgo])
REFERENCES [dbo].[TipodeRiesgo] ([IdTipodeRiesgo])
GO
ALTER TABLE [dbo].[DepartamentoXBloque] CHECK CONSTRAINT [FKDepartamentoBloqueTipoRiesgo]
GO
ALTER TABLE [dbo].[EvaluacionRiesgoInherente]  WITH CHECK ADD  CONSTRAINT [FKEvaluacionInherente_Impacto] FOREIGN KEY([idImpacto])
REFERENCES [dbo].[Impacto] ([idImpacto])
GO
ALTER TABLE [dbo].[EvaluacionRiesgoInherente] CHECK CONSTRAINT [FKEvaluacionInherente_Impacto]
GO
ALTER TABLE [dbo].[EvaluacionRiesgoInherente]  WITH CHECK ADD  CONSTRAINT [FKEvaluacionInherente_Probabilidad] FOREIGN KEY([idProbabilidad])
REFERENCES [dbo].[Probabilidad] ([idProbabilidad])
GO
ALTER TABLE [dbo].[EvaluacionRiesgoInherente] CHECK CONSTRAINT [FKEvaluacionInherente_Probabilidad]
GO
ALTER TABLE [dbo].[EvaluacionRiesgoInherente]  WITH CHECK ADD  CONSTRAINT [FKRiesgoNAceptable] FOREIGN KEY([CodigoRiesgo])
REFERENCES [dbo].[Riesgo] ([CodigoRiesgo])
GO
ALTER TABLE [dbo].[EvaluacionRiesgoInherente] CHECK CONSTRAINT [FKRiesgoNAceptable]
GO
ALTER TABLE [dbo].[FactorRiesgo]  WITH CHECK ADD  CONSTRAINT [FKFactorRiesgoTipoTipoRiesgo] FOREIGN KEY([IdTipodeRiesgo])
REFERENCES [dbo].[TipodeRiesgo] ([IdTipodeRiesgo])
GO
ALTER TABLE [dbo].[FactorRiesgo] CHECK CONSTRAINT [FKFactorRiesgoTipoTipoRiesgo]
GO
ALTER TABLE [dbo].[IdentificaciondeRiesgoEspecifico]  WITH CHECK ADD  CONSTRAINT [FKCodigoriesgo_Direccionriesgo] FOREIGN KEY([id_riesgo])
REFERENCES [dbo].[DirecciondeRiesgo] ([id_riesgo])
GO
ALTER TABLE [dbo].[IdentificaciondeRiesgoEspecifico] CHECK CONSTRAINT [FKCodigoriesgo_Direccionriesgo]
GO
ALTER TABLE [dbo].[IdentificaciondeRiesgoEspecifico]  WITH CHECK ADD  CONSTRAINT [FKRiesgoEspecificoInteresado] FOREIGN KEY([idInteresados])
REFERENCES [dbo].[Interesado] ([IdInteresado])
GO
ALTER TABLE [dbo].[IdentificaciondeRiesgoEspecifico] CHECK CONSTRAINT [FKRiesgoEspecificoInteresado]
GO
ALTER TABLE [dbo].[IdentificaciondeRiesgoEspecifico]  WITH CHECK ADD  CONSTRAINT [FKRiesgoIdentEspecifico] FOREIGN KEY([CodigoRiesgo])
REFERENCES [dbo].[Riesgo] ([CodigoRiesgo])
GO
ALTER TABLE [dbo].[IdentificaciondeRiesgoEspecifico] CHECK CONSTRAINT [FKRiesgoIdentEspecifico]
GO
ALTER TABLE [dbo].[IdentificacionRiesgoGeneral]  WITH CHECK ADD  CONSTRAINT [FKIdentificacionCausaRiesgo] FOREIGN KEY([IDTipoCausa])
REFERENCES [dbo].[TipoCausaRiesgoGeneral] ([IdTipoCausa])
GO
ALTER TABLE [dbo].[IdentificacionRiesgoGeneral] CHECK CONSTRAINT [FKIdentificacionCausaRiesgo]
GO
ALTER TABLE [dbo].[IdentificacionRiesgoGeneral]  WITH CHECK ADD  CONSTRAINT [FKRiesgoGeneralInteresado] FOREIGN KEY([IDInteresado])
REFERENCES [dbo].[Interesado] ([IdInteresado])
GO
ALTER TABLE [dbo].[IdentificacionRiesgoGeneral] CHECK CONSTRAINT [FKRiesgoGeneralInteresado]
GO
ALTER TABLE [dbo].[IdentificacionRiesgoGeneral]  WITH CHECK ADD  CONSTRAINT [FKRiesgoIdentGeneral] FOREIGN KEY([CodigoRiesgo])
REFERENCES [dbo].[Riesgo] ([CodigoRiesgo])
GO
ALTER TABLE [dbo].[IdentificacionRiesgoGeneral] CHECK CONSTRAINT [FKRiesgoIdentGeneral]
GO
ALTER TABLE [dbo].[Impacto]  WITH CHECK ADD  CONSTRAINT [FKMedidaXImpacto] FOREIGN KEY([idTipoMedida])
REFERENCES [dbo].[MedidaImpacto] ([idTipoMedida])
GO
ALTER TABLE [dbo].[Impacto] CHECK CONSTRAINT [FKMedidaXImpacto]
GO
ALTER TABLE [dbo].[Interesado]  WITH CHECK ADD  CONSTRAINT [FKTipoInteresado] FOREIGN KEY([IdTipoInteresado])
REFERENCES [dbo].[TipoPoblacion] ([IdTipoPoblacion])
GO
ALTER TABLE [dbo].[Interesado] CHECK CONSTRAINT [FKTipoInteresado]
GO
ALTER TABLE [dbo].[Riesgo]  WITH CHECK ADD  CONSTRAINT [FKRiesgoDepartamentoXBloque] FOREIGN KEY([IdBloque])
REFERENCES [dbo].[DepartamentoXBloque] ([IdBloque])
GO
ALTER TABLE [dbo].[Riesgo] CHECK CONSTRAINT [FKRiesgoDepartamentoXBloque]
GO
ALTER TABLE [dbo].[Riesgo]  WITH CHECK ADD  CONSTRAINT [FKRiesgoXAspecto] FOREIGN KEY([IdAspecto])
REFERENCES [dbo].[Aspecto] ([IdAspecto])
GO
ALTER TABLE [dbo].[Riesgo] CHECK CONSTRAINT [FKRiesgoXAspecto]
GO
ALTER TABLE [dbo].[Riesgo]  WITH CHECK ADD  CONSTRAINT [FKRiesgoXDepartamento] FOREIGN KEY([IDDepartamento])
REFERENCES [dbo].[Departamento] ([IDDepartamento])
GO
ALTER TABLE [dbo].[Riesgo] CHECK CONSTRAINT [FKRiesgoXDepartamento]
GO
ALTER TABLE [dbo].[Riesgo]  WITH CHECK ADD  CONSTRAINT [FKRiesgoXFactor] FOREIGN KEY([IdFactor])
REFERENCES [dbo].[FactorRiesgo] ([IdFactor])
GO
ALTER TABLE [dbo].[Riesgo] CHECK CONSTRAINT [FKRiesgoXFactor]
GO
ALTER TABLE [dbo].[Riesgo]  WITH CHECK ADD  CONSTRAINT [FKRiesgoXTipo] FOREIGN KEY([IdTipodeRiesgo])
REFERENCES [dbo].[TipodeRiesgo] ([IdTipodeRiesgo])
GO
ALTER TABLE [dbo].[Riesgo] CHECK CONSTRAINT [FKRiesgoXTipo]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FKDepartamentoUsuario] FOREIGN KEY([IDDepartamento])
REFERENCES [dbo].[Departamento] ([IDDepartamento])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FKDepartamentoUsuario]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FKDependenciaUsuario] FOREIGN KEY([IDDependenciaCarrera])
REFERENCES [dbo].[Dependencia] ([IDDependenciaCarrera])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FKDependenciaUsuario]
GO
/****** Object:  StoredProcedure [dbo].[LoginUsuario]    Script Date: 18/7/2021 22:15:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create pROCEDURE [dbo].[LoginUsuario]
(
@Cedula int,
@Contrasena varchar(10)
)
AS
BEGIN
	select COUNT(*)
	from  Usuarios
	where Cedula=@Cedula and Contrasena=@Contrasena
END
GO
/****** Object:  StoredProcedure [dbo].[Registro]    Script Date: 18/7/2021 22:15:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Registro]
(
@Cedula int,
@Nombre varchar(50),
@Apellidos varchar(100),
@IDDepartamento int,
@IDDependenciaCarrera int,
@Contrasena varchar(10)
)
AS
BEGIN
	insert into Usuarios(Cedula,Nombre,Apellidos,IDDepartamento,IDDependenciaCarrera,Contrasena) 
	values(@Cedula,@Nombre,@Apellidos,@IDDepartamento,@IDDependenciaCarrera,@Contrasena)
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDepartamento]    Script Date: 18/7/2021 22:15:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDepartamento]
AS
BEGIN
	select Nombre
	from Departamento
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDependencia]    Script Date: 18/7/2021 22:15:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectDependencia]
AS
BEGIN
	select Nombre
	from Dependencia
END
GO
/****** Object:  StoredProcedure [dbo].[SelectTipoRiesgo]    Script Date: 18/7/2021 22:15:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectTipoRiesgo] 
AS
BEGIN
	select Nombre
	from TipodeRiesgo
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRegistro]    Script Date: 18/7/2021 22:15:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateRegistro]
(
@Cedula int,
@Nombre varchar(50),
@Apellidos varchar(100),
@IDDepartamento int,
@IDDependenciaCarrera int,
@Contrasena varchar(10)
)
AS
BEGIN
	Update Usuarios
	set Cedula=@Cedula,
	Nombre=@Nombre,
	Apellidos=@Apellidos,
	IDDepartamento=@IDDepartamento,
	IDDependenciaCarrera=@IDDependenciaCarrera,
	Contrasena=@Contrasena
	from Usuarios
END
GO

USE [Vuelos]
GO
/****** Object:  Table [dbo].[Aerolineas]    Script Date: 02/04/2024 13:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aerolineas](
	[IdAerolinea] [int] IDENTITY(1,1) NOT NULL,
	[NombreAerolinea] [varchar](100) NOT NULL,
	[CodePais] [int] NULL,
	[CodigoIATA] [varchar](3) NOT NULL,
	[CodigoICAO] [varchar](4) NULL,
	[FechaFundacion] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[IdCiudad] [int] IDENTITY(1,1) NOT NULL,
	[NombreCiudad] [varchar](100) NOT NULL,
	[CodePais] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CiudadXpais]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiudadXpais](
	[idCiudadPais] [int] IDENTITY(1,1) NOT NULL,
	[IdCiudad] [int] NOT NULL,
	[CodePais] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCiudadPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InicioSesion]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InicioSesion](
	[idInicioSesion] [int] NOT NULL,
	[IdUsuario] [varchar](20) NOT NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Contrasena] [varchar](100) NOT NULL,
	[intentos] [int] NULL,
 CONSTRAINT [PK_InicioSesion] PRIMARY KEY CLUSTERED 
(
	[idInicioSesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[CodePais] [int] IDENTITY(1,1) NOT NULL,
	[IdPais] [int] NOT NULL,
	[Cod_ISO_3166] [char](3) NOT NULL,
	[Cod_ISO] [char](3) NOT NULL,
	[NombrePais] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodePais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaEdicion] [datetime] NULL,
	[FechaDesactivacion] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[IdDepartamento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [varchar](20) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[CodePais] [int] NOT NULL,
	[Correo] [varchar](30) NOT NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [PK__Usuarios__5B65BF97B12E431C] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (1, 4, N'AFG', N'AF ', N'Afganistán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (2, 248, N'ALA', N'AX ', N'Åland')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (3, 8, N'ALB', N'AL ', N'Albania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (4, 276, N'DEU', N'DE ', N'Alemania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (5, 20, N'AND', N'AD ', N'Andorra')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (6, 24, N'AGO', N'AO ', N'Angola')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (7, 660, N'AIA', N'AI ', N'Anguila')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (8, 10, N'ATA', N'AQ ', N'Antártida')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (9, 28, N'ATG', N'AG ', N'Antigua y Barbuda')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (10, 530, N'ANT', N'AN ', N'Antillas Neerlandesas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (11, 682, N'SAU', N'SA ', N'Arabia Saudita')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (12, 12, N'DZA', N'DZ ', N'Argelia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (13, 32, N'ARG', N'AR ', N'Argentina')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (14, 51, N'ARM', N'AM ', N'Armenia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (15, 533, N'ABW', N'AW ', N'Aruba')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (16, 36, N'AUS', N'AU ', N'Australia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (17, 40, N'AUT', N'AT ', N'Austria')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (18, 31, N'AZE', N'AZ ', N'Azerbaiyán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (19, 44, N'BHS', N'BS ', N'Bahamas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (20, 48, N'BHR', N'BH ', N'Bahréin')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (21, 50, N'BGD', N'BD ', N'Bangladesh')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (22, 52, N'BRB', N'BB ', N'Barbados')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (23, 112, N'BLR', N'BY ', N'Bielorrusia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (24, 56, N'BEL', N'BE ', N'Bélgica')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (25, 84, N'BLZ', N'BZ ', N'Belice')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (26, 204, N'BEN', N'BJ ', N'Benín')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (27, 60, N'BMU', N'BM ', N'Bermudas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (28, 64, N'BTN', N'BT ', N'Bután')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (29, 68, N'BOL', N'BO ', N'Bolivia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (30, 70, N'BIH', N'BA ', N'Bosnia y Herzegovina')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (31, 72, N'BWA', N'BW ', N'Botsuana')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (32, 74, N'BVT', N'BV ', N'Isla Bouvet')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (33, 76, N'BRA', N'BR ', N'Brasil')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (34, 96, N'BRN', N'BN ', N'Brunéi')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (35, 100, N'BGR', N'BG ', N'Bulgaria')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (36, 854, N'BFA', N'BF ', N'Burkina Faso')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (37, 108, N'BDI', N'BI ', N'Burundi')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (38, 132, N'CPV', N'CV ', N'Cabo Verde')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (39, 136, N'CYM', N'KY ', N'Islas Caimán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (40, 116, N'KHM', N'KH ', N'Camboya')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (41, 120, N'CMR', N'CM ', N'Camerún')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (42, 124, N'CAN', N'CA ', N'Canadá')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (43, 140, N'CAF', N'CF ', N'República Centroafricana')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (44, 148, N'TCD', N'TD ', N'Chad')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (45, 203, N'CZE', N'CZ ', N'República Checa')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (46, 152, N'CHL', N'CL ', N'Chile')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (47, 156, N'CHN', N'CN ', N'China')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (48, 196, N'CYP', N'CY ', N'Chipre')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (49, 166, N'CCK', N'CC ', N'Islas Cocos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (50, 170, N'COL', N'CO ', N'Colombia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (51, 174, N'COM', N'KM ', N'Comoras')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (52, 178, N'COG', N'CG ', N'República del Congo')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (53, 180, N'COD', N'CD ', N'República Democrática del Congo')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (54, 184, N'COK', N'CK ', N'Islas Cook')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (55, 408, N'PRK', N'KP ', N'Corea del Norte')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (56, 410, N'KOR', N'KR ', N'Corea del Sur')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (57, 384, N'CIV', N'CI ', N'Costa de Marfil')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (58, 188, N'CRI', N'CR ', N'Costa Rica')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (59, 191, N'HRV', N'HR ', N'Croacia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (60, 192, N'CUB', N'CU ', N'Cuba')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (61, 208, N'DNK', N'DK ', N'Dinamarca')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (62, 212, N'DMA', N'DM ', N'Dominica')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (63, 214, N'DOM', N'DO ', N'República Dominicana')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (64, 218, N'ECU', N'EC ', N'Ecuador')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (65, 818, N'EGY', N'EG ', N'Egipto')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (66, 222, N'SLV', N'SV ', N'El Salvador')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (67, 784, N'ARE', N'AE ', N'Emiratos Árabes Unidos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (68, 232, N'ERI', N'ER ', N'Eritrea')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (69, 703, N'SVK', N'SK ', N'Eslovaquia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (70, 705, N'SVN', N'SI ', N'Eslovenia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (71, 724, N'ESP', N'ES ', N'España')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (72, 724, N'ESP', N'EA ', N'España (Ceuta y Melilla)')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (73, 840, N'USA', N'US ', N'Estados Unidos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (74, 581, N'UMI', N'UM ', N'Islas ultramarinas de Estados Unidos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (75, 233, N'EST', N'EE ', N'Estonia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (76, 231, N'ETH', N'ET ', N'Etiopía')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (77, 234, N'FRO', N'FO ', N'Islas Feroe')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (78, 608, N'PHL', N'PH ', N'Filipinas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (79, 246, N'FIN', N'FI ', N'Finlandia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (80, 242, N'FJI', N'FJ ', N'Fiyi')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (81, 250, N'FRA', N'FR ', N'Francia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (82, 266, N'GAB', N'GA ', N'Gabón')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (83, 270, N'GMB', N'GM ', N'Gambia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (84, 268, N'GEO', N'GE ', N'Georgia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (85, 239, N'SGS', N'GS ', N'Islas Georgias del Sur y Sandwich del Sur')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (86, 288, N'GHA', N'GH ', N'Ghana')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (87, 292, N'GIB', N'GI ', N'Gibraltar')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (88, 308, N'GRD', N'GD ', N'Granada')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (89, 300, N'GRC', N'GR ', N'Grecia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (90, 304, N'GRL', N'GL ', N'Groenlandia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (91, 312, N'GLP', N'GP ', N'Guadalupe')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (92, 316, N'GUM', N'GU ', N'Guam')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (93, 320, N'GTM', N'GT ', N'Guatemala')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (94, 254, N'GUF', N'GF ', N'Guayana Francesa')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (95, 831, N'GGY', N'GG ', N'Guernsey')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (96, 324, N'GIN', N'GN ', N'Guinea')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (97, 226, N'GNQ', N'GQ ', N'Guinea Ecuatorial')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (98, 624, N'GNB', N'GW ', N'Guinea-Bissau')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (99, 328, N'GUY', N'GY ', N'Guyana')
GO
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (100, 332, N'HTI', N'HT ', N'Haití')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (101, 334, N'HMD', N'HM ', N'Islas Heard y McDonald')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (102, 340, N'HND', N'HN ', N'Honduras')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (103, 344, N'HKG', N'HK ', N'Hong Kong')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (104, 348, N'HUN', N'HU ', N'Hungría')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (105, 356, N'IND', N'IN ', N'India')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (106, 360, N'IDN', N'ID ', N'Indonesia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (107, 364, N'IRN', N'IR ', N'Irán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (108, 368, N'IRQ', N'IQ ', N'Iraq')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (109, 372, N'IRL', N'IE ', N'Irlanda')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (110, 352, N'ISL', N'IS ', N'Islandia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (111, 376, N'ISR', N'IL ', N'Israel')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (112, 380, N'ITA', N'IT ', N'Italia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (113, 388, N'JAM', N'JM ', N'Jamaica')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (114, 392, N'JPN', N'JP ', N'Japón')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (115, 832, N'JEY', N'JE ', N'Jersey')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (116, 400, N'JOR', N'JO ', N'Jordania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (117, 398, N'KAZ', N'KZ ', N'Kazajistán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (118, 404, N'KEN', N'KE ', N'Kenia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (119, 417, N'KGZ', N'KG ', N'Kirguistán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (120, 296, N'KIR', N'KI ', N'Kiribati')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (121, 414, N'KWT', N'KW ', N'Kuwait')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (122, 418, N'LAO', N'LA ', N'Laos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (123, 426, N'LSO', N'LS ', N'Lesoto')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (124, 428, N'LVA', N'LV ', N'Letonia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (125, 422, N'LBN', N'LB ', N'Líbano')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (126, 430, N'LBR', N'LR ', N'Liberia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (127, 434, N'LBY', N'LY ', N'Libia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (128, 438, N'LIE', N'LI ', N'Liechtenstein')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (129, 440, N'LTU', N'LT ', N'Lituania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (130, 442, N'LUX', N'LU ', N'Luxemburgo')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (131, 446, N'MAC', N'MO ', N'Macao')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (132, 807, N'MKD', N'MK ', N'ARY Macedonia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (133, 450, N'MDG', N'MG ', N'Madagascar')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (134, 458, N'MYS', N'MY ', N'Malasia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (135, 454, N'MWI', N'MW ', N'Malawi')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (136, 462, N'MDV', N'MV ', N'Maldivas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (137, 466, N'MLI', N'ML ', N'Malí')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (138, 470, N'MLT', N'MT ', N'Malta')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (139, 238, N'FLK', N'FK ', N'Islas Malvinas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (140, 833, N'IMN', N'IM ', N'Isla de Man')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (141, 580, N'MNP', N'MP ', N'Islas Marianas del Norte')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (142, 504, N'MAR', N'MA ', N'Marruecos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (143, 584, N'MHL', N'MH ', N'Islas Marshall')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (144, 474, N'MTQ', N'MQ ', N'Martinica')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (145, 480, N'MUS', N'MU ', N'Mauricio')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (146, 478, N'MRT', N'MR ', N'Mauritania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (147, 175, N'MYT', N'YT ', N'Mayotte')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (148, 484, N'MEX', N'MX ', N'México')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (149, 583, N'FSM', N'FM ', N'Micronesia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (150, 498, N'MDA', N'MD ', N'Moldavia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (151, 492, N'MCO', N'MC ', N'Mónaco')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (152, 496, N'MNG', N'MN ', N'Mongolia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (153, 499, N'MNE', N'ME ', N'Montenegro')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (154, 500, N'MSR', N'MS ', N'Montserrat')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (155, 508, N'MOZ', N'MZ ', N'Mozambique')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (156, 104, N'MMR', N'MM ', N'Myanmar')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (157, 516, N'NAM', N'NA ', N'Namibia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (158, 520, N'NRU', N'NR ', N'Nauru')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (159, 162, N'CXR', N'CX ', N'Isla de Navidad')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (160, 524, N'NPL', N'NP ', N'Nepal')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (161, 558, N'NIC', N'NI ', N'Nicaragua')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (162, 562, N'NER', N'NE ', N'Níger')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (163, 566, N'NGA', N'NG ', N'Nigeria')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (164, 570, N'NIU', N'NU ', N'Niue')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (165, 574, N'NFK', N'NF ', N'Norfolk')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (166, 578, N'NOR', N'NO ', N'Noruega')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (167, 540, N'NCL', N'NC ', N'Nueva Caledonia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (168, 554, N'NZL', N'NZ ', N'Nueva Zelanda')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (169, 512, N'OMN', N'OM ', N'Omán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (170, 528, N'NLD', N'NL ', N'Países Bajos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (171, 586, N'PAK', N'PK ', N'Pakistán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (172, 585, N'PLW', N'PW ', N'Palaos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (173, 275, N'PSE', N'PS ', N'Palestina')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (174, 591, N'PAN', N'PA ', N'Panamá')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (175, 598, N'PNG', N'PG ', N'Papúa Nueva Guinea')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (176, 600, N'PRY', N'PY ', N'Paraguay')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (177, 604, N'PER', N'PE ', N'Perú')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (178, 612, N'PCN', N'PN ', N'Islas Pitcairn')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (179, 258, N'PYF', N'PF ', N'Polinesia Francesa')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (180, 616, N'POL', N'PL ', N'Polonia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (181, 620, N'PRT', N'PT ', N'Portugal')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (182, 630, N'PRI', N'PR ', N'Puerto Rico')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (183, 634, N'QAT', N'QA ', N'Qatar')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (184, 826, N'GBR', N'GB ', N'Reino Unido')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (185, 638, N'REU', N'RE ', N'Reunión')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (186, 646, N'RWA', N'RW ', N'Ruanda')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (187, 642, N'ROU', N'RO ', N'Rumania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (188, 643, N'RUS', N'RU ', N'Rusia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (189, 732, N'ESH', N'EH ', N'Sahara Occidental')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (190, 90, N'SLB', N'SB ', N'Islas Salomón')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (191, 882, N'WSM', N'WS ', N'Samoa')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (192, 16, N'ASM', N'AS ', N'Samoa Americana')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (193, 659, N'KNA', N'KN ', N'San Cristóbal y Nieves')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (194, 674, N'SMR', N'SM ', N'San Marino')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (195, 666, N'SPM', N'PM ', N'San Pedro y Miquelón')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (196, 670, N'VCT', N'VC ', N'San Vicente y las Granadinas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (197, 654, N'SHN', N'SH ', N'Santa Helena')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (198, 662, N'LCA', N'LC ', N'Santa Lucía')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (199, 678, N'STP', N'ST ', N'Santo Tomé y Príncipe')
GO
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (200, 686, N'SEN', N'SN ', N'Senegal')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (201, 688, N'SRB', N'RS ', N'Serbia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (202, 690, N'SYC', N'SC ', N'Seychelles')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (203, 694, N'SLE', N'SL ', N'Sierra Leona')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (204, 702, N'SGP', N'SG ', N'Singapur')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (205, 760, N'SYR', N'SY ', N'Siria')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (206, 706, N'SOM', N'SO ', N'Somalia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (207, 144, N'LKA', N'LK ', N'Sri Lanka')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (208, 748, N'SWZ', N'SZ ', N'Suazilandia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (209, 710, N'ZAF', N'ZA ', N'Sudáfrica')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (210, 736, N'SDN', N'SD ', N'Sudán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (211, 752, N'SWE', N'SE ', N'Suecia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (212, 756, N'CHE', N'CH ', N'Suiza')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (213, 740, N'SUR', N'SR ', N'Surinam')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (214, 744, N'SJM', N'SJ ', N'Svalbard y Jan Mayen')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (215, 764, N'THA', N'TH ', N'Tailandia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (216, 158, N'TWN', N'TW ', N'Taiwán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (217, 834, N'TZA', N'TZ ', N'Tanzania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (218, 762, N'TJK', N'TJ ', N'Tayikistán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (219, 86, N'IOT', N'IO ', N'Territorio Británico del Océano Índico')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (220, 260, N'ATF', N'TF ', N'Territorios Australes Franceses')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (221, 626, N'TLS', N'TL ', N'Timor Oriental')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (222, 768, N'TGO', N'TG ', N'Togo')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (223, 772, N'TKL', N'TK ', N'Tokelau')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (224, 776, N'TON', N'TO ', N'Tonga')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (225, 780, N'TTO', N'TT ', N'Trinidad y Tobago')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (226, 788, N'TUN', N'TN ', N'Túnez')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (227, 796, N'TCA', N'TC ', N'Islas Turcas y Caicos')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (228, 795, N'TKM', N'TM ', N'Turkmenistán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (229, 792, N'TUR', N'TR ', N'Turquía')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (230, 798, N'TUV', N'TV ', N'Tuvalu')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (231, 804, N'UKR', N'UA ', N'Ucrania')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (232, 800, N'UGA', N'UG ', N'Uganda')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (233, 858, N'URY', N'UY ', N'Uruguay')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (234, 860, N'UZB', N'UZ ', N'Uzbekistán')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (235, 548, N'VUT', N'VU ', N'Vanuatu')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (236, 336, N'VAT', N'VA ', N'Ciudad del Vaticano')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (237, 862, N'VEN', N'VE ', N'Venezuela')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (238, 704, N'VNM', N'VN ', N'Vietnam')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (239, 92, N'VGB', N'VG ', N'Islas Vírgenes Británicas')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (240, 850, N'VIR', N'VI ', N'Islas Vírgenes Estadounidenses')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (241, 876, N'WLF', N'WF ', N'Wallis y Futuna')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (242, 887, N'YEM', N'YE ', N'Yemen')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (243, 262, N'DJI', N'DJ ', N'Yibuti')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (244, 894, N'ZMB', N'ZM ', N'Zambia')
INSERT [dbo].[Pais] ([CodePais], [IdPais], [Cod_ISO_3166], [Cod_ISO], [NombrePais]) VALUES (245, 716, N'ZWE', N'ZW ', N'Zimbabue')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
ALTER TABLE [dbo].[Aerolineas]  WITH CHECK ADD  CONSTRAINT [FK_Aerolineas_Pais] FOREIGN KEY([CodePais])
REFERENCES [dbo].[Pais] ([CodePais])
GO
ALTER TABLE [dbo].[Aerolineas] CHECK CONSTRAINT [FK_Aerolineas_Pais]
GO
ALTER TABLE [dbo].[CiudadXpais]  WITH CHECK ADD  CONSTRAINT [FK_CiudadXpais_Ciudades] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[CiudadXpais] CHECK CONSTRAINT [FK_CiudadXpais_Ciudades]
GO
ALTER TABLE [dbo].[CiudadXpais]  WITH CHECK ADD  CONSTRAINT [FK_CiudadXpais_Pais] FOREIGN KEY([CodePais])
REFERENCES [dbo].[Pais] ([CodePais])
GO
ALTER TABLE [dbo].[CiudadXpais] CHECK CONSTRAINT [FK_CiudadXpais_Pais]
GO
ALTER TABLE [dbo].[InicioSesion]  WITH CHECK ADD  CONSTRAINT [FK_InicioSesion_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[InicioSesion] CHECK CONSTRAINT [FK_InicioSesion_Usuarios]
GO
ALTER TABLE [dbo].[Rol]  WITH CHECK ADD  CONSTRAINT [FK_Rol_Departamentos] FOREIGN KEY([IdDepartamento])
REFERENCES [dbo].[Departamentos] ([IdDepartamento])
GO
ALTER TABLE [dbo].[Rol] CHECK CONSTRAINT [FK_Rol_Departamentos]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Pais] FOREIGN KEY([CodePais])
REFERENCES [dbo].[Pais] ([CodePais])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Pais]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Rol]
GO
/****** Object:  StoredProcedure [dbo].[SPInicioSesion]    Script Date: 02/04/2024 13:17:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInicioSesion]
(
	@Usuario varchar(100)	,
	@Contrasena varchar(100) 
)
AS
BEGIN
	select 
		* 
	from InicioSesion s with(nolock)
	where 
		s.Contrasena	= @Contrasena and 
		s.Usuario		= @Usuario		
END
GO

USE [ACTIVEID_INA_TEST_ASAMBLEA]
GO
/****** Object:  Table [dbo].[activeInventory]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activeInventory](
	[idActive] [bigint] IDENTITY(1,1) NOT NULL,
	[MainNo] [nvarchar](500) NULL,
	[SubNum] [nvarchar](500) NULL,
	[AssetDescription] [nvarchar](500) NULL,
	[SecondLineAssetDesc] [nvarchar](500) NULL,
	[Qty] [nvarchar](500) NULL,
	[AClass] [nvarchar](500) NULL,
	[InventoryNumber] [nvarchar](500) NOT NULL,
	[PlantCod] [nvarchar](500) NULL,
	[CostCenter] [nvarchar](500) NULL,
	[Location] [nvarchar](500) NULL,
	[AcqValue] [nvarchar](500) NULL,
	[BookVal] [nvarchar](500) NULL,
	[CapDate] [nvarchar](500) NULL,
	[SerNo] [nvarchar](500) NULL,
	[LastInv] [nvarchar](500) NULL,
 CONSTRAINT [PK__activeIn__504E4ED17073AF84] PRIMARY KEY CLUSTERED 
(
	[idActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivosActiveID]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivosActiveID](
	[assetSysIdActive] [uniqueidentifier] NOT NULL,
	[idEmpresa] [int] NOT NULL,
	[correoJefaturaAsociadoA] [varchar](70) NOT NULL,
	[correoJefaturaAsociadoB] [varchar](70) NOT NULL,
	[correoUsuarioAsignado] [varchar](70) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[marca] [varchar](70) NULL,
	[numeroSerie] [varchar](70) NULL,
	[placa] [varchar](70) NULL,
	[EPC] [varchar](35) NOT NULL,
	[numeroTag] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActUbicaciones]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActUbicaciones](
	[UbicacionA] [varchar](150) NULL,
	[UbicacionB] [varchar](150) NULL,
	[UbicacionC] [varchar](150) NULL,
	[UbicacionD] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlertasActivo]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertasActivo](
	[IdAlertasActivo] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoAlerta] [int] NULL,
	[IdActivo] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AlertasActivo] PRIMARY KEY CLUSTERED 
(
	[IdAlertasActivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlertasPorZona]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlertasPorZona](
	[IdAlertasPorZona] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoAlerta] [int] NULL,
	[IdZona] [int] NULL,
	[ComandCenter] [bit] NULL,
	[Sirena] [bit] NULL,
	[Semaforo] [bit] NULL,
 CONSTRAINT [PK_AlertasPorZona] PRIMARY KEY CLUSTERED 
(
	[IdAlertasPorZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asignarActivoAccesoSync]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asignarActivoAccesoSync](
	[assetItemNumber] [varchar](100) NOT NULL,
	[cedula] [varchar](100) NOT NULL,
	[Syncronized] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetCategory]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetCategory](
	[assetCategorySysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[depSysId] [uniqueidentifier] NULL,
	[valorvidaUtil] [int] NULL,
	[vidaUtilProcomer] [varchar](100) NULL,
	[companyIdExtern] [varchar](60) NULL,
 CONSTRAINT [PK_AssetCategory] PRIMARY KEY CLUSTERED 
(
	[assetCategorySysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetLogUpdates]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetLogUpdates](
	[assetLogUpdateSysId] [uniqueidentifier] NOT NULL,
	[assetSysId] [uniqueidentifier] NOT NULL,
	[tagId] [varchar](200) NOT NULL,
	[office] [varchar](200) NOT NULL,
	[floor] [varchar](200) NOT NULL,
	[building] [varchar](200) NOT NULL,
	[company] [varchar](200) NOT NULL,
	[brand] [varchar](200) NULL,
	[modelNo] [varchar](200) NULL,
	[serialNo] [varchar](200) NULL,
	[Barcode] [varchar](200) NULL,
	[userUpdate] [varchar](200) NOT NULL,
	[assetItemNumber] [varchar](200) NULL,
	[longDescription] [varchar](200) NULL,
	[shortDescription] [varchar](200) NULL,
	[updateDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[assetLogUpdateSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetNewSynchronized]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetNewSynchronized](
	[assetSyncronizedId] [uniqueidentifier] NOT NULL,
	[assetId] [int] NULL,
	[numero] [varchar](200) NULL,
	[placa] [varchar](200) NULL,
	[longDescription] [varchar](400) NULL,
	[companySysId] [uniqueidentifier] NULL,
	[buildingSysId] [uniqueidentifier] NULL,
	[floorSysId] [uniqueidentifier] NULL,
	[officeSysId] [uniqueidentifier] NULL,
	[encargado] [varchar](200) NULL,
	[brand] [varchar](200) NULL,
	[modelNo] [varchar](200) NULL,
	[serial] [varchar](200) NULL,
	[tagId] [varchar](100) NOT NULL,
	[Compania] [varchar](200) NULL,
	[edificio] [varchar](200) NULL,
	[Piso] [varchar](200) NULL,
	[Oficina] [varchar](200) NULL,
	[fechaSincronizacion] [date] NULL,
	[assetParentSysId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[assetSyncronizedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetPermission]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetPermission](
	[authorizationAssetPermission] [uniqueidentifier] NOT NULL,
	[userSysIdCreatorFK] [uniqueidentifier] NOT NULL,
	[assetSysIdFk] [uniqueidentifier] NOT NULL,
	[userSysIdFKUnactivePermission] [uniqueidentifier] NOT NULL,
	[dateStartPermission] [datetime] NULL,
	[dateEndPermission] [datetime] NULL,
	[isPermissionActive] [bit] NULL,
	[dateCreate] [datetime] NULL,
	[dateUpdate] [datetime] NULL,
	[isUpdateByUser] [bit] NULL,
 CONSTRAINT [PK_assetPermission] PRIMARY KEY CLUSTERED 
(
	[authorizationAssetPermission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetPermissionAccesoSync]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetPermissionAccesoSync](
	[assetSysId] [uniqueidentifier] NOT NULL,
	[mailUserEntry] [varchar](70) NOT NULL,
	[dateStartPermission] [datetime] NOT NULL,
	[dateEndPermission] [datetime] NOT NULL,
	[permissionEnable] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assets]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assets](
	[assetSysId] [uniqueidentifier] NOT NULL,
	[assetItemNumber] [varchar](100) NULL,
	[assetCategorySysId] [uniqueidentifier] NOT NULL,
	[assetStatusSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NULL,
	[managementSysID] [uniqueidentifier] NULL,
	[departmentSysId] [uniqueidentifier] NULL,
	[businessUnitSysId] [uniqueidentifier] NULL,
	[buildingSysId] [uniqueidentifier] NOT NULL,
	[floorSysId] [uniqueidentifier] NOT NULL,
	[officeSysId] [uniqueidentifier] NOT NULL,
	[employeeRelated] [uniqueidentifier] NOT NULL,
	[tagSysId] [uniqueidentifier] NOT NULL,
	[lastEmployeeRelated] [uniqueidentifier] NOT NULL,
	[brand] [varchar](100) NOT NULL,
	[modelNo] [varchar](100) NOT NULL,
	[serialNo] [varchar](100) NOT NULL,
	[skuNo] [varchar](100) NOT NULL,
	[PartNo] [varchar](100) NOT NULL,
	[isDepreciated] [bit] NOT NULL,
	[isObsolete] [bit] NOT NULL,
	[color] [varchar](100) NOT NULL,
	[cost] [money] NOT NULL,
	[size] [varchar](100) NOT NULL,
	[shortDescription] [varchar](1200) NOT NULL,
	[longDescription] [varchar](1400) NOT NULL,
	[accessoriesIncluded] [bit] NOT NULL,
	[accessoriesQuantity] [int] NOT NULL,
	[accessoryDescription1] [varchar](100) NOT NULL,
	[accessorySerial1] [varchar](50) NOT NULL,
	[accessoryModel1] [varchar](50) NOT NULL,
	[accessoryDescription2] [varchar](100) NOT NULL,
	[accessorySerial2] [varchar](50) NOT NULL,
	[accessoryModel2] [varchar](50) NOT NULL,
	[accessoryDescription3] [varchar](100) NOT NULL,
	[accessorySerial3] [varchar](50) NOT NULL,
	[accessoryModel3] [varchar](50) NOT NULL,
	[accessoryDescription4] [varchar](100) NOT NULL,
	[accessorySerial4] [varchar](50) NOT NULL,
	[accessoryModel4] [varchar](50) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[BillNo] [varchar](2500) NOT NULL,
	[DateAdquired] [datetime] NOT NULL,
	[ProviderSysId] [uniqueidentifier] NULL,
	[GarantyTerms] [varchar](2500) NOT NULL,
	[expirationDate] [datetime] NOT NULL,
	[unidNumber] [int] NULL,
	[NUMB_APR] [varchar](500) NULL,
	[Alias] [nvarchar](500) NULL,
	[Origen] [varchar](250) NULL,
	[ObservacionesAdicionales] [varchar](750) NULL,
	[assetSubcategory] [varchar](200) NULL,
	[Barcode] [varchar](128) NOT NULL,
	[proveedor] [varchar](200) NOT NULL,
	[TipoRegistro] [varchar](256) NULL,
	[Depreciado] [bit] NULL,
	[ValorResidual] [int] NULL,
	[respaldodescrip] [varchar](max) NULL,
	[Placa] [varchar](250) NULL,
	[Adquisicion] [varchar](250) NULL,
	[ShelfSysId] [uniqueidentifier] NOT NULL,
	[costDollars] [money] NULL,
	[paidTaxes] [bit] NULL,
	[duaNumber] [varchar](20) NULL,
	[residualValueDollars] [money] NULL,
	[ProcomerFixedAssetAccount] [varchar](150) NULL,
	[TaxesFixedAssetAccount] [varchar](150) NULL,
	[AccountingAccountDepreciation] [varchar](150) NULL,
	[InternValueBooks] [money] NULL,
	[ProcomerValueBooks] [money] NULL,
	[CapitalizationDate] [datetime] NULL,
	[FTZInvestment] [varchar](150) NULL,
	[SAPNumber] [varchar](100) NULL,
	[CostCenter] [varchar](100) NULL,
	[AssetClass] [varchar](100) NULL,
	[IdDescripcionLarga] [int] NULL,
	[IdDescripcionCorta] [int] NULL,
	[Logico_A] [int] NULL,
	[Logico_B] [int] NULL,
	[companyIdExtern] [varchar](60) NULL,
	[procommerLifeTime] [varchar](10) NULL,
	[parentAssetSyId] [uniqueidentifier] NULL,
	[AssetsIndex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Assets] PRIMARY KEY CLUSTERED 
(
	[assetSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetsImages]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetsImages](
	[imageSysId] [uniqueidentifier] NOT NULL,
	[assetSysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[destino] [varchar](100) NOT NULL,
	[extension] [varchar](10) NOT NULL,
	[consecutivo] [int] NULL,
 CONSTRAINT [PK__assetsIm__139F3EDA5224328E] PRIMARY KEY CLUSTERED 
(
	[imageSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__assetsIm__72E12F1B16CE6296] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetStatus]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetStatus](
	[assetStatusSysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[companyIdExtern] [varchar](15) NULL,
 CONSTRAINT [PK_AssetStatus] PRIMARY KEY CLUSTERED 
(
	[assetStatusSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetsTempExcel]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetsTempExcel](
	[SAPNumber] [varchar](100) NULL,
	[assetItemNumber] [varchar](100) NOT NULL,
	[barcode] [varchar](128) NULL,
	[assetCategorySysId] [uniqueidentifier] NOT NULL,
	[assetStatusSysId] [uniqueidentifier] NULL,
	[paidTaxes] [bit] NULL,
	[companySysId] [uniqueidentifier] NULL,
	[buildingSysId] [uniqueidentifier] NULL,
	[floorSysId] [uniqueidentifier] NULL,
	[officeSysId] [uniqueidentifier] NULL,
	[employeeRelated] [uniqueidentifier] NULL,
	[brand] [varchar](100) NULL,
	[modelNo] [varchar](100) NULL,
	[serialNo] [varchar](100) NULL,
	[PartNo] [varchar](100) NULL,
	[Depreciado] [bit] NULL,
	[cost] [money] NULL,
	[costDollars] [money] NULL,
	[shortDescription] [varchar](1200) NULL,
	[longDescription] [varchar](1400) NULL,
	[NUMB_APR] [varchar](500) NULL,
	[DateAdquired] [datetime] NULL,
	[ValorResidual] [int] NULL,
	[duaNumber] [varchar](20) NULL,
	[ProcomerFixedAssetAccount] [varchar](150) NULL,
	[TaxesFixedAssetAccount] [varchar](150) NULL,
	[AccountingAccountDepreciation] [varchar](150) NULL,
	[CapitalizationDate] [datetime] NULL,
	[FTZInvestment] [varchar](150) NULL,
	[CostCenter] [varchar](100) NULL,
	[AssetClass] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assetsToLoad]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assetsToLoad](
	[officeSysId] [uniqueidentifier] NOT NULL,
	[userSysId] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetsTraceMovements]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetsTraceMovements](
	[assetsSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NULL,
	[buildingSysId] [uniqueidentifier] NULL,
	[floorSysId] [uniqueidentifier] NULL,
	[officeSysId] [uniqueidentifier] NOT NULL,
	[employeeRelated] [uniqueidentifier] NULL,
	[assetStatusSysId] [uniqueidentifier] NULL,
	[dateModified] [datetime] NOT NULL,
	[statusDetail] [varchar](256) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssetsTraceMovementsNew]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetsTraceMovementsNew](
	[IdMovements] [bigint] IDENTITY(1,1) NOT NULL,
	[IdZone] [int] NULL,
	[EPC] [varchar](200) NULL,
	[DateRecord] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraInicioSesion]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraInicioSesion](
	[IdBitacoraInicioSesion] [bigint] IDENTITY(1,1) NOT NULL,
	[UserNameFK] [varchar](255) NOT NULL,
	[EstadoSesion] [bit] NOT NULL,
	[NombreEquipo] [varchar](150) NULL,
	[DireccionIP] [varchar](30) NULL,
	[SistemaOperativo] [varchar](100) NULL,
	[DetalleSesion] [varchar](100) NULL,
	[FechaInicioSesion] [datetime] NOT NULL,
	[FechaFinalizacionSesion] [datetime] NULL,
	[FechaComprobacionSesion] [datetime] NULL,
 CONSTRAINT [PK_BitacoraInicioSesion_1] PRIMARY KEY CLUSTERED 
(
	[IdBitacoraInicioSesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraMigracion]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraMigracion](
	[id] [uniqueidentifier] NOT NULL,
	[AssetnNo] [int] NOT NULL,
	[descripcion] [varchar](1200) NOT NULL,
	[DetalleError] [nvarchar](2500) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK__Bitacora__3213E83F689D8392] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BitacoraPermisosConsumidosAsset]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitacoraPermisosConsumidosAsset](
	[idBitacoraPermisosConsumidoAsset] [uniqueidentifier] NOT NULL,
	[assetSysIdFK] [uniqueidentifier] NOT NULL,
	[employeedRelatedFK] [uniqueidentifier] NOT NULL,
	[isAutorizatePermission] [bit] NOT NULL,
	[dateRegister] [datetime] NOT NULL,
 CONSTRAINT [PK_BitacoraPermisosAsset] PRIMARY KEY CLUSTERED 
(
	[idBitacoraPermisosConsumidoAsset] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[buildings]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buildings](
	[buildingSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[companyIdExtern] [varchar](60) NULL,
 CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED 
(
	[buildingSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[businessUnit]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[businessUnit](
	[businessUnitSysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[departmentSysId] [uniqueidentifier] NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_businessUnit] PRIMARY KEY CLUSTERED 
(
	[businessUnitSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catalogo]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catalogo](
	[catalogoSysId] [uniqueidentifier] NOT NULL,
	[codigo] [varchar](10) NULL,
	[descripcion] [varchar](200) NOT NULL,
	[Tipo] [varchar](200) NOT NULL,
 CONSTRAINT [PK__catalogo__1ED998B2] PRIMARY KEY CLUSTERED 
(
	[catalogoSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoríasporrol]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoríasporrol](
	[id] [uniqueidentifier] NOT NULL,
	[idrol] [uniqueidentifier] NULL,
	[idcat] [uniqueidentifier] NULL,
 CONSTRAINT [PK__categorí__3213E83F607251E5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[companies]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[companies](
	[companySysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[companyIdExtern] [varchar](60) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[companySysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesXCountries]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesXCountries](
	[IdCompanyByCountry] [int] IDENTITY(1,1) NOT NULL,
	[FK_companySysId] [uniqueidentifier] NOT NULL,
	[CountryName] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosACargar]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosACargar](
	[F1] [float] NULL,
	[F2] [nvarchar](255) NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[deptSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
	[managementSysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[supervisor] [uniqueidentifier] NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[idDepartamento] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[deptSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Inventario]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Inventario](
	[ID] [uniqueidentifier] NOT NULL,
	[ID_Inventario] [uniqueidentifier] NOT NULL,
	[NumeroActivo] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](256) NOT NULL,
	[EPC] [nvarchar](100) NOT NULL,
	[Estado] [nvarchar](100) NOT NULL,
	[Excluido] [varchar](2) NOT NULL,
	[Observaciones] [uniqueidentifier] NOT NULL,
	[CustomComentario] [nvarchar](600) NOT NULL,
	[Ajustado] [smallint] NULL,
 CONSTRAINT [PK_Detalle_Inventario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employeeSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
	[managementSysId] [uniqueidentifier] NOT NULL,
	[deptSysId] [uniqueidentifier] NOT NULL,
	[employeeNo] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[tagSysId] [uniqueidentifier] NOT NULL,
	[id] [varchar](100) NOT NULL,
	[phone1] [varchar](20) NOT NULL,
	[cell] [varchar](20) NOT NULL,
	[email] [varchar](128) NOT NULL,
	[active] [bit] NOT NULL,
	[hireDate] [datetime] NOT NULL,
	[endOfLaboralRelationshipDate] [datetime] NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[userSysId] [uniqueidentifier] NULL,
	[companyIdExtern] [varchar](60) NULL,
	[EmployeesIndex] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[employeeSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[epcTestGs1]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[epcTestGs1](
	[idEPC] [int] IDENTITY(1,1) NOT NULL,
	[epc] [nvarchar](100) NOT NULL,
	[epcLote] [nvarchar](100) NOT NULL,
	[numeroTag] [int] NOT NULL,
	[categoria] [nvarchar](100) NULL,
	[Grabado] [bit] NULL,
	[consecutivoTag] [char](10) NULL,
 CONSTRAINT [PK_epcTestGs1] PRIMARY KEY CLUSTERED 
(
	[idEPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErroresExcel]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErroresExcel](
	[Error] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[floors]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[floors](
	[floorSysId] [uniqueidentifier] NOT NULL,
	[buildingSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[companyIdExtern] [varchar](60) NULL,
 CONSTRAINT [PK_Foor] PRIMARY KEY CLUSTERED 
(
	[floorSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formatoexporta]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formatoexporta](
	[IdFormatoexporta] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](20) NOT NULL,
	[extencion] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK__Formatoexporta] PRIMARY KEY CLUSTERED 
(
	[IdFormatoexporta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[ID] [uniqueidentifier] NOT NULL,
	[Num] [int] NOT NULL,
	[Leidos] [int] NOT NULL,
	[Total] [int] NOT NULL,
	[Ok] [int] NOT NULL,
	[Faltantes] [int] NOT NULL,
	[Sobrantes] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IDToma] [uniqueidentifier] NOT NULL,
	[Marca] [bit] NOT NULL,
	[Metodo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LecturasBorrar]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LecturasBorrar](
	[EPC] [varchar](100) NULL,
	[Ip] [varchar](100) NULL,
	[Antena] [int] NULL,
	[Fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogicoA]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogicoA](
	[IdLogicoA] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[companyIdExtern] [varchar](60) NULL,
	[userSysId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LogicoA] PRIMARY KEY CLUSTERED 
(
	[IdLogicoA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogicoB]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogicoB](
	[IdLogicoB] [int] IDENTITY(1,1) NOT NULL,
	[IdLogicoA] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[companyIdExtern] [varchar](60) NULL,
	[userSysId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LogicoB] PRIMARY KEY CLUSTERED 
(
	[IdLogicoB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteEPCTAG]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteEPCTAG](
	[IDLoteEPCTAG] [int] IDENTITY(1,1) NOT NULL,
	[EPC] [varchar](30) NOT NULL,
	[NumeroTag] [varchar](25) NOT NULL,
	[Lote] [varchar](100) NOT NULL,
	[Consecutivo] [varchar](50) NOT NULL,
	[Placa] [varchar](50) NOT NULL,
	[EstaGrabado] [bit] NOT NULL,
	[EstaAsociado] [bit] NOT NULL,
	[EstaImpreso] [bit] NOT NULL,
	[CategoriaTag] [varchar](40) NOT NULL,
	[TipoTag] [varchar](100) NOT NULL,
 CONSTRAINT [PK_LoteEPCTAG] PRIMARY KEY CLUSTERED 
(
	[IDLoteEPCTAG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Management]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Management](
	[managementSysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[rowGuid] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__Manageme__B657413F70A8B9AE] PRIMARY KEY CLUSTERED 
(
	[managementSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Manageme__489B0D971B9317B3] UNIQUE NONCLUSTERED 
(
	[description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[officeses]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[officeses](
	[officeSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
	[buildingSysId] [uniqueidentifier] NOT NULL,
	[businessUnitSysId] [uniqueidentifier] NOT NULL,
	[floorSysId] [uniqueidentifier] NOT NULL,
	[deptSysId] [uniqueidentifier] NOT NULL,
	[tagSysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IsEnable] [bit] NOT NULL,
	[companyIdExtern] [varchar](60) NULL,
 CONSTRAINT [PK_officeses] PRIMARY KEY CLUSTERED 
(
	[officeSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficesXTags]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficesXTags](
	[officeSysId] [uniqueidentifier] NOT NULL,
	[tagSysId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [officeXTagSysId] PRIMARY KEY CLUSTERED 
(
	[officeSysId] ASC,
	[tagSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permissions]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permissions](
	[permissionSysId] [uniqueidentifier] NOT NULL,
	[userSysId] [uniqueidentifier] NOT NULL,
	[page] [varchar](50) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[allowed] [bit] NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[permissionSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[providers]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[providers](
	[providerSysId] [uniqueidentifier] NOT NULL,
	[providerName] [varchar](150) NOT NULL,
	[contactName] [varchar](100) NOT NULL,
	[phone1] [varchar](20) NOT NULL,
	[cell] [varchar](20) NOT NULL,
	[email] [varchar](128) NOT NULL,
	[active] [bit] NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_provider] PRIMARY KEY CLUSTERED 
(
	[providerSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReaderEstado]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReaderEstado](
	[IP] [varchar](150) NOT NULL,
	[Antena] [int] NOT NULL,
	[EstadoReader] [int] NOT NULL,
	[EstadoAntena] [int] NOT NULL,
	[HoraUltimoRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_ReaderEstado] PRIMARY KEY CLUSTERED 
(
	[IP] ASC,
	[Antena] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[readers]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[readers](
	[readerSysId] [uniqueidentifier] NOT NULL,
	[brand] [varchar](50) NOT NULL,
	[ip] [varchar](15) NOT NULL,
	[port] [varchar](10) NOT NULL,
	[serial] [varchar](50) NOT NULL,
	[model] [varchar](50) NOT NULL,
	[macAddress] [varchar](100) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[AreaSysId] [uniqueidentifier] NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_Readers] PRIMARY KEY CLUSTERED 
(
	[readerSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesUsuario]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesUsuario](
	[idRol] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](2500) NULL,
	[Esta_Bloqueado] [bit] NOT NULL,
 CONSTRAINT [PK_RolesUsuario] PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[screens]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screens](
	[screenSysId] [int] IDENTITY(1,1) NOT NULL,
	[tableName] [nvarchar](255) NULL,
	[NameToShow] [nvarchar](255) NULL,
	[PageName] [nvarchar](50) NULL,
 CONSTRAINT [PK_screens] PRIMARY KEY CLUSTERED 
(
	[screenSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shelf]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shelf](
	[ShelfSysId] [uniqueidentifier] NOT NULL,
	[officeSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
	[buildingSysId] [uniqueidentifier] NOT NULL,
	[businessUnitSysId] [uniqueidentifier] NOT NULL,
	[floorSysId] [uniqueidentifier] NOT NULL,
	[deptSysId] [uniqueidentifier] NOT NULL,
	[tagSysId] [uniqueidentifier] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[IsEnable] [bit] NOT NULL,
 CONSTRAINT [PK_shelf] PRIMARY KEY CLUSTERED 
(
	[ShelfSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SyncKeys]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SyncKeys](
	[IdSyncKey] [bigint] IDENTITY(1,1) NOT NULL,
	[CampoDestino] [nvarchar](200) NOT NULL,
	[IdDestino] [nvarchar](50) NOT NULL,
	[CampoOrigen] [nvarchar](200) NOT NULL,
	[IdOrigen] [nvarchar](50) NOT NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_SyncKeys] PRIMARY KEY CLUSTERED 
(
	[IdSyncKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SyncReferences]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SyncReferences](
	[IdSyncReference] [int] IDENTITY(1,1) NOT NULL,
	[TablaDestino] [nvarchar](500) NOT NULL,
	[CampoDestino] [nvarchar](500) NOT NULL,
	[TablaOrigen] [nvarchar](500) NOT NULL,
	[CampoOrigen] [nvarchar](500) NOT NULL,
	[PrimaryKey] [bit] NOT NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK_SyncReferences] PRIMARY KEY CLUSTERED 
(
	[IdSyncReference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagEPC]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagEPC](
	[NumeroTag] [varchar](255) NULL,
	[EPC] [varchar](255) NULL,
	[FechaHora] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tagRegistry]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tagRegistry](
	[tagSysId] [uniqueidentifier] NOT NULL,
	[tagID] [varchar](100) NOT NULL,
	[tagTypeSysId] [uniqueidentifier] NOT NULL,
	[isAssigned] [bit] NOT NULL,
	[discontinued] [bit] NOT NULL,
	[entryUser] [uniqueidentifier] NULL,
	[entryDate] [datetime] NULL,
	[updateUser] [uniqueidentifier] NULL,
	[updateDate] [datetime] NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NULL,
	[tagNumber] [varchar](15) NULL,
 CONSTRAINT [PK_tagRegistry] PRIMARY KEY CLUSTERED 
(
	[tagSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_tagRegistry] UNIQUE NONCLUSTERED 
(
	[tagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tagTypes]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tagTypes](
	[tagTypeSysId] [uniqueidentifier] NOT NULL,
	[code] [varchar](4) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](150) NOT NULL,
	[entryUser] [uniqueidentifier] NOT NULL,
	[entryDate] [datetime] NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[rowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_tagType] PRIMARY KEY CLUSTERED 
(
	[tagTypeSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LecturasEPCAntenaPersona]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LecturasEPCAntenaPersona](
	[IdLecturasEPCAntena] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpresa] [int] NOT NULL,
	[EPC] [varchar](50) NOT NULL,
	[IP] [varchar](50) NOT NULL,
	[Antena] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Estado] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Tags]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Tags](
	[IdTag] [int] IDENTITY(1,1) NOT NULL,
	[EPC] [varchar](24) NULL,
	[NumeroTag] [varchar](50) NULL,
	[Lote] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAutorizacionSalidaActivo]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAutorizacionSalidaActivo](
	[IdActivo] [uniqueidentifier] NOT NULL,
	[FechaInicial] [datetime] NOT NULL,
	[FechaFinal] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDescripcionCorta]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDescripcionCorta](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDescripcionLarga]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDescripcionLarga](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdDescripcionCorta] [int] NOT NULL,
	[Descripcion] [varchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLecturasEPCReader]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLecturasEPCReader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EPC] [varchar](200) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[EPCPadre] [varchar](200) NOT NULL,
	[IP] [varchar](200) NOT NULL,
	[TipoTag] [varchar](200) NOT NULL,
	[Encontrado] [bit] NOT NULL,
	[Procesado] [bit] NOT NULL,
 CONSTRAINT [PK_tblLecturasEPCReader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLecturasReader]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLecturasReader](
	[IdRegistroLectura] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpresa] [int] NULL,
	[IP] [varchar](50) NULL,
	[Antena] [int] NULL,
	[TagEPC] [varchar](100) NULL,
	[FechaLectura] [datetime] NULL,
	[Permiso] [char](1) NULL,
 CONSTRAINT [PK_tblLecturasReader] PRIMARY KEY CLUSTERED 
(
	[IdRegistroLectura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProveedores]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProveedores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](200) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[email] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblProveedores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTagsToAssign]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTagsToAssign](
	[Barcode] [nchar](100) NOT NULL,
	[TagEPC] [varchar](200) NOT NULL,
	[DateRegistry] [datetime] NOT NULL,
	[Assigned] [bit] NOT NULL,
 CONSTRAINT [PK_tblTagsToAssign] PRIMARY KEY CLUSTERED 
(
	[Barcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_Assets]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Assets](
	[NumeroActivo] [varchar](50) NULL,
	[MarcaActivo] [varchar](100) NULL,
	[ModeloActivo] [varchar](100) NULL,
	[SerieActivo] [varchar](100) NULL,
	[NumeroParte] [varchar](100) NULL,
	[ImpuestoExonerado] [bit] NULL,
	[Depreciado] [bit] NULL,
	[CostoActivoColones] [money] NULL,
	[CostoActivoDolares] [money] NULL,
	[DescripcionCorta] [varchar](1200) NULL,
	[DescripcionLarga] [varchar](1400) NULL,
	[NumeroFactura] [varchar](1500) NULL,
	[FechaCompraActivo] [datetime] NULL,
	[DiasVidaUtilCorporativo] [varchar](10) NULL,
	[CostoRescateColones] [varchar](100) NULL,
	[CostoRescateDolares] [varchar](100) NULL,
	[CuentaContableDepreciacion] [varchar](100) NULL,
	[FechaActivacion] [datetime] NULL,
	[CentroCostos] [varchar](100) NULL,
	[DescripcionEstado] [varchar](1000) NULL,
	[EstadoActivo] [varchar](50) NULL,
	[CategoriaActivo] [varchar](50) NULL,
	[LocalizacionA] [varchar](50) NULL,
	[LocalizacionB] [varchar](50) NULL,
	[LocalizacionC] [varchar](50) NULL,
	[LocalizacionD] [varchar](50) NULL,
	[LocalizacionLogicoA] [varchar](50) NULL,
	[LocalizacionLogicoB] [varchar](50) NULL,
	[IdEmpleado] [varchar](50) NULL,
	[JustificacionTecnica] [varchar](50) NULL,
	[Observacion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_Assets_2]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Assets_2](
	[NumeroActivo] [varchar](50) NULL,
	[MarcaActivo] [varchar](100) NULL,
	[ModeloActivo] [varchar](100) NULL,
	[SerieActivo] [varchar](100) NULL,
	[NumeroParte] [varchar](100) NULL,
	[ImpuestoExonerado] [bit] NULL,
	[Depreciado] [bit] NULL,
	[CostoActivoColones] [money] NULL,
	[CostoActivoDolares] [money] NULL,
	[DescripcionCorta] [varchar](1200) NULL,
	[DescripcionLarga] [varchar](1400) NULL,
	[NumeroFactura] [varchar](1500) NULL,
	[FechaCompraActivo] [datetime] NULL,
	[DiasVidaUtilCorporativo] [varchar](10) NULL,
	[CostoRescateColones] [varchar](100) NULL,
	[CostoRescateDolares] [varchar](100) NULL,
	[CuentaContableDepreciacion] [varchar](100) NULL,
	[FechaActivacion] [datetime] NULL,
	[CentroCostos] [varchar](100) NULL,
	[DescripcionEstado] [varchar](1000) NULL,
	[EstadoActivo] [varchar](50) NULL,
	[CategoriaActivo] [varchar](50) NULL,
	[LocalizacionA] [varchar](50) NULL,
	[LocalizacionB] [varchar](50) NULL,
	[LocalizacionC] [varchar](50) NULL,
	[LocalizacionD] [varchar](50) NULL,
	[LocalizacionLogicoA] [varchar](50) NULL,
	[LocalizacionLogicoB] [varchar](50) NULL,
	[IdEmpleado] [varchar](50) NULL,
	[JustificacionTecnica] [varchar](50) NULL,
	[Observacion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_Categoria]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Categoria](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_Employees]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Employees](
	[IdEmpleado] [varchar](60) NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[IdPersonal] [varchar](100) NULL,
	[Email] [varchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_Estado]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_Estado](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Idauto] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Temp_Estado] PRIMARY KEY CLUSTERED 
(
	[Idauto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_LocationA]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_LocationA](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_LocationB]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_LocationB](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdLocalizacionA] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_LocationC]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_LocationC](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdLocalizacionB] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_LocationD]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_LocationD](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdLocalizacionC] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_LocationLogicoA]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_LocationLogicoA](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temp_LocationLogicoB]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_LocationLogicoB](
	[Id] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdLocalizacionLogicoA] [varchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempAssets]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempAssets](
	[tempAssetsSysId] [int] IDENTITY(1,1) NOT NULL,
	[EPC] [varchar](256) NOT NULL,
	[officeSysId] [uniqueidentifier] NOT NULL,
	[descCorta] [varchar](256) NOT NULL,
	[serie] [varchar](256) NOT NULL,
	[modelo] [varchar](256) NOT NULL,
	[assetStatusSysId] [uniqueidentifier] NOT NULL,
	[employeeRelated] [uniqueidentifier] NOT NULL,
	[dateRegistro] [datetime] NULL,
	[Barcode] [varchar](128) NOT NULL,
	[Metodo] [nvarchar](50) NULL,
	[Marca] [varchar](100) NOT NULL,
	[IdActivoLocal] [int] NULL,
 CONSTRAINT [PK_AssetsTemp] PRIMARY KEY CLUSTERED 
(
	[tempAssetsSysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempMaestroActivos]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempMaestroActivos](
	[FACO] [varchar](50) NULL,
	[FANUMB] [varchar](50) NULL,
	[FAAPID] [varchar](50) NULL,
	[FAAAID] [varchar](50) NULL,
	[FAASID] [varchar](50) NULL,
	[FASEQ] [varchar](50) NULL,
	[FAACL1] [varchar](50) NULL,
	[FAACL2] [varchar](50) NULL,
	[FAACL3] [varchar](50) NULL,
	[FAACL4] [varchar](50) NULL,
	[FAACL5] [varchar](50) NULL,
	[FAMCU] [varchar](50) NULL,
	[FADL01] [varchar](50) NULL,
	[FADL02] [varchar](50) NULL,
	[FADL03] [varchar](50) NULL,
	[FADSCC] [varchar](50) NULL,
	[FADAJ] [varchar](50) NULL,
	[FADSP] [varchar](50) NULL,
	[FAEQST] [varchar](50) NULL,
	[FANORU] [varchar](50) NULL,
	[FAAESV] [varchar](50) NULL,
	[FAARPC] [varchar](50) NULL,
	[FAALRC] [varchar](50) NULL,
	[FAAMC] [varchar](50) NULL,
	[FAAOBJ] [varchar](50) NULL,
	[FAASUB] [varchar](50) NULL,
	[FADMCU] [varchar](50) NULL,
	[FADOBJ] [varchar](50) NULL,
	[FARSUB] [varchar](50) NULL,
	[FAXMCU] [varchar](50) NULL,
	[FAXOBJ] [varchar](50) NULL,
	[FAXSUB] [varchar](50) NULL,
	[FARMCU] [varchar](50) NULL,
	[FAROBJ] [varchar](50) NULL,
	[FARSUB1] [varchar](50) NULL,
	[FAARCQ] [varchar](50) NULL,
	[FAAROQ] [varchar](50) NULL,
	[FATXJS] [varchar](50) NULL,
	[FAAITY] [varchar](50) NULL,
	[FAAITP] [varchar](50) NULL,
	[FAFINC] [varchar](50) NULL,
	[FAITCO] [varchar](50) NULL,
	[FAPURO] [varchar](50) NULL,
	[FAAPUR] [varchar](50) NULL,
	[FAPURP] [varchar](50) NULL,
	[FAAPM] [varchar](50) NULL,
	[FALANO] [varchar](50) NULL,
	[FAJDC] [varchar](50) NULL,
	[FADEXJ] [varchar](50) NULL,
	[FAAMF] [varchar](50) NULL,
	[FARMK] [varchar](50) NULL,
	[FARMK2] [varchar](50) NULL,
	[FAINSP] [varchar](50) NULL,
	[FAINSC] [varchar](50) NULL,
	[FAINSM] [varchar](50) NULL,
	[FAINSA] [varchar](50) NULL,
	[FAAIV] [varchar](50) NULL,
	[FAINSI] [varchar](50) NULL,
	[FAUSER] [varchar](50) NULL,
	[FALCT] [varchar](50) NULL,
	[FALOC] [varchar](50) NULL,
	[FAADDS] [varchar](50) NULL,
	[FAPID] [varchar](50) NULL,
	[FAEFTB] [varchar](50) NULL,
	[FADER] [varchar](50) NULL,
	[FAMSGA] [varchar](50) NULL,
	[FAEX] [varchar](255) NULL,
	[FAEXR] [varchar](50) NULL,
	[FAAN8] [varchar](50) NULL,
	[FAACL6] [varchar](50) NULL,
	[FAACL7] [varchar](50) NULL,
	[FAACL8] [varchar](50) NULL,
	[FAACL9] [varchar](50) NULL,
	[FAACL0] [varchar](50) NULL,
	[FASFC] [varchar](50) NULL,
	[FADADC] [varchar](50) NULL,
	[FADADO] [varchar](50) NULL,
	[FADADS] [varchar](50) NULL,
	[FAUNIT] [varchar](50) NULL,
	[FAKIT] [varchar](50) NULL,
	[FAKITL] [varchar](50) NULL,
	[FAAFE] [varchar](50) NULL,
	[FAJBCD] [varchar](50) NULL,
	[FAJBST] [varchar](50) NULL,
	[FAUN] [varchar](50) NULL,
	[FASBLI] [varchar](50) NULL,
	[FAUPMJ] [varchar](50) NULL,
	[FAJOBN] [varchar](50) NULL,
	[FAUPMT] [varchar](50) NULL,
	[FAFA0] [varchar](50) NULL,
	[FAFA1] [varchar](50) NULL,
	[FAFA2] [varchar](50) NULL,
	[FAFA3] [varchar](50) NULL,
	[FAFA4] [varchar](50) NULL,
	[FAFA5] [varchar](50) NULL,
	[FAFA6] [varchar](50) NULL,
	[FAFA7] [varchar](50) NULL,
	[FAFA8] [varchar](50) NULL,
	[FAFA9] [varchar](50) NULL,
	[FAFA21] [varchar](50) NULL,
	[FAFA22] [varchar](50) NULL,
	[FAFA23] [varchar](50) NULL,
	[FAWOYN] [varchar](50) NULL,
	[FACRTL] [varchar](50) NULL,
	[FAWRFL] [varchar](50) NULL,
	[FAWARJ] [varchar](50) NULL,
	[FAUPDJ] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempMaestroActivosold]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempMaestroActivosold](
	[FACO] [varchar](50) NULL,
	[FANUMB] [varchar](50) NULL,
	[FAAPID] [varchar](50) NULL,
	[FAAAID] [varchar](50) NULL,
	[FAASID] [varchar](50) NULL,
	[FASEQ] [varchar](50) NULL,
	[FAACL1] [varchar](50) NULL,
	[FAACL2] [varchar](50) NULL,
	[FAACL3] [varchar](50) NULL,
	[FAACL4] [varchar](50) NULL,
	[FAACL5] [varchar](50) NULL,
	[FAMCU] [varchar](50) NULL,
	[FADL01] [varchar](50) NULL,
	[FADL02] [varchar](50) NULL,
	[FADL03] [varchar](50) NULL,
	[FADSCC] [varchar](50) NULL,
	[FADAJ] [varchar](50) NULL,
	[FADSP] [varchar](50) NULL,
	[FAEQST] [varchar](50) NULL,
	[FANORU] [varchar](50) NULL,
	[FAAESV] [varchar](50) NULL,
	[FAARPC] [varchar](50) NULL,
	[FAALRC] [varchar](50) NULL,
	[FAAMC] [varchar](50) NULL,
	[FAAOBJ] [varchar](50) NULL,
	[FAASUB] [varchar](50) NULL,
	[FADMCU] [varchar](50) NULL,
	[FADOBJ] [varchar](50) NULL,
	[FADSUB] [varchar](50) NULL,
	[FAXMCU] [varchar](50) NULL,
	[FAXOBJ] [varchar](50) NULL,
	[FAXSUB] [varchar](50) NULL,
	[FARMCU] [varchar](50) NULL,
	[FAROBJ] [varchar](50) NULL,
	[FARSUB] [varchar](50) NULL,
	[FAARCQ] [varchar](50) NULL,
	[FAAROQ] [varchar](50) NULL,
	[FATXJS] [varchar](50) NULL,
	[FAAITY] [varchar](50) NULL,
	[FAAITP] [varchar](50) NULL,
	[FAFINC] [varchar](50) NULL,
	[FAITCO] [varchar](50) NULL,
	[FAPURO] [varchar](50) NULL,
	[FAAPUR] [varchar](50) NULL,
	[FAPURP] [varchar](50) NULL,
	[FAAPM] [varchar](50) NULL,
	[FALANO] [varchar](50) NULL,
	[FAJDC] [varchar](50) NULL,
	[FADEXJ] [varchar](50) NULL,
	[FAAMF] [varchar](50) NULL,
	[FARMK] [varchar](50) NULL,
	[FARMK2] [varchar](50) NULL,
	[FAINSP] [varchar](50) NULL,
	[FAINSC] [varchar](50) NULL,
	[FAINSM] [varchar](50) NULL,
	[FAINSA] [varchar](50) NULL,
	[FAAIV] [varchar](50) NULL,
	[FAINSI] [varchar](50) NULL,
	[FAUSER] [varchar](50) NULL,
	[FALCT] [varchar](50) NULL,
	[FALOC] [varchar](50) NULL,
	[FAADDS] [varchar](50) NULL,
	[FAPID] [varchar](50) NULL,
	[FAEFTB] [varchar](50) NULL,
	[FADER] [varchar](50) NULL,
	[FAMSGA] [varchar](50) NULL,
	[FAEX] [varchar](50) NULL,
	[FAEXR] [varchar](50) NULL,
	[FAAN8] [varchar](50) NULL,
	[FAACL6] [varchar](50) NULL,
	[FAACL7] [varchar](50) NULL,
	[FAACL8] [varchar](50) NULL,
	[FAACL9] [varchar](50) NULL,
	[FAACL0] [varchar](50) NULL,
	[FASFC] [varchar](50) NULL,
	[FADADC] [varchar](50) NULL,
	[FADADO] [varchar](50) NULL,
	[FADADS] [varchar](50) NULL,
	[FAUNIT] [varchar](50) NULL,
	[FAKIT] [varchar](50) NULL,
	[FAKITL] [varchar](50) NULL,
	[FAAFE] [varchar](50) NULL,
	[FAJBCD] [varchar](50) NULL,
	[FAJBST] [varchar](50) NULL,
	[FAUN] [varchar](50) NULL,
	[FASBLI] [varchar](50) NULL,
	[FAUPMJ] [varchar](50) NULL,
	[FAJOBN] [varchar](50) NULL,
	[FAUPMT] [varchar](50) NULL,
	[FAFA0] [varchar](50) NULL,
	[FAFA1] [varchar](50) NULL,
	[FAFA2] [varchar](50) NULL,
	[FAFA3] [varchar](50) NULL,
	[FAFA4] [varchar](50) NULL,
	[FAFA5] [varchar](50) NULL,
	[FAFA6] [varchar](50) NULL,
	[FAFA7] [varchar](50) NULL,
	[FAFA8] [varchar](50) NULL,
	[FAFA9] [varchar](50) NULL,
	[FAFA21] [varchar](50) NULL,
	[FAFA22] [varchar](50) NULL,
	[FAFA23] [varchar](50) NULL,
	[FAWOYN] [varchar](50) NULL,
	[FACRTL] [varchar](50) NULL,
	[FAWRFL] [varchar](50) NULL,
	[FAWARJ] [varchar](50) NULL,
	[FAUPDJ] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoObservaciones]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoObservaciones](
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK__tipoObse__3214EC270697FACD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__tipoObse__75E3EFCF1F63A897] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposAlertas]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposAlertas](
	[IdTipoAlerta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[TiempoMaximoNoLectura] [varchar](200) NULL,
	[Email1] [varchar](200) NULL,
	[Email2] [varchar](200) NULL,
	[Email3] [varchar](200) NULL,
	[GestionApp] [bit] NULL,
	[CirculoPermitido] [varchar](200) NULL,
	[UsuarioPermitido] [varchar](200) NULL,
	[IdCirculoPermitido] [int] NULL,
	[IdUsuarioPermitido] [int] NULL,
 CONSTRAINT [PK_TiposAlertas] PRIMARY KEY CLUSTERED 
(
	[IdTipoAlerta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposInventario]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposInventario](
	[ID] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](500) NULL,
 CONSTRAINT [PK_TiposInventario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TomaFisica]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TomaFisica](
	[IdToma] [uniqueidentifier] NOT NULL,
	[TakeName] [varchar](150) NOT NULL,
	[TakeDescription] [varchar](150) NOT NULL,
	[TakeDate] [datetime] NOT NULL,
	[TakeStatus] [bit] NULL,
 CONSTRAINT [PK_TomaFisica] PRIMARY KEY CLUSTERED 
(
	[IdToma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TomaFisicaDetalle]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TomaFisicaDetalle](
	[IdTakeDetail] [uniqueidentifier] NOT NULL,
	[FK_TomaFisica] [uniqueidentifier] NOT NULL,
	[EPC] [varchar](200) NOT NULL,
	[DateRead] [datetime] NOT NULL,
 CONSTRAINT [PK_TomaFisicaDetalle] PRIMARY KEY CLUSTERED 
(
	[IdTakeDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TomasdelInventario]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TomasdelInventario](
	[ID] [uniqueidentifier] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[usuario] [uniqueidentifier] NOT NULL,
	[Oficina] [uniqueidentifier] NOT NULL,
	[ID_TipoInventario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_TomasdelInventario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ultimoNumeroTagGS1]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ultimoNumeroTagGS1](
	[Categoria] [varchar](100) NULL,
	[UltimoGenerado] [int] NULL,
	[Nombre] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userSysId] [uniqueidentifier] NOT NULL,
	[username] [varchar](255) NOT NULL,
	[applicationName] [varchar](255) NOT NULL,
	[email] [varchar](128) NOT NULL,
	[comment] [varchar](255) NULL,
	[password] [varchar](128) NOT NULL,
	[passwordQuestion] [varchar](255) NULL,
	[passwordAnswer] [varchar](255) NULL,
	[isApproved] [bit] NULL,
	[lastActivityDate] [datetime] NULL,
	[lastLoginDate] [datetime] NULL,
	[lastPasswordChangedDate] [datetime] NULL,
	[creationDate] [datetime] NULL,
	[isOnLine] [bit] NULL,
	[isLockedOut] [bit] NULL,
	[lastLockedOutDate] [datetime] NULL,
	[failedPasswordAttemptCount] [int] NULL,
	[failedPasswordAttemptWindowStart] [datetime] NULL,
	[failedPasswordAnswerAttemptCount] [int] NULL,
	[failedPasswordAnswerAttemptWindowStart] [datetime] NULL,
	[Idrol] [uniqueidentifier] NULL,
	[Fk_userType] [int] NULL,
 CONSTRAINT [PK__users__4CA06362] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersXCompanies]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersXCompanies](
	[IdUsersByCompany] [int] IDENTITY(1,1) NOT NULL,
	[FK_companySysId] [uniqueidentifier] NOT NULL,
	[FK_username] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsersByCompany] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[IdUserType] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_x_empleados]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_x_empleados](
	[userSysId] [uniqueidentifier] NULL,
	[employeeSysId] [uniqueidentifier] NULL,
	[rowid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zonas]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zonas](
	[IP] [varchar](200) NOT NULL,
	[NumeroAntena] [int] NOT NULL,
	[OficinaID] [uniqueidentifier] NOT NULL,
	[NombreZona] [varchar](200) NOT NULL,
	[SEMAFORO] [bit] NULL,
	[ACCESO] [bit] NULL,
	[Actualizable] [bit] NULL,
	[EnciendeSemaforo] [bit] NULL,
	[PuertoRojo] [int] NULL,
	[PuertoVerde] [int] NULL,
	[PuertoGpio] [int] NULL,
	[IDZona] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_zonas] PRIMARY KEY CLUSTERED 
(
	[IDZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zone]    Script Date: 30/10/2024 23:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zone](
	[IdZone] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Ip] [varchar](100) NOT NULL,
	[Antena] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[IdZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[assetCategory] ADD  CONSTRAINT [DF_assetCategory_assetCategorySysId]  DEFAULT (newid()) FOR [assetCategorySysId]
GO
ALTER TABLE [dbo].[assetCategory] ADD  CONSTRAINT [DF_assetCategory_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[assetCategory] ADD  CONSTRAINT [DF_assetCategory_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[assetCategory] ADD  CONSTRAINT [DF_assetCategory_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[assetCategory] ADD  CONSTRAINT [DF_assetCategory_depSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [depSysId]
GO
ALTER TABLE [dbo].[assetCategory] ADD  CONSTRAINT [DF_assetCategory_valorvidaUtil]  DEFAULT ((0)) FOR [valorvidaUtil]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_assetSysId]  DEFAULT (newid()) FOR [assetSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__assetIte__00551192]  DEFAULT ('00000000') FOR [assetItemNumber]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__assetCat__014935CB]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [assetCategorySysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__assetSta__023D5A04]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [assetStatusSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__companyS__03317E3D]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [companySysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__departme__0519C6AF]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [departmentSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__business__0425A276]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [businessUnitSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__building__07020F21]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [buildingSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__floorSys__07F6335A]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [floorSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__officeSy__060DEAE8]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [officeSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__employee__08EA5793]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [employeeRelated]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__tagSysId__09DE7BCC]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [tagSysId]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__lastEmpl__0AD2A005]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [lastEmployeeRelated]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__brand__0BC6C43E]  DEFAULT ('') FOR [brand]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__modelNo__0CBAE877]  DEFAULT ('') FOR [modelNo]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__serialNo__0DAF0CB0]  DEFAULT ('') FOR [serialNo]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__skuNo__0EA330E9]  DEFAULT ('') FOR [skuNo]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__PartNo__0F975522]  DEFAULT ('') FOR [PartNo]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__isDeprec__108B795B]  DEFAULT ('') FOR [isDepreciated]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__isObsole__117F9D94]  DEFAULT ('') FOR [isObsolete]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__color__1273C1CD]  DEFAULT ('') FOR [color]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__cost__1367E606]  DEFAULT ('') FOR [cost]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__size__145C0A3F]  DEFAULT ('') FOR [size]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__shortDes__15502E78]  DEFAULT ('') FOR [shortDescription]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__longDesc__164452B1]  DEFAULT ('') FOR [longDescription]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__173876EA]  DEFAULT ((0)) FOR [accessoriesIncluded]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__182C9B23]  DEFAULT ((0)) FOR [accessoriesQuantity]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1920BF5C]  DEFAULT ('') FOR [accessoryDescription1]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1A14E395]  DEFAULT ('') FOR [accessorySerial1]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1B0907CE]  DEFAULT ('') FOR [accessoryModel1]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1BFD2C07]  DEFAULT ('') FOR [accessoryDescription2]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1CF15040]  DEFAULT ('') FOR [accessorySerial2]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1DE57479]  DEFAULT ('') FOR [accessoryModel2]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1ED998B2]  DEFAULT ('') FOR [accessoryDescription3]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__1FCDBCEB]  DEFAULT ('') FOR [accessorySerial3]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__20C1E124]  DEFAULT ('') FOR [accessoryModel3]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__21B6055D]  DEFAULT ('') FOR [accessoryDescription4]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__22AA2996]  DEFAULT ('') FOR [accessorySerial4]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__accessor__239E4DCF]  DEFAULT ('') FOR [accessoryModel4]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_BillNo]  DEFAULT ('') FOR [BillNo]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_DateAdquired]  DEFAULT (((1)/(1))/(1900)) FOR [DateAdquired]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_GarantyTerms]  DEFAULT ('') FOR [GarantyTerms]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_expirationDate]  DEFAULT (((1)/(1))/(1900)) FOR [expirationDate]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__Barcode__4959E263]  DEFAULT ('0') FOR [Barcode]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF__assets__proveedo__4A4E069C]  DEFAULT ('') FOR [proveedor]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_costDollars]  DEFAULT ('') FOR [costDollars]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [DF_assets_paidTaxes]  DEFAULT ((0)) FOR [paidTaxes]
GO
ALTER TABLE [dbo].[assets] ADD  DEFAULT ((0)) FOR [InternValueBooks]
GO
ALTER TABLE [dbo].[assets] ADD  DEFAULT ((0)) FOR [ProcomerValueBooks]
GO
ALTER TABLE [dbo].[assets] ADD  CONSTRAINT [Default_SAPNumber]  DEFAULT ('') FOR [SAPNumber]
GO
ALTER TABLE [dbo].[assetStatus] ADD  CONSTRAINT [DF_assetStatus_assetStatusSysId]  DEFAULT (newid()) FOR [assetStatusSysId]
GO
ALTER TABLE [dbo].[assetStatus] ADD  CONSTRAINT [DF_assetStatus_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[assetStatus] ADD  CONSTRAINT [DF_assetStatus_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[assetStatus] ADD  CONSTRAINT [DF_assetStatus_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[BitacoraInicioSesion] ADD  CONSTRAINT [DF_BitacoraInicioSesion_FechaInicioSesion]  DEFAULT (getdate()) FOR [FechaInicioSesion]
GO
ALTER TABLE [dbo].[BitacoraMigracion] ADD  CONSTRAINT [DF__BitacoraMigr__id__6A85CC04]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[BitacoraMigracion] ADD  CONSTRAINT [DF_BitacoraMigracion_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[BitacoraPermisosConsumidosAsset] ADD  CONSTRAINT [DF_BitacoraPermisosAsset_dateRegister]  DEFAULT (getdate()) FOR [dateRegister]
GO
ALTER TABLE [dbo].[buildings] ADD  CONSTRAINT [DF_buildings_buildingSysId]  DEFAULT (newid()) FOR [buildingSysId]
GO
ALTER TABLE [dbo].[buildings] ADD  CONSTRAINT [DF_buildings_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[buildings] ADD  CONSTRAINT [DF_buildings_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[buildings] ADD  CONSTRAINT [DF_buildings_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[catalogo] ADD  CONSTRAINT [DF_catalogo_Tipo]  DEFAULT ('Clase') FOR [Tipo]
GO
ALTER TABLE [dbo].[companies] ADD  CONSTRAINT [DF_companies_companySysId]  DEFAULT (newid()) FOR [companySysId]
GO
ALTER TABLE [dbo].[companies] ADD  CONSTRAINT [DF_companies_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[companies] ADD  CONSTRAINT [DF_companies_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[companies] ADD  CONSTRAINT [DF_companies_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[departments] ADD  CONSTRAINT [DF_departments_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[Detalle_Inventario] ADD  CONSTRAINT [DF__Detalle_Inve__ID__373B3228]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Detalle_Inventario] ADD  CONSTRAINT [DF__Detalle_I__Exclu__382F5661]  DEFAULT ('NO') FOR [Excluido]
GO
ALTER TABLE [dbo].[Detalle_Inventario] ADD  CONSTRAINT [DF_Detalle_Inventario_Observaciones]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [Observaciones]
GO
ALTER TABLE [dbo].[Detalle_Inventario] ADD  CONSTRAINT [DF__Detalle_I__Custo__3A179ED3]  DEFAULT ('') FOR [CustomComentario]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_employeeSysId]  DEFAULT (newid()) FOR [employeeSysId]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_managementSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [managementSysId]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_deptSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [deptSysId]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF__employees__emplo__38996AB5]  DEFAULT ((0)) FOR [employeeNo]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF__employees__tagSy__398D8EEE]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [tagSysId]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF__employees__id__3A81B327]  DEFAULT ('00-0000-0000') FOR [id]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF__employees__phone__3B75D760]  DEFAULT ('000-0000-0000') FOR [phone1]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF__employees__cell__3C69FB99]  DEFAULT ('000-0000-0000') FOR [cell]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF__employees__email__3D5E1FD2]  DEFAULT ('email@webmaster.com') FOR [email]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF__employees__activ__3E52440B]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_hireDate]  DEFAULT (getdate()) FOR [hireDate]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_employees_userSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [userSysId]
GO
ALTER TABLE [dbo].[floors] ADD  CONSTRAINT [DF_floors_floorSysId]  DEFAULT (newid()) FOR [floorSysId]
GO
ALTER TABLE [dbo].[floors] ADD  CONSTRAINT [DF_floors_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[floors] ADD  CONSTRAINT [DF_floors_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[floors] ADD  CONSTRAINT [DF_floors_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[Inventario] ADD  CONSTRAINT [DF__Inventario__ID__41B8C09B]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[Inventario] ADD  CONSTRAINT [DF__Inventari__Marca__42ACE4D4]  DEFAULT ((0)) FOR [Marca]
GO
ALTER TABLE [dbo].[Inventario] ADD  CONSTRAINT [DF__Inventari__Metod__6D9742D9]  DEFAULT ('RFID') FOR [Metodo]
GO
ALTER TABLE [dbo].[LecturasBorrar] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF_officeses_officeSysId]  DEFAULT (newid()) FOR [officeSysId]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF_officeses_businessUnitSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [businessUnitSysId]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF_officeses_deptSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [deptSysId]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF_officeses_tagSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [tagSysId]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF_officeses_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF_officeses_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF_officeses_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[officeses] ADD  CONSTRAINT [DF__officeses__IsEna__5C6CB6D7]  DEFAULT ((0)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[permissions] ADD  CONSTRAINT [DF__permissio__allow__5D60DB10]  DEFAULT ((1)) FOR [allowed]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_ShelfSysId]  DEFAULT (newid()) FOR [ShelfSysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_officeSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [officeSysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_companySysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [companySysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_buildingSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [buildingSysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_businessUnitSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [businessUnitSysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_floorSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [floorSysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_deptSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [deptSysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_tagSysId]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [tagSysId]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_entryUser]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [entryUser]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_updateUser]  DEFAULT (CONVERT([uniqueidentifier],'00000000-0000-0000-0000-000000000000',(0))) FOR [updateUser]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[shelf] ADD  CONSTRAINT [DF_shelf_IsEnable]  DEFAULT ((0)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[SyncKeys] ADD  CONSTRAINT [DF_SyncKeys_FechaRegistro]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[SyncReferences] ADD  CONSTRAINT [DF_SyncReferences_FechaCreacion]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[tagRegistry] ADD  CONSTRAINT [DF_tagRegistry_tagSysId]  DEFAULT (newid()) FOR [tagSysId]
GO
ALTER TABLE [dbo].[tagRegistry] ADD  CONSTRAINT [DF_tagRegistry_entryDate]  DEFAULT (getdate()) FOR [entryDate]
GO
ALTER TABLE [dbo].[tagRegistry] ADD  CONSTRAINT [DF_tagRegistry_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[tagRegistry] ADD  CONSTRAINT [DF_tagRegistry_rowGuid]  DEFAULT (newid()) FOR [rowGuid]
GO
ALTER TABLE [dbo].[tblLecturasEPCReader] ADD  DEFAULT ((0)) FOR [Encontrado]
GO
ALTER TABLE [dbo].[tblLecturasEPCReader] ADD  DEFAULT ((0)) FOR [Procesado]
GO
ALTER TABLE [dbo].[tblTagsToAssign] ADD  CONSTRAINT [DF_tblTagsToAssign_DateRegistry]  DEFAULT (getdate()) FOR [DateRegistry]
GO
ALTER TABLE [dbo].[tblTagsToAssign] ADD  CONSTRAINT [DF_tblTagsToAssign_Assigned]  DEFAULT ((0)) FOR [Assigned]
GO
ALTER TABLE [dbo].[tempAssets] ADD  CONSTRAINT [DF__tempAsset__Barco__5F492382]  DEFAULT ('0') FOR [Barcode]
GO
ALTER TABLE [dbo].[tempAssets] ADD  CONSTRAINT [DF__tempAsset__Metod__603D47BB]  DEFAULT ('RFID') FOR [Metodo]
GO
ALTER TABLE [dbo].[tempAssets] ADD  CONSTRAINT [DF__tempAsset__Marca__61316BF4]  DEFAULT ('') FOR [Marca]
GO
ALTER TABLE [dbo].[tempAssets] ADD  CONSTRAINT [DF__tempAsset__IdAct__67DE6983]  DEFAULT (NULL) FOR [IdActivoLocal]
GO
ALTER TABLE [dbo].[TiposInventario] ADD  CONSTRAINT [DF_TiposInventario_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[TomaFisica] ADD  CONSTRAINT [DF_TomaFisica_IdToma]  DEFAULT (newid()) FOR [IdToma]
GO
ALTER TABLE [dbo].[TomaFisica] ADD  CONSTRAINT [DF_TomaFisica_TakeDate]  DEFAULT (getdate()) FOR [TakeDate]
GO
ALTER TABLE [dbo].[TomaFisicaDetalle] ADD  CONSTRAINT [DF_TomaFisicaDetalle_IdTakeDetail]  DEFAULT (newid()) FOR [IdTakeDetail]
GO
ALTER TABLE [dbo].[TomasdelInventario] ADD  CONSTRAINT [DF__TomasdelInve__ID__467D75B8]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[TomasdelInventario] ADD  CONSTRAINT [DF_TomasdelInventario_fecha]  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[usuarios_x_empleados] ADD  CONSTRAINT [DF__usuarios___rowid__6501FCD8]  DEFAULT (newid()) FOR [rowid]
GO
ALTER TABLE [dbo].[AlertasActivo]  WITH CHECK ADD FOREIGN KEY([IdActivo])
REFERENCES [dbo].[assets] ([assetSysId])
GO
ALTER TABLE [dbo].[AlertasActivo]  WITH CHECK ADD FOREIGN KEY([IdTipoAlerta])
REFERENCES [dbo].[TiposAlertas] ([IdTipoAlerta])
GO
ALTER TABLE [dbo].[AlertasPorZona]  WITH CHECK ADD FOREIGN KEY([IdTipoAlerta])
REFERENCES [dbo].[TiposAlertas] ([IdTipoAlerta])
GO
ALTER TABLE [dbo].[AlertasPorZona]  WITH CHECK ADD FOREIGN KEY([IdZona])
REFERENCES [dbo].[Zonas] ([IDZona])
GO
ALTER TABLE [dbo].[AlertasPorZona]  WITH CHECK ADD FOREIGN KEY([IdZona])
REFERENCES [dbo].[Zonas] ([IDZona])
GO
ALTER TABLE [dbo].[AssetsTraceMovementsNew]  WITH CHECK ADD FOREIGN KEY([IdZone])
REFERENCES [dbo].[Zone] ([IdZone])
GO
ALTER TABLE [dbo].[BitacoraInicioSesion]  WITH CHECK ADD  CONSTRAINT [FK_BitacoraInicioSesion_users] FOREIGN KEY([UserNameFK])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[BitacoraInicioSesion] CHECK CONSTRAINT [FK_BitacoraInicioSesion_users]
GO
ALTER TABLE [dbo].[BitacoraPermisosConsumidosAsset]  WITH CHECK ADD  CONSTRAINT [FK_BitacoraPermisosAsset_assets] FOREIGN KEY([assetSysIdFK])
REFERENCES [dbo].[assets] ([assetSysId])
GO
ALTER TABLE [dbo].[BitacoraPermisosConsumidosAsset] CHECK CONSTRAINT [FK_BitacoraPermisosAsset_assets]
GO
ALTER TABLE [dbo].[BitacoraPermisosConsumidosAsset]  WITH CHECK ADD  CONSTRAINT [FK_BitacoraPermisosAsset_employees] FOREIGN KEY([employeedRelatedFK])
REFERENCES [dbo].[employees] ([employeeSysId])
GO
ALTER TABLE [dbo].[BitacoraPermisosConsumidosAsset] CHECK CONSTRAINT [FK_BitacoraPermisosAsset_employees]
GO
ALTER TABLE [dbo].[Detalle_Inventario]  WITH NOCHECK ADD  CONSTRAINT [FK_Detalle_Inventario_Inventario] FOREIGN KEY([ID_Inventario])
REFERENCES [dbo].[Inventario] ([ID])
GO
ALTER TABLE [dbo].[Detalle_Inventario] CHECK CONSTRAINT [FK_Detalle_Inventario_Inventario]
GO
ALTER TABLE [dbo].[Inventario]  WITH NOCHECK ADD  CONSTRAINT [FK_Inventario_TomasdelInventario] FOREIGN KEY([IDToma])
REFERENCES [dbo].[TomasdelInventario] ([ID])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK_Inventario_TomasdelInventario]
GO
ALTER TABLE [dbo].[LogicoB]  WITH CHECK ADD FOREIGN KEY([IdLogicoA])
REFERENCES [dbo].[LogicoA] ([IdLogicoA])
GO
ALTER TABLE [dbo].[TomaFisicaDetalle]  WITH CHECK ADD  CONSTRAINT [TomaFisicaDetalle_FK_TomaFisica] FOREIGN KEY([FK_TomaFisica])
REFERENCES [dbo].[TomaFisica] ([IdToma])
GO
ALTER TABLE [dbo].[TomaFisicaDetalle] CHECK CONSTRAINT [TomaFisicaDetalle_FK_TomaFisica]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [Fk_userType] FOREIGN KEY([Fk_userType])
REFERENCES [dbo].[UserType] ([IdUserType])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [Fk_userType]
GO
ALTER TABLE [dbo].[UsersXCompanies]  WITH CHECK ADD  CONSTRAINT [FK_username] FOREIGN KEY([FK_username])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[UsersXCompanies] CHECK CONSTRAINT [FK_username]
GO
ALTER TABLE [dbo].[Zonas]  WITH CHECK ADD  CONSTRAINT [FK_OficinaID] FOREIGN KEY([OficinaID])
REFERENCES [dbo].[officeses] ([officeSysId])
GO
ALTER TABLE [dbo].[Zonas] CHECK CONSTRAINT [FK_OficinaID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID para los proveedores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProveedores', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cédula de proveedores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProveedores', @level2type=N'COLUMN',@level2name=N'cedula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre proveedores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblProveedores', @level2type=N'COLUMN',@level2name=N'nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que guarda los códigos de barra asignados a los EPC que se van a utilizar cuando se registren nuevos activos en el sistema. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblTagsToAssign'
GO

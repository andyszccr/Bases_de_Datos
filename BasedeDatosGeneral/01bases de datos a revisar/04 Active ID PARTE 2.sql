USE [ACTIVEID_INA_TEST_ASAMBLEA]
GO
/****** Object:  UserDefinedTableType [dbo].[ActivosConciliacion]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[ActivosConciliacion] AS TABLE(
	[CodeBar] [nvarchar](200) NULL,
	[IdEdificio] [uniqueidentifier] NULL,
	[IdPiso] [uniqueidentifier] NULL,
	[IdOficina] [uniqueidentifier] NULL,
	[IdCategoria] [uniqueidentifier] NULL,
	[Descripcion] [nvarchar](200) NULL,
	[DescripcionLarga] [nvarchar](200) NULL,
	[Serial] [nvarchar](100) NULL,
	[FechaHoraRegistro] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Actualizar_Activo]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[Actualizar_Activo] AS TABLE(
	[Alias] [varchar](500) NULL,
	[longDescription] [varchar](1400) NOT NULL,
	[tagSysId] [varchar](100) NULL,
	[assetSysId] [uniqueidentifier] NOT NULL,
	[officeSysId] [uniqueidentifier] NOT NULL,
	[floorSysId] [uniqueidentifier] NOT NULL,
	[buildingSysId] [uniqueidentifier] NOT NULL,
	[companySysId] [uniqueidentifier] NOT NULL,
	[brand] [varchar](100) NOT NULL,
	[modelNo] [varchar](200) NOT NULL,
	[serialNo] [varchar](200) NOT NULL,
	[Barcode] [varchar](200) NOT NULL,
	[updateUser] [uniqueidentifier] NOT NULL,
	[parentAssetSysId] [uniqueidentifier] NOT NULL,
	[assetStatusSysId] [uniqueidentifier] NOT NULL,
	[employeeRelated] [uniqueidentifier] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[AssetsType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[AssetsType] AS TABLE(
	[assetSysId] [uniqueidentifier] NULL,
	[tagSysId] [uniqueidentifier] NULL,
	[officeSysId] [uniqueidentifier] NULL,
	[floorSysId] [uniqueidentifier] NULL,
	[buildingSysId] [uniqueidentifier] NULL,
	[companySysId] [uniqueidentifier] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[DetalleInventarioType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[DetalleInventarioType] AS TABLE(
	[idInventoryDetails] [uniqueidentifier] NULL,
	[idInventory] [uniqueidentifier] NULL,
	[assetNumber] [varchar](200) NULL,
	[assetDescription] [varchar](500) NULL,
	[EPC] [varchar](200) NULL,
	[assetState] [varchar](100) NULL,
	[assetExcluded] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[epcGS1]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[epcGS1] AS TABLE(
	[epc] [nvarchar](100) NOT NULL,
	[epcLote] [nvarchar](100) NOT NULL,
	[numeroTag] [int] NOT NULL,
	[Categoria] [nvarchar](100) NOT NULL,
	[Consecutivo] [nvarchar](100) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ErroresExcel]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[ErroresExcel] AS TABLE(
	[Error] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[InventarioType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[InventarioType] AS TABLE(
	[idInventory] [uniqueidentifier] NULL,
	[numItems] [bigint] NULL,
	[readItems] [bigint] NULL,
	[readTotal] [bigint] NULL,
	[readOk] [bigint] NULL,
	[readMissing] [bigint] NULL,
	[readExtra] [bigint] NULL,
	[inventoryDate] [datetime] NULL,
	[idInventoryTake] [uniqueidentifier] NULL,
	[method] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[LoteEPCTAGTemp]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[LoteEPCTAGTemp] AS TABLE(
	[_epc] [varchar](30) NOT NULL,
	[_numeroTag] [varchar](25) NOT NULL,
	[_lote] [varchar](100) NOT NULL,
	[_consecutivo] [varchar](50) NOT NULL,
	[_placa] [varchar](50) NOT NULL,
	[_estaGrabado] [bit] NOT NULL,
	[_estaAsociado] [bit] NOT NULL,
	[_estaImpreso] [bit] NOT NULL,
	[_categoriaTag] [varchar](40) NOT NULL,
	[_tipoTag] [varchar](100) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[officeses]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[officeses] AS TABLE(
	[officeSysId] [uniqueidentifier] NULL,
	[companySysId] [uniqueidentifier] NULL,
	[buildingSysId] [uniqueidentifier] NULL,
	[businessUnitSysId] [uniqueidentifier] NULL,
	[floorSysId] [uniqueidentifier] NULL,
	[deptSysId] [uniqueidentifier] NULL,
	[tagSysId] [uniqueidentifier] NULL,
	[name] [varchar](100) NULL,
	[descripcion] [varchar](150) NULL,
	[entryUser] [uniqueidentifier] NULL,
	[entryDate] [datetime] NULL,
	[updateUser] [uniqueidentifier] NULL,
	[updateDate] [datetime] NULL,
	[rowGuid] [uniqueidentifier] NULL,
	[IsEnable] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[OfficesXTagsType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[OfficesXTagsType] AS TABLE(
	[officeSysId] [uniqueidentifier] NULL,
	[tagSysId] [uniqueidentifier] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[sectorActualizado]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[sectorActualizado] AS TABLE(
	[officeSysId] [uniqueidentifier] NOT NULL,
	[oficinaNombre] [varchar](200) NULL,
	[tagId] [varchar](100) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TablaTemporalTestGS1]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[TablaTemporalTestGS1] AS TABLE(
	[epc] [nvarchar](100) NOT NULL,
	[epcLote] [nvarchar](100) NOT NULL,
	[numeroTag] [int] NOT NULL,
	[Categoria] [nvarchar](100) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tagsClasificados]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[tagsClasificados] AS TABLE(
	[tagSysId] [uniqueidentifier] NULL,
	[tagID] [varchar](100) NOT NULL,
	[tagTypeSysId] [uniqueidentifier] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TagsType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[TagsType] AS TABLE(
	[tagSysId] [uniqueidentifier] NULL,
	[tagID] [varchar](150) NULL,
	[isAssigned] [bit] NULL,
	[tagTypeSysId] [uniqueidentifier] NULL,
	[ignored] [bit] NULL,
	[discontinued] [bit] NULL,
	[entryUser] [uniqueidentifier] NULL,
	[entryDate] [datetime] NULL,
	[updateUser] [uniqueidentifier] NULL,
	[updateDate] [datetime] NULL,
	[sinc] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TomaFisicaDetalleType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[TomaFisicaDetalleType] AS TABLE(
	[IdTakeDetail] [uniqueidentifier] NOT NULL,
	[FK_TomaFisica] [uniqueidentifier] NOT NULL,
	[EPC] [varchar](200) NOT NULL,
	[DateRead] [datetime] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TomaFisicaType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[TomaFisicaType] AS TABLE(
	[IdToma] [uniqueidentifier] NOT NULL,
	[TakeName] [varchar](150) NOT NULL,
	[TakeDescription] [varchar](150) NOT NULL,
	[TakeDate] [datetime] NOT NULL,
	[TakeStatus] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TomasInventarioType]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[TomasInventarioType] AS TABLE(
	[idInventoryTake] [uniqueidentifier] NULL,
	[inventoryDate] [datetime] NULL,
	[userSysId] [uniqueidentifier] NULL,
	[officeSysId] [uniqueidentifier] NULL,
	[idInventoryType] [uniqueidentifier] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[type_newAsset]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[type_newAsset] AS TABLE(
	[assetId] [int] NOT NULL,
	[numero] [varchar](200) NULL,
	[placa] [varchar](200) NULL,
	[longDescription] [varchar](400) NOT NULL,
	[companySysId] [uniqueidentifier] NULL,
	[buildingSysId] [uniqueidentifier] NOT NULL,
	[floorSysId] [uniqueidentifier] NOT NULL,
	[officeSysId] [uniqueidentifier] NOT NULL,
	[encargado] [varchar](200) NULL,
	[brand] [varchar](200) NOT NULL,
	[modelNo] [varchar](200) NOT NULL,
	[serial] [varchar](200) NULL,
	[tagId] [varchar](100) NOT NULL,
	[compania] [varchar](200) NOT NULL,
	[edificio] [varchar](200) NOT NULL,
	[piso] [varchar](200) NOT NULL,
	[oficina] [varchar](200) NOT NULL,
	[parentAssetSysId] [uniqueidentifier] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Type_table_officeses]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[Type_table_officeses] AS TABLE(
	[officeSysId] [uniqueidentifier] NULL,
	[floorSysId] [uniqueidentifier] NULL,
	[name] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TypeReaderEstado]    Script Date: 30/10/2024 23:28:06 ******/
CREATE TYPE [dbo].[TypeReaderEstado] AS TABLE(
	[Ip] [varchar](150) NOT NULL,
	[Antena] [int] NOT NULL,
	[EstadoReader] [int] NOT NULL,
	[EstadoAntena] [int] NOT NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[Fn_SeparaApellidos]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Fn_SeparaApellidos](@NombreCompleto varchar(200))
returns varchar(200)
as 
begin
	 declare @Apellidoss  varchar(150) = ' ', @Nombres varchar(150) = '' 
	 declare @nombre varchar(100),
		     @restoCadena varchar(100),
			 @FullName varchar(200) = ' ',
			 @Nombres2 varchar(50)= ' '
 
 
	declare @posicion int = 0, @Cantidad_Espacios int = 0, @longitud int = 0
 
	set @FullName = LTRIM(RTRIM(@NombreCompleto)) 
	set @longitud = LEN(LTRIM(RTRIM(@NombreCompleto)))
   
	while @longitud > 0
	begin 
		set @posicion = CHARINDEX(' ',@NombreCompleto)
		set @nombre = SUBSTRING(@NombreCompleto,1,@posicion)
		set @NombreCompleto = SUBSTRING(@NombreCompleto,@posicion+1,@longitud)
		set @longitud = @longitud - @posicion
    
		if @posicion = 0
		begin  
			set @longitud = 0
		end
		else 
		begin 
			set @Cantidad_Espacios = @Cantidad_Espacios + 1
		end   
	end

	set @longitud = LEN(@FullName)

	if @Cantidad_Espacios = 1
	begin
		set @posicion = CHARINDEX(' ',@FullName)
		set @Nombres = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
		set @Apellidoss = LTRIM(RTRIM(SUBSTRING(@FullName,@posicion+1,@longitud)))
	end
	else if @Cantidad_Espacios = 2
	begin
				 
		 set @posicion = CHARINDEX(' ',@FullName)
		 set @Nombres = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
		 set @FullName = SUBSTRING(@FullName,@posicion+1,@longitud)
				 
		 set @posicion = CHARINDEX(' ',@FullName)
		 set @Apellidoss = LTRIM(RTRIM(SUBSTRING(@FullName,1,@longitud))) 
			 
	end
	else if @Cantidad_Espacios = 3    
	begin 
		set @posicion = CHARINDEX(' ',@FullName)
		set @Nombres = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
		set @FullName = SUBSTRING(@FullName,@posicion+1,@longitud)
				 
		set @posicion = CHARINDEX(' ',@FullName)
		set @Nombres2 = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
		set @Apellidoss = LTRIM(RTRIM(SUBSTRING(@FullName,@posicion+1,@longitud)))			 
	end  
	return @Apellidoss 
end

GO
/****** Object:  UserDefinedFunction [dbo].[Fn_SeparaNombre]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[Fn_SeparaNombre](@NombreCompleto varchar(200))
returns varchar(200)
as 
begin
	 declare @nombress  varchar(150) = ' '
	 declare @nombre varchar(100),
		     @restoCadena varchar(100),
			 @FullName varchar(200) = ' ',
			 @Nombres2 varchar(50)= ' '
 
 
	declare @posicion int = 0, @Cantidad_Espacios int = 0, @longitud int = 0
 
	set @FullName = LTRIM(RTRIM(@NombreCompleto)) 
	set @longitud = LEN(LTRIM(RTRIM(@NombreCompleto)))
   
	while @longitud > 0
	begin 
		set @posicion = CHARINDEX(' ',@NombreCompleto)
		set @nombre = SUBSTRING(@NombreCompleto,1,@posicion)
		set @NombreCompleto = SUBSTRING(@NombreCompleto,@posicion+1,@longitud)
		set @longitud = @longitud - @posicion
    
		if @posicion = 0
		begin  
			set @longitud = 0
		end
		else 
		begin 
			set @Cantidad_Espacios = @Cantidad_Espacios + 1
		end   
	end

	set @longitud = LEN(@FullName)

	if @Cantidad_Espacios = 1
	begin
		set @posicion = CHARINDEX(' ',@FullName)
		set @nombress = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
		
	end
	else if @Cantidad_Espacios = 2
	begin
				 
		set @posicion = CHARINDEX(' ',@FullName)
		set @nombress = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
			 
	end
	else if @Cantidad_Espacios = 3    
	begin 
		set @posicion = CHARINDEX(' ',@FullName)
		set @nombress = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
		set @FullName = SUBSTRING(@FullName,@posicion+1,@longitud)
				 
		set @posicion = CHARINDEX(' ',@FullName)
	    set @Nombres2 = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
					 
		set @nombress = LTRIM(RTRIM(@nombress + ' ' + @Nombres2))			 
	end  
	return @nombress 
end

GO
/****** Object:  UserDefinedFunction [dbo].[fnc_ObtnerUltimaFechaLectura]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[fnc_ObtnerUltimaFechaLectura](
@assetSysId uniqueidentifier	
)

RETURNS DateTime
AS
BEGIN
	-- Declare the return variable here
	DECLARE @FechaUltimaLectura DateTime
	DECLARE @FechaInventario DateTime
	Declare @FechaAntenas DateTime
	Declare @FechaCreacion DateTime = (Select entryDate from assets where assetSysId = @assetSysId)
	-- Add the T-SQL statements to compute the return value here
	SELECT  @FechaAntenas= max(ISNULL(tm.dateModified, @FechaCreacion)),  @FechaInventario = max(ISNULL(tf.DateRead, @FechaCreacion))
	from assets a
	inner join AssetsTraceMovements tm on tm.assetsSysId = a.assetSysId
	inner join tagRegistry tr on a.tagSysId = tr.tagSysId
	Left join TomaFisicaDetalle tf on tf.EPC = tr.tagID
	where a.assetSysId= @assetSysId

	IF(@FechaAntenas > @FechaInventario)	
	set @FechaUltimaLectura = @FechaAntenas
	ELSE
	set @FechaUltimaLectura = @FechaInventario
	
	-- Return the result of the function
	
	RETURN @FechaUltimaLectura
	
	--2020-03-11 15:24:55.930
END
GO
/****** Object:  UserDefinedFunction [dbo].[FunctonObtenerCodigoBarrasEditado]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[FunctonObtenerCodigoBarrasEditado] ()
RETURNS NVARCHAR(200)
WITH EXECUTE AS CALLER
AS
BEGIN

	DECLARE 
		@CodigoBarras NVARCHAR(200),
		@Consecutivo INT

	--INICIALIZACION DE DATOS
	SET @CodigoBarras = 'E-'
	SET @Consecutivo = 1

	SELECT @Consecutivo = COUNT(Id) FROM Activos_Ingresados

	IF(@Consecutivo = 0)
	BEGIN
		SET @Consecutivo = 1
	END
	ELSE
	BEGIN
		SET @Consecutivo += 1
	END

	SET @CodigoBarras = @CodigoBarras + CONVERT(VARCHAR, @Consecutivo)

	RETURN @CodigoBarras
END 
GO
/****** Object:  UserDefinedFunction [dbo].[getLastBuildingSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila Padrón
-- Create date: 20 september 2017
-- Description:	Function that returns the last 
--              buildingSysId
-- =============================================
CREATE FUNCTION [dbo].[getLastBuildingSysId]  
(

)
RETURNS uniqueidentifier
AS
BEGIN
	DECLARE @buildingSysId uniqueidentifier
	SELECT top 1 @buildingSysId = buildingSysId 
	FROM buildings
	ORDER BY entryDate DESC

	RETURN @buildingSysId
END
GO
/****** Object:  UserDefinedFunction [dbo].[getLastBusinessUnitSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila 
-- Create date: 21 september 2017
-- Descrition:	Get the last businessUnitSysId from departments
-- =============================================
CREATE FUNCTION [dbo].[getLastBusinessUnitSysId]
(

)
RETURNS uniqueidentifier
AS
BEGIN
	DECLARE @businessUnitSysId uniqueidentifier
	SELECT top 1 @businessUnitSysId = businessUnitSysId
	FROM businessUnit
	ORDER BY entryDate DESC

	RETURN @businessUnitSysId
END
GO
/****** Object:  UserDefinedFunction [dbo].[getLastCompanySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila Padrón
-- Create date: 20 september 2017
-- Description:	Function that returns the last 
--              companySysId from table companies
-- =============================================
CREATE FUNCTION [dbo].[getLastCompanySysId] 
(

)
RETURNS uniqueidentifier
AS
BEGIN
	DECLARE @companySysId uniqueidentifier
	SELECT top 1 @companySysId = companySysId 
	FROM companies
	ORDER BY entryDate DESC

	RETURN @companySysId
END
GO
/****** Object:  UserDefinedFunction [dbo].[getLastDepartmentSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila 
-- Create date: 21 september 2017
-- Descrition:	Get the last departmentSysId from departments
-- =============================================
CREATE FUNCTION [dbo].[getLastDepartmentSysId]
(

)
RETURNS uniqueidentifier
AS
BEGIN
	DECLARE @departmentSysId uniqueidentifier
	SELECT top 1 @departmentSysId = deptSysId
	FROM departments
	ORDER BY entryDate DESC

	RETURN @departmentSysId
END
GO
/****** Object:  UserDefinedFunction [dbo].[getLastFloorSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila Padrón
-- Create date: 20 september 2017
-- Description:	Function that returns the last 
--              floorSysId
-- =============================================
CREATE FUNCTION [dbo].[getLastFloorSysId]  
(

)
RETURNS uniqueidentifier
AS
BEGIN
	DECLARE @floorSysId uniqueidentifier
	SELECT top 1 @floorSysId = floorSysId 
	FROM floors
	ORDER BY entryDate DESC

	RETURN @floorSysId
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetOfficeByAssetNumber]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetOfficeByAssetNumber] 
(
	-- Add the parameters for the function here
	@NumeroActivo varchar(200)
)
RETURNS varchar(400)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Sector varchar(400)
	

/*	IF(@NumeroActivo = '0000000')
	BEGIN
	SET @Sector = 'NO APLICA'
	END
	ELSE
	BEGIN*/
		SET @Sector  = (
        SELECT O.name
        FROM assets A
        INNER JOIN officeses O ON O.officeSysId = A.officeSysId
        WHERE A.Barcode = @NumeroActivo
        )
	--END

	RETURN @Sector

END



GO
/****** Object:  UserDefinedFunction [dbo].[getUserSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila Padrón
-- Create date: 20 september 2017
-- Description:	Function that given an username
--              returns the corresponding username
-- =============================================
CREATE FUNCTION [dbo].[getUserSysId]
(
	-- Add the parameters for the function here
	@username varchar(50)
)
RETURNS uniqueidentifier
AS
BEGIN
	DECLARE @userSysId uniqueidentifier
	SELECT top 1 @userSysId = U.userSysId
	FROM users U
	WHERE U.username = @username
	
	RETURN @userSysId
END
GO
/****** Object:  UserDefinedFunction [dbo].[ObtnerUltimaFechaLectura]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ObtnerUltimaFechaLectura](
@assetSysId uniqueidentifier	
)

RETURNS DateTime
AS
BEGIN
	-- Declare the return variable here
	DECLARE @FechaUltimaLectura DateTime
	DECLARE @FechaInventario DateTime
	Declare @FechaAntenas DateTime
	Declare @FechaCreacion DateTime = (Select entryDate from assets where assetSysId = @assetSysId)
	-- Add the T-SQL statements to compute the return value here
	SELECT  @FechaAntenas= max(ISNULL(tm.dateModified, @FechaCreacion)),  @FechaInventario = max(ISNULL(tf.DateRead, @FechaCreacion))
	from assets a
	inner join AssetsTraceMovements tm on tm.assetsSysId = a.assetSysId
	inner join tagRegistry tr on a.tagSysId = tr.tagSysId
	Left join TomaFisicaDetalle tf on tf.EPC = tr.tagID
	where a.assetSysId= @assetSysId

	IF(@FechaAntenas > @FechaInventario)	
	set @FechaUltimaLectura = @FechaAntenas
	ELSE
	set @FechaUltimaLectura = @FechaInventario
	
	-- Return the result of the function
	
	RETURN @FechaUltimaLectura
	
	--2020-03-11 15:24:55.930
END
GO
/****** Object:  UserDefinedFunction [dbo].[SeparaNombre]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	   
	   CREATE function [dbo].[SeparaNombre](@NombreCompleto varchar(100),@Nombres varchar(50),@Apellidos varchar(50))
	   returns bit 
	   begin 
			 
				 declare @nombre varchar(100),
						 @restoCadena varchar(100),
						 @FullName varchar(100) = '',
						 @Nombres2 varchar(50)		 
						 
				 declare @posicion int,@longitud int, @Cantidad_Espacios int = 0
				 
				 set @FullName = @NombreCompleto	
				 set @longitud = LEN(@NombreCompleto)
				 	
				 --ciclo donde se cuentan los campos en blanco	
				 while @longitud > 0
				 begin 
					 set @posicion = CHARINDEX(' ',@NombreCompleto)
					 set @nombre = SUBSTRING(@NombreCompleto,1,@posicion)
					 set @NombreCompleto = SUBSTRING(@NombreCompleto,@posicion+1,@longitud)
					 set @longitud = @longitud - @posicion
					 
					 if @posicion = 0
					 begin  
						 set @longitud = 0
					 end
					 else 
					 begin 
						  set @Cantidad_Espacios = @Cantidad_Espacios + 1
					 end 	 
				 end
				 --fin ciclo donde se cuentan los campos en blanco
				 set @longitud = LEN(@FullName)
				 if @Cantidad_Espacios = 2
				 begin
					 
					 set @posicion = CHARINDEX(' ',@FullName)
					 set @Nombres = SUBSTRING(@FullName,1,@posicion)
					 set @FullName = SUBSTRING(@FullName,@posicion+1,@longitud)
					 
					 set @posicion = CHARINDEX(' ',@FullName)
					 set @Apellidos = SUBSTRING(@FullName,1,@longitud) 
				 
				 end
				 else if @Cantidad_Espacios = 3    
				 begin 
					 set @posicion = CHARINDEX(' ',@FullName)
					 set @Nombres = SUBSTRING(@FullName,1,@posicion)
					 set @FullName = SUBSTRING(@FullName,@posicion+1,@longitud)
					 
					 set @posicion = CHARINDEX(' ',@FullName)
					 set @Nombres2 = SUBSTRING(@FullName,1,@posicion)
					 set @Apellidos = SUBSTRING(@FullName,@posicion+1,@longitud)
					 
					 set @Nombres = @Nombres + ' ' + @Nombres2
					 
				 end 
				 return (1)				 	 	
	   end		
	
	
	
	
	
	
				
	
				
				
			  
GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Split]
(
    @RowData NVARCHAR(MAX) ,
    @SplitOn NVARCHAR(5)
)
RETURNS @ReturnValue TABLE (Indice INT, Data NVARCHAR(MAX) ) AS
    BEGIN
        DECLARE @Counter INT
        SET @Counter = 1
        WHILE ( CHARINDEX(@SplitOn, @RowData) > 0 )
        BEGIN
            INSERT  INTO @ReturnValue (Indice, data )
                SELECT  Indice = @Counter, Data = LTRIM(RTRIM(SUBSTRING(@RowData, 1, CHARINDEX(@SplitOn, @RowData) - 1)))
            SET @RowData = SUBSTRING(@RowData, CHARINDEX(@SplitOn, @RowData) + 1, LEN(@RowData))
            SET @Counter = @Counter + 1
        END
        INSERT INTO @ReturnValue ( Indice, data )
        SELECT Indice = @Counter , Data = LTRIM(RTRIM(@RowData))

        RETURN
    END;
GO
/****** Object:  UserDefinedFunction [dbo].[splitstring]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[splitstring] ( @stringToSplit VARCHAR(MAX) )
RETURNS
@returnList TABLE ([Name] [nvarchar] (500))
AS
BEGIN

 DECLARE @name NVARCHAR(255)
 DECLARE @pos INT

 WHILE CHARINDEX('-', @stringToSplit) > 0
 BEGIN
  SELECT @pos  = CHARINDEX('-', @stringToSplit)  
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @name

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END

 INSERT INTO @returnList
 SELECT @stringToSplit

 RETURN
END
GO
/****** Object:  View [dbo].[Inventarios_Aprobados]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Inventarios_Aprobados]
as
select t.ID, i.ID as [ID_de_toma] , t.fecha as [Fecha_de_Toma], ti.Nombre as [Tipo_de_Inventario], o.name as [Oficina], i.Num as [Consecutivo], i.Total as [Activosregistrados], i.Leidos as [Activos_Leidos], i.Ok as [Pertenecen], i.Sobrantes as [No_Pertenecen], i.Faltantes as [Faltantes]
from TomasdelInventario t, Inventario i, TiposInventario ti, officeses o
where t.ID_TipoInventario = ti.ID and
	i.IDToma=t.ID and
	t.Oficina=o.officeSysId	and
	i.Marca=1



GO
/****** Object:  View [dbo].[V_ASSETS]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ASSETS] WITH SCHEMABINDING 
AS
    select  assetSysId, 
            assetItemNumber, 
            Barcode,
            AST.name AS Status, 
            ASCT.name AS Category, 
            C.name as BusinessName, 
            B.name as Country, 
            F.name as Building,
            O.name as Sector, 
            E.name + ' ' + E.lastName as Encargado, 
            cost, 
            shortDescription, 
            longDescription, 
            DateAdquired
    from dbo.assets A
    INNER JOIN (SELECT assetStatusSysId, name FROM dbo.assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
    INNER JOIN (SELECT assetCategorySysId, name FROM dbo.assetCategory) ASCT ON ASCT.assetCategorySysId = A.assetCategorySysId
    INNER JOIN (SELECT companySysId, name FROM dbo.companies) C ON C.companySysId = A.companySysId
    INNER JOIN (SELECT buildingSysId, name FROM dbo.buildings) B ON B.buildingSysId = A.buildingSysId
    INNER JOIN (SELECT floorSysId, name FROM dbo.floors) F ON F.floorSysId = A.floorSysId
    INNER JOIN (SELECT officeSysId, name FROM dbo.officeses) O ON O.officeSysId = A.officeSysId
    INNER JOIN (SELECT employeeSysId, name, lastName FROM dbo.employees) E ON E.employeeSysId = A.employeeRelated
    WHERE AST.name <> 'Inactivo'
GO
/****** Object:  View [dbo].[V_ASSETS_ON_INVENTORIES2]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ASSETS_ON_INVENTORIES2] WITH SCHEMABINDING 
AS
    WITH INVENTORY(NumeroActivo, 
                   Descripcion, 
                   Estado, 
                   Oficina, 
                   Fecha)
    AS(
        SELECT  NumeroActivo, 
                Descripcion, 
                Estado, 
                Oficina, 
                Fecha
        FROM dbo.Detalle_Inventario DTI
        INNER JOIN (select ID, Fecha, IDToma from dbo.Inventario where Marca = 1) INV ON INV.ID = DTI.ID_Inventario
        INNER JOIN (SELECT ID, Oficina, ID_TipoInventario  FROM dbo.TomasdelInventario) TMI  ON TMI.ID = INV.IDToma
        where Fecha = (select top 1 INVV.Fecha
               from dbo.Detalle_Inventario DTII
               INNER JOIN (select ID, Fecha, IDToma from dbo.Inventario where Marca = 1) INVV ON INVV.ID = DTII.ID_Inventario
               where NumeroActivo = DTI.NumeroActivo
               order by Fecha desc)   
        )
    SELECT NumeroActivo, Descripcion, Estado, Oficina, Fecha  FROM INVENTORY
    GROUP BY NumeroActivo, Descripcion, Estado, Oficina, Fecha

GO
/****** Object:  View [dbo].[View_Assets]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------
CREATE VIEW [dbo].[View_Assets]
AS
SELECT *
FROM ASSETS
-------------------------------
GO
/****** Object:  View [dbo].[View_Employees]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------
CREATE VIEW [dbo].[View_Employees]
AS
SELECT  employeeSysId, 
        companySysId, 
        managementSysId, 
        deptSysId, 
        employeeNo, 
        name, 
        lastName, 
        tagSysId, 
        id, 
        phone1, 
        cell,
        email, 
        active, 
        hireDate, 
        endOfLaboralRelationshipDate 
FROM employees
-------------------------------
GO
/****** Object:  View [dbo].[View_InventoriesDetails]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_InventoriesDetails]
AS
    select DTI.ID AS ID_DetalleInventario, 
           DTI.ID_Inventario, 
           DTI.NumeroActivo, 
           DTI.Descripcion AS DescripcionDetalleInventario, 
           DTI.EPC, 
           DTI.Estado, 
           DTI.Excluido, 
           DTI.Observaciones, 
           DTI.CustomComentario, 
           I.ID AS ID_Inventario2, 
           I.Num, 
           I.Leidos, 
           I.Total, 
           I.Ok, 
           I.Faltantes, 
           I.Sobrantes, 
           I.Fecha AS FechaInventario, 
           I.IDToma, 
           I.Marca, 
           I.Metodo, 
           TMI.ID AS ID_TomaInventario, 
           TMI.fecha, 
           TMI.usuario AS FechaTomaFisica, 
           TMI.Oficina, 
           TMI.ID_TipoInventario,
           TPI.ID AS ID_TipoInventario2, 
           TPI.Nombre AS NombreTipoInventario, 
           TPI.Descripcion AS DescripcionTipoInventario, 
           TPO.ID AS ID_Observaciones, 
           TPO.Nombre AS NombreTipoObservaciones
    from Detalle_Inventario DTI
    INNER JOIN Inventario I ON DTI.ID_Inventario = I.ID
    INNER JOIN TomasdelInventario TMI ON TMI.ID = I.IDToma
    INNER JOIN TiposInventario TPI ON TPI.ID = TMI.ID_TipoInventario
    INNER JOIN tipoObservaciones TPO ON DTI.Observaciones = TPO.ID
GO
/****** Object:  View [dbo].[View_MassiveAssets]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[View_MassiveAssets]
WITH SCHEMABINDING 
AS
SELECT        A.AssetsIndex, A.assetSysId AS IdActivo, E.name + ' ' + E.lastName AS Alias, A.shortDescription AS Descripcion, D.name AS Departamento, O.name AS Oficina, F.name AS Piso, B.name AS Edificio, C.name AS Compania, 
                         TR.tagID AS Tag, A.assetItemNumber AS Numero, A.Barcode AS CodeBar, O.officeSysId AS IdOficina, A.ShelfSysId AS IdEstante, A.assetCategorySysId AS IdCategoria, A.floorSysId AS IdPiso, A.buildingSysId AS IdEdificio, 
                         A.companySysId AS IdCompania, A.brand AS Marca, A.modelNo AS Modelo, A.serialNo AS Serial, 
						 
						ISNULL(A.parentAssetSyId, '00000000-0000-0000-0000-000000000000') as parentAssetSysId,
						 
						 
						 A.assetStatusSysId, A.employeeRelated
FROM            dbo.assets AS A INNER JOIN
                         dbo.departments AS D ON D.deptSysId = A.departmentSysId INNER JOIN
                         dbo.companies AS C ON C.companySysId = A.companySysId INNER JOIN
                         dbo.buildings AS B ON B.buildingSysId = A.buildingSysId INNER JOIN
                         dbo.floors AS F ON F.floorSysId = A.floorSysId INNER JOIN
                         dbo.officeses AS O ON O.officeSysId = A.officeSysId INNER JOIN
                         dbo.employees AS E ON E.employeeSysId = A.employeeRelated INNER JOIN
                         dbo.tagRegistry AS TR ON TR.tagSysId = A.tagSysId


GO
/****** Object:  View [dbo].[View_PhysicalLocationA]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_PhysicalLocationA]
AS
SELECT companySysId, 
       name, 
       description
FROM companies
-------------------------------
GO
/****** Object:  View [dbo].[View_PhysicalLocationB]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------
CREATE VIEW [dbo].[View_PhysicalLocationB]
AS
SELECT  buildingSysId, 
        companySysId, 
        name, 
        description
FROM buildings
-------------------------------
GO
/****** Object:  View [dbo].[View_PhysicalLocationC]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------
CREATE VIEW [dbo].[View_PhysicalLocationC]
AS
SELECT  floorSysId, 
        buildingSysId, 
        companySysId, 
        name, 
        description
FROM floors
-------------------------------
GO
/****** Object:  View [dbo].[View_PhysicalLocationD]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------
CREATE VIEW [dbo].[View_PhysicalLocationD]
AS
SELECT  officeSysId, 
        companySysId, 
        buildingSysId, 
        businessUnitSysId, 
        floorSysId, 
        deptSysId, 
        tagSysId, 
        name, 
        description
FROM officeses
-------------------------------
GO
/****** Object:  View [dbo].[View_Proveedores]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------
CREATE VIEW [dbo].[View_Proveedores]
AS
SELECT ID, 
       cedula, 
       nombre, 
       email
FROM tblProveedores
GO
/****** Object:  View [dbo].[vistaActivos]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vistaActivos]
as
select
a.assetSysId, a.assetItemNumber, ac.assetCategorySysId, ast.assetStatusSysId, 
c.companySysId, m.managementSysId, d.deptSysId, b.businessUnitSysId,
o.officeSysId, a.buildingSysId, a.floorSysId, a.employeeRelated, a.tagSysId,
a.lastEmployeeRelated, a.brand, a.modelNo, a.serialNo, a.skuNo,a.PartNo,
a.isDepreciated, a.isObsolete, a.color, a.cost, a.size, a.shortDescription,
 a.longDescription, a.accessoriesIncluded, a.accessoriesQuantity, a.accessoryDescription1,
  a.accessorySerial1, a.accessoryModel1, a.accessoryDescription2, a.accessorySerial2,
   a.accessoryModel2, a.accessoryDescription4, a.accessorySerial4, a.accessoryModel4,
    a.entryUser, a.updateUser, a.rowGuid,  a.BillNo, a.DateAdquired, a.ProviderSysId,
     a.GarantyTerms, a.expirationDate, a.unidNumber, a.NUMB_APR, a.Alias
from assets a,assetCategory ac, assetStatus ast, officeses o, 
  companies c, Management m, departments d, businessUnit b
where 
	a.assetCategorySysId=ac.assetCategorySysId
and a.assetStatusSysId=ast.assetStatusSysId
and a.businessUnitSysId = b.businessUnitSysId
and b.departmentSysId = d.deptSysId
and d.managementSysId = m.managementSysId
and m.companySysId = c.companySysId
and a.officeSysId = o.officeSysId



GO
/****** Object:  View [dbo].[vt_empleados]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vt_empleados]
AS
SELECT e.employeeSysId AS IdEmpleado, e.name + ' ' + e.lastName AS Nombre, e.employeeNo AS Numero, e.id AS Cédula, d.name + ' / ' + d.description AS Departamento, e.userSysId, e.email
FROM  dbo.employees AS e INNER JOIN
               dbo.departments AS d ON e.deptSysId = d.deptSysId
WHERE (e.deptSysId NOT IN
                   (SELECT employeeSysId
                    FROM   dbo.usuarios_x_empleados
                    WHERE (employeeSysId = e.employeeSysId)))

GO
/****** Object:  View [dbo].[vt_usuarios]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vt_usuarios]
as
select e.name+' '+e.lastName as [Nombre], a.username as [Usuario], a.isLockedOut as [Bloqueado], a.email as [E-mail], c.Nombre as [Rol]
from users a, usuarios_x_empleados b, RolesUsuario c, employees e
where
a.userSysId=b.userSysId and
b.employeeSysId = e.employeeSysId and
a.Idrol=c.idRol



GO
/****** Object:  View [dbo].[vt_usuarios_disponibles]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vt_usuarios_disponibles]
as
select a.userSysId, a.username as [Usuario], a.isLockedOut as [Bloqueado], a.email as [E-mail], c.Nombre as [Rol]
from users a, RolesUsuario c
where
a.Idrol=c.idRol and
a.userSysId not In (select usuarios_x_empleados.userSysId from usuarios_x_empleados where usuarios_x_empleados.userSysId=a.userSysId)



GO
/****** Object:  StoredProcedure [dbo].[ActivarDesactivarRol]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ActivarDesactivarRol]
@idrol uniqueidentifier
as
declare @bloq bit
begin
select @bloq = ESTA_BLOQUEADO from RolesUsuario where idRol = @idrol 
if @bloq=0
begin
update RolesUsuario set ESTA_BLOQUEADO =1 where idRol = @idrol
end else
if @bloq=1
begin
update RolesUsuario set ESTA_BLOQUEADO =0 where idRol = @idrol
end
end;



GO
/****** Object:  StoredProcedure [dbo].[ActivoConAlerta]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActivoConAlerta]
@IdAlerta int
AS
BEGIN
	
	SET NOCOUNT ON;
	Select Count(IdAlertasActivo) as Cantidad from AlertasActivo where IdTipoAlerta = @IdAlerta 
   
END

GO
/****** Object:  StoredProcedure [dbo].[AsignarOficinaAActivo]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AsignarOficinaAActivo]
@IdActivo uniqueidentifier,
@idOficina uniqueidentifier
as
begin
	declare @idpiso uniqueidentifier,
			@edificio uniqueidentifier
			
	select @idpiso = floorSysId from officeses where officeSysId = @idOficina
	select @edificio = buildingSysId from floors where floorSysId = @idpiso
	
	UPDATE assets SET officeSysId= @idOficina, floorSysId = @idpiso, buildingSysId= @edificio
	WHERE assetSysId=@IdActivo
end


GO
/****** Object:  StoredProcedure [dbo].[AsignarTagaActivo]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AsignarTagaActivo]  
@ID uniqueidentifier,
@tag varchar(256)
as
begin
print 'hola'
	declare @idtag uniqueidentifier,
			@tagTypeSysId uniqueidentifier
	
	select @idtag = tagSysId from tagRegistry where tagID=@tag
	print 'hola 2'
	if @idtag is Null
	begin
	print 'Soy nulo'
		select @idtag= newID()
		
		select @tagTypeSysId = tagTypeSysId from tagTypes where name = 'activo'
		
		insert into tagRegistry (tagSysId, tagID, tagTypeSysId, isAssigned, discontinued ) 
		values 
		(@idtag, @tag, @tagTypeSysId, 0, 0)
	end
	
	update assets set tagSysId=@idtag where assetSysId = @ID
	
	update tagRegistry set isAssigned = 1 where tagSysId=@idtag
	
	
end



GO
/****** Object:  StoredProcedure [dbo].[AsignarTagaOficina]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AsignarTagaOficina]
@ID uniqueidentifier,
@tag varchar(256)
as
begin
	declare @idtag uniqueidentifier
	
	select @idtag = tagSysId from tagRegistry where tagID=@tag
	
	
	update officeses set tagSysId=@idtag where officeSysId = @ID
	
	update tagRegistry set isAssigned = 1 where tagSysId=@idtag
end



GO
/****** Object:  StoredProcedure [dbo].[Asignarusuario]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Asignarusuario]
@usuario uniqueidentifier,
@empleado uniqueidentifier
as 
begin
	update employees set userSysId=@usuario where employeeSysId=@empleado;
end



GO
/****** Object:  StoredProcedure [dbo].[AsociarNumeroTagEPC]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AsociarNumeroTagEPC]

	 @NTag varchar(255),
	 @EPC varchar(255)	 
AS
BEGIN
	begin Try	   
		if not exists(select * from TagEPC where NumeroTag = @NTag)
		begin 
			insert into TagEPC(NumeroTag,EPC,FechaHora)
			values(@NTag,@EPC, GETDATE())	
			exec [SP_IngresarTag] @EPC
			update epcTestGs1 set Grabado = 1 where epc = @EPC
		end 
		else
		begin 
			update TagEPC
			set EPC = @EPC
			where  NumeroTag = @NTag
			exec [SP_IngresarTag] @EPC
			update epcTestGs1 set Grabado = 1 where epc = @EPC
		end 
	End Try
	begin Catch	
		THROW  select ERROR_NUMBER(), ERROR_MESSAGE(), 1; 
	end Catch
END


GO
/****** Object:  StoredProcedure [dbo].[BackUpAutomatico]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[BackUpAutomatico]
	
AS
BEGIN
	
	DECLARE @path VARCHAR(500)
	DECLARE @name VARCHAR(500)
	DECLARE @pathwithname VARCHAR(500)
	DECLARE @time DATETIME
	DECLARE @year VARCHAR(4)
	DECLARE @month VARCHAR(2)
	DECLARE @day VARCHAR(2)
	DECLARE @hour VARCHAR(2)
	DECLARE @minute VARCHAR(2)
	DECLARE @second VARCHAR(2)
	--SET NOCOUNT ON;

	SELECT @time   = GETDATE()
	SELECT @year   = (SELECT CONVERT(VARCHAR(4), DATEPART(yy, @time)))
	SELECT @month  = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(mm,@time),'00')))
	SELECT @day    = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(dd,@time),'00')))
	SELECT @hour   = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(hh,@time),'00')))
	SELECT @minute = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(mi,@time),'00')))
	SELECT @second = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(ss,@time),'00')))


	SELECT @name ='ASAMBLEA' + '_' + @year + '_'+ @month + '_'+ @day + '_'+ @hour + '_'+ @minute + '_'+ @second 
	SET @path = 'F:\Backup\Backup Base de Datos\'
	SET @pathwithname = @path + @namE + '.bak'


	BACKUP DATABASE [ACTIVEID_ASAMBLEA] TO  DISK = @pathwithname
	WITH NOFORMAT, NOINIT,  NAME = N'ACTIVEID_ASAMBLEA-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10


END
GO
/****** Object:  StoredProcedure [dbo].[BitacoraActivos]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Joselyn Monge>
-- Create date: <14/12/2016>
-- Description:	<BitacoraActivos>
-- =============================================
CREATE PROCEDURE [dbo].[BitacoraActivos] 
	-- Add the parameters for the stored procedure here
@FechaInicio DateTime,
@FechaFinal DateTime
AS
BEGIN
	SELECT * FROM vt_BitacoraActivos
	WHERE "Fecha Lectura">=@FechaInicio AND "Fecha Lectura"<= @FechaFinal
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarActivoPorCodeBar]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BuscarActivoPorCodeBar] --'768497111035'
@codebar varchar(128)
as
begin

select 
	a.assetSysId ID, 
	a.assetItemNumber Numero, 
	a.Barcode tag, 
	a.Alias, 
	a.longDescription Descripcion, 
	o.name oficina, 
	d.name departamento
	from assets a, officeses o, departments d
	where
	a.officeSysId = o.officeSysId and
	a.departmentSysId = d.deptSysId and
	a.Barcode = @codebar
end



GO
/****** Object:  StoredProcedure [dbo].[BuscarActivoPorEPC]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BuscarActivoPorEPC]
@EPC varchar(256)
as
begin
declare @tagSysID uniqueidentifier
select @tagSysID = tagSysId from tagRegistry where tagID= @EPC
select a.assetSysId ID, a.assetItemNumber Numero, @EPC tag, a.Alias, a.shortDescription+ ' ' +a.brand +' '+ a.longDescription Descripcion, o.name oficina, d.name departamento
	 from assets a, officeses o, departments d
	 where
	 a.officeSysId = o.officeSysId and
	 a.departmentSysId = d.deptSysId and
	 a.tagSysId= @tagSysID
end



GO
/****** Object:  StoredProcedure [dbo].[BuscarActivoPorEPCBurbuja]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BuscarActivoPorEPCBurbuja]
@EPC varchar(256)
as
begin
	Declare @Fecha Datetime;
	set @Fecha=GETDATE();
	select top 1
	isnull((SELECT isPermissionActive FROM assetPermission WHERE assetSysIdFK= a.assetSysId 
					AND CONVERT(DATE,dateStartPermission)<=CONVERT(DATE,@Fecha) 
					AND CONVERT(DATE,dateEndPermission)>=CONVERT(DATE,@Fecha)
					AND isPermissionActive = '1'),0) isPermissionActive 
	,a.shortDescription
	,e.id
	,e.name 
	,e.lastName
	from assets a
	inner join tagRegistry tr on tr.tagSysId = a.tagSysId
	inner join employees e on e.employeeSysId = a.employeeRelated
	where tr.tagID = @EPC
end
GO
/****** Object:  StoredProcedure [dbo].[cambiarComenatrio]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
create procedure [dbo].[cambiarComenatrio]
@Id uniqueidentifier,
@comment nvarchar(600)
as
begin
update Detalle_Inventario set CustomComentario = @comment where ID = @Id
end



GO
/****** Object:  StoredProcedure [dbo].[CambiarObservaciones]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ListarTipodeTomadeInventario
create procedure [dbo].[CambiarObservaciones]
@ID uniqueidentifier,
@observaciones nvarchar(2500)
as
begin

	declare @IDObservaciones uniqueidentifier
	
	select @IDObservaciones = ID from tipoObservaciones where Nombre = @observaciones
	
	update Detalle_Inventario set Observaciones=@IDObservaciones where ID=@ID
	
end



GO
/****** Object:  StoredProcedure [dbo].[CargarNuevaLista]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Joselyn Monge>
-- Create date: <22/12/2016>
-- Description:	<CargarNuevaLista>
-- =============================================
CREATE PROCEDURE [dbo].[CargarNuevaLista]
	-- Add the parameters for the stored procedure here
	@MainNo  varchar(500) = null,
	@SubNum  varchar(500) = null,
	@AssetDescription  varchar(500) = null,
	@SecondLineAssetDesc  varchar(500) = null,
	@Qty  varchar(500) = null,
	@AClass  varchar(500) = null,
	@InventoryNumber  varchar(500) = null,
	@PlantCod  varchar(500) = null,
	@CostCenter  varchar(500) = null,
	@Location  varchar(500) = null,
	@AcqValue  varchar(500) = null,
	@BookVal  varchar(500) = null,
	@CapDate  varchar(500) = null,
	@SerNo  varchar(500) = null,
	@LastInv  varchar(500) = null
AS
BEGIN
	SET NOCOUNT ON;
    IF NOT EXISTS(Select InventoryNumber from activeInventory where InventoryNumber = @InventoryNumber)
	BEGIN
	  INSERT INTO activeInventory(MainNo,SubNum,AssetDescription,SecondLineAssetDesc,Qty,AClass,InventoryNumber,
	              PlantCod,CostCenter,Location,AcqValue,BookVal,CapDate,SerNo,LastInv)
	  VALUES (
	  @MainNo,
	  @SubNum,
	  @AssetDescription,
	  @SecondLineAssetDesc,
	  @Qty,
	  @AClass,
	  @InventoryNumber,
	  @PlantCod,
	  @CostCenter,
	  @Location,
	  @AcqValue,
	  @BookVal,
	  @CapDate,
	  @SerNo,
	  @LastInv
	  )
	  END
	  ELSE
	  BEGIN
	  
	  UPDATE activeInventory SET 
	  MainNo= @MainNo,
	  SubNum= @SubNum,
	  AssetDescription= @AssetDescription,
	  SecondLineAssetDesc= @SecondLineAssetDesc,
	  Qty= @Qty,
	  AClass= @AClass,
	  InventoryNumber= @InventoryNumber,
	  PlantCod= @PlantCod,
	  CostCenter= @CostCenter,
	  Location= @Location,
	  AcqValue= @AcqValue,
	  BookVal= @BookVal,
	  CapDate= @CapDate,
	  SerNo= @SerNo,
	  LastInv= @LastInv
	  
	  WHERE InventoryNumber = @InventoryNumber

	  END
END

GO
/****** Object:  StoredProcedure [dbo].[CargarTomadeInventario]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CargarTomadeInventario] --'4994e4ef-799b-4d63-a15e-54575b2b4ee7'
@IDToma uniqueidentifier
as
begin
SELECT     
a.assetSysId AS ID, 
DTI.Estado, 
DTI.NumeroActivo AS [NActivo], 
DTI.DescripcionDetalleInventario AS Descripcion, 
A.serialNo AS Serie,  

O.name  as Sector,

E.name + ' ' + E.lastName as Encargado,
CONVERT(varchar, A.DateAdquired, 103) AS [FechaAdquisicion],
CONVERT(varchar, A.cost, 1) AS Costo,
DTI.NombreTipoObservaciones AS Concepto,  
A.NUMB_APR AS NFactura,
DTI.CustomComentario AS Comentario,
DTI.NombreTipoInventario AS Tipo, 
DTI.fecha AS Fecha, 
A.ValorResidual AS [VidaUtil]
,ASE.Barcode AS BarcoreParent
,ASE.shortDescription AS DescriptionParent
from View_InventoriesDetails DTI 
INNER JOIN assets A ON DTI.NumeroActivo = A.Barcode AND A.Barcode != '0000000' 
INNER JOIN officeses O ON A.officeSysId = O.officeSysId
INNER JOIN employees E ON A.employeeRelated = E.employeeSysId
LEFT JOIN assets ASE ON A.parentAssetSyId = ASE.assetSysId
where	DTI.Marca = 1 and DTI.ID_TomaInventario=@IDToma
Order by DTI.Estado DESC
end
GO
/****** Object:  StoredProcedure [dbo].[ConsolidacionOficinas]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConsolidacionOficinas]
	
	@tablaOficinasHH dbo.Type_table_officeses  readonly,
	@tablaAceptados dbo.ActivosConciliacion readonly,
	@tablaIngresados dbo.ActivosConciliacion readonly,
    @tablaActualizados dbo.ActivosConciliacion readonly
    
as

begin
	 begin try
		SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION

			insert into officeses(officeSysId,
									companySysId,
									buildingSysId,
									businessUnitSysId,
									floorSysId,
									deptSysId,			   
									tagSysId ,
									name,
									description,
									entryUser,
									entryDate,
									updateUser,
									updateDate,
									rowGuid, 
									IsEnable)
			select  officeSysId = NEWID(),
					companySysId = f.companySysId,
					buildingSysId = f.buildingSysId,
					businessUnitSysId = CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier),
					floorSysId = f.floorSysId,
					deptSysId = CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier),
					tagSysId = CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier),
					name = HH.name,
					description = HH.name,
					entryUser = dbo.getUserSysId('Admin'),
					entryDate =  getdate(),
					updateUser = dbo.getUserSysId('Admin'),
					updateDate = GETDATE(),
					rowGuid = NEWID(),
					IsEnable = 1
			from officeses O
			right join @tablaOficinasHH HH ON O.name = HH.name AND
											  O.floorSysId = HH.floorSysId
			inner join floors f ON HH.floorSysId = f.floorSysId 
			where O.officeSysId is null

			--select * from @TempOficinas       
        COMMIT TRANSACTION
        
        exec ConsolidacionOficinasUpdates @tablaOficinasHH, @tablaAceptados	,@tablaIngresados, @tablaActualizados
	    exec [SP_InsertarActivos_Toma] @tablaAceptados	,@tablaIngresados, @tablaActualizados

	 end try
	 begin catch
	   SELECT ERROR_MESSAGE()+ '-' + 
			  CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
			  ERROR_PROCEDURE()  AS 'RESULTADO'
				
				if @@TRANCOUNT > 0
				Begin
					Rollback
					select @@Error * -1
 				End	
	 end catch
end 
GO
/****** Object:  StoredProcedure [dbo].[ConsolidacionOficinasUpdates]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConsolidacionOficinasUpdates]

  @tablaOficinasHH dbo.Type_table_officeses  readonly,
  @tablaAceptados dbo.ActivosConciliacion readonly,
  @tablaIngresados dbo.ActivosConciliacion readonly,
  @tablaActualizados dbo.ActivosConciliacion readonly

as
	declare @TablaTempAceptados dbo.ActivosConciliacion,
			@TablaTempActualizados dbo.ActivosConciliacion,
			@TablaTempIngresados dbo.ActivosConciliacion
	
	declare @officeSysId uniqueidentifier,
			@floorSysId uniqueidentifier,
			@name varchar(200)
begin
	 begin try
		--***********************************************
			insert into @TablaTempAceptados(codebar,
											 IdEdificio,
											 IdPiso,
											 IdOficina,
											 IdCategoria,
											 Descripcion,
											 DescripcionLarga,
											 Serial,
											 FechaHoraRegistro)
			 select
					codebar = ta.CodeBar,
					IdEdificio = ta.IdEdificio,
					IdPiso = ta.IdPiso,
					IdOficina = ta.IdOficina,
					IdCategoria = ta.IdCategoria,
					Descripcion = ta.Descripcion,
					DescripcionLarga = ta.DescripcionLarga,
					Serial = ta.Serial,
					FechaHoraRegistro = ta.FechaHoraRegistro		 
			 from @tablaAceptados as ta 
			 --from dbo.Activos_Aceptados as ta
		--***********************************************
			insert into @TablaTempIngresados(codebar,
											 IdEdificio,
											 IdPiso,
											 IdOficina,
											 IdCategoria,
											 Descripcion,
											 DescripcionLarga,
											 Serial,
											 FechaHoraRegistro)
			 select
					codebar = ti.CodeBar,
					IdEdificio = ti.IdEdificio,
					IdPiso = ti.IdPiso,
					IdOficina = ti.IdOficina,
					IdCategoria = ti.IdCategoria,
					Descripcion = ti.Descripcion,
					DescripcionLarga = ti.DescripcionLarga,
					Serial = ti.Serial,
					FechaHoraRegistro = ti.FechaHoraRegistro	 
			 from @tablaIngresados as ti
			 --from dbo.Activos_Ingresados as ti			 		 	 
		--***********************************************
			insert into @TablaTempActualizados(codebar,
											 IdEdificio,
											 IdPiso,
											 IdOficina,
											 IdCategoria,
											 Descripcion,
											 DescripcionLarga,
											 Serial,
											 FechaHoraRegistro)
			 select
					codebar = ta.CodeBar,
					IdEdificio = ta.IdEdificio,
					IdPiso = ta.IdPiso,
					IdOficina = ta.IdOficina,
					IdCategoria = ta.IdCategoria,
					Descripcion = ta.Descripcion,
					DescripcionLarga = ta.DescripcionLarga,
					Serial = ta.Serial,
					FechaHoraRegistro = ta.FechaHoraRegistro	 
			 from @tablaActualizados as ta
			 --from dbo.Activos_Actualizados as ta
		--***********************************************
		--****
		--select * from @TablaTempAceptados
		--****
		
		declare cursor2 cursor
		for select officeSysId,
				   floorSysId,
				   name	
		from @tablaOficinasHH
		
		open cursor2
		fetch next from cursor2 into @officeSysId,
									 @floorSysId,
									 @name 
		while @@FETCH_STATUS = 0
		begin 
			if(exists(select IdOficina from @TablaTempAceptados where IdOficina = @officeSysId))
			begin 
			   
			   update @TablaTempAceptados 
			   set IdOficina = o.officeSysId
			   from officeses o
			   where IdOficina = @officeSysId  --'00000000-0000-0000-0000-000000000033'
					 and o.floorSysId	= @floorSysId
					 and o.name	= @name

			end
			if(exists(select IdOficina from @TablaTempIngresados where IdOficina = @officeSysId))
			begin
			   update @TablaTempIngresados 
			   set IdOficina = O.officeSysId
			   from officeses O
			   where IdOficina = @officeSysId
					and o.floorSysId = @floorSysId
					and o.name	= @name
			end
			if(exists(select * from @TablaTempActualizados where IdOficina = @officeSysId))
			begin
			   update @TablaTempActualizados 
			   set IdOficina = O.officeSysId
			   from officeses O
			   where --IdOficina = @officeSysId
					 IdOficina = @officeSysId
					 and o.floorSysId = @floorSysId
					 and o.name	= @name
			end	
			fetch next from cursor2 into @officeSysId,
										 @floorSysId,
										 @name 
		end
		
		
		--select * from @TablaTempAceptados
		--select * from @TablaTempActualizados
		--select * from @TablaTempIngresados
		--select * from dbo.officeses					
	    exec [SP_InsertarActivos_Toma] @TablaTempAceptados, @TablaTempIngresados, @TablaTempActualizados
        		
	end try
	begin catch
	
		 SELECT ERROR_MESSAGE()+ '-' + 
			   CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
			   ERROR_PROCEDURE()  AS 'RESULTADO';
			   
	end catch
	
	close cursor2
	deallocate cursor2
end
GO
/****** Object:  StoredProcedure [dbo].[ConsultaPlacaEPC]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConsultaPlacaEPC]

	 @Placa varchar(255) 
AS
BEGIN
	if not exists(select * from TagEPC where NumeroTag = @Placa)
	begin 
		select '0' as Respuesta
	end 
	else
	begin 
		select '1' as Respuesta
	end 
END
GO
/****** Object:  StoredProcedure [dbo].[CreateInventoryHeader]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 17-jul-2012
-- Description:	CreateInventoryHeader
-- =============================================
CREATE PROCEDURE [dbo].[CreateInventoryHeader]
	-- Add the parameters for the stored procedure here
            @inventorySysId uniqueidentifier
           ,@locationSysId uniqueidentifier
           ,@hhESN varchar(100)
           ,@status int
           ,@entryUser uniqueidentifier
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [inventory]
           ([inventorySysId]
           ,[locationSysId]
           ,[startDate]
           ,[endDate]
           ,[hhESN]
           ,[status]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (@inventorySysId 
           ,@locationSysId 
           ,GETDATE()
           ,null
           ,@hhESN 
           ,@status 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser
           ,GETDATE()
           ,NEWID())


END



GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
  *-----------------------------------------------------------------*
  * Modificado por: Nelson Calderón S.							    *
  * Fecha: 05-oct-2016                                              *
  * Objeto: Crear el usuario sin depender del colaborador(personal) *
  *-----------------------------------------------------------------*
*/ 
CREATE PROCEDURE [dbo].[CreateUser]
-- Add the parameters for the stored procedure here
			@userSysId 	uniqueidentifier		
           ,@username varchar(255) 
           ,@applicationName varchar(255) 
           ,@email varchar(128) 
           ,@comment varchar(255) 
           ,@password varchar(128)
           ,@IDROLE uniqueidentifier 
           ,@isaprobed bit
           ,@idem uniqueidentifier
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 
	 INSERT INTO [dbo].[users]
           ([userSysId]
           ,[username]
           ,[applicationName]
           ,[email]
           ,[comment]
           ,[password]
           ,[passwordQuestion]
           ,[passwordAnswer]
           ,[isApproved]
           ,[lastActivityDate]
           ,[lastLoginDate]
           ,[lastPasswordChangedDate]
           ,[creationDate]
           ,[isOnLine]
           ,[isLockedOut]
           ,[lastLockedOutDate]
           ,[failedPasswordAttemptCount]
           ,[failedPasswordAttemptWindowStart]
           ,[failedPasswordAnswerAttemptCount]
           ,[failedPasswordAnswerAttemptWindowStart]
           ,[IdRol]
           )
     VALUES
           (@userSysId
           ,@username
           ,@applicationName
           ,@email
           ,@comment
           ,@password
           ,''
           ,''
           ,@isaprobed
           ,GETDATE()
           ,GETDATE()
           ,GETDATE()
           ,GETDATE()
           ,@isaprobed
           ,0
           ,GETDATE()
           ,0
           ,GETDATE()
           ,0
           ,GETDATE(),
           @IDROLE
           )
           
/*    update employees 
      set userSysId=@userSysId 
      where employeeSysId = @idem  */
END



GO
/****** Object:  StoredProcedure [dbo].[CreateUserPermissions]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 05-jul-2012
-- Description:	CreateUserPermissions
-- =============================================
CREATE PROCEDURE [dbo].[CreateUserPermissions]
	-- Add the parameters for the stored procedure here
	  @userSysId uniqueidentifier
	 ,@entryUser uniqueidentifier
	 
AS
declare @permisos int;
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
     --DELETE from [permissions]
     --WHERE userSysId = @userSysId
    
    set @permisos = (select COUNT(allowed) from permissions where userSysId = @userSysId)
    if @permisos = 0
    begin
		INSERT INTO [permissions]
           ([permissionSysId]
           ,[userSysId]
           ,[page]
           ,[description]
           ,[allowed]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
(
		SELECT   NEWID()
				,@userSysId
				,s.pageName page
				,s.[NameToShow]
				,0
				,@entryUser
				,GETDATE()
				,@entryUser
				,GETDATE()
				,NEWID()
		FROM screens  s
)			
    end
END



GO
/****** Object:  StoredProcedure [dbo].[DeactivateInventoryTake]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeactivateInventoryTake] 
	-- Add the parameters for the stored procedure here
    @TakeId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @Status bit = (SELECT TakeStatus 
                           FROM TomaFisica 
                           WHERE IdToma = @TakeId )
    IF (@Status = 0)
    BEGIN
        UPDATE TomaFisica
        SET TakeStatus = 1
        WHERE IdToma = @TakeId
    END
    ELSE
    BEGIN 
        UPDATE TomaFisica
        SET TakeStatus = 0
        WHERE IdToma = @TakeId
    END

    -- Insert statements for procedure here

END
GO
/****** Object:  StoredProcedure [dbo].[Delete_AlertasActivo]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_AlertasActivo]
	
	@IdActivo uniqueidentifier,
	@Resultado varchar(100) output
AS
BEGIN
	SET NOCOUNT ON;

    DELETE AlertasActivo 
	WHERE IdActivo = @IdActivo
	SET @Resultado = 'Exitoso'

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteAssetsImages]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 12/02/2013
-- Description:	Eliminar imagenes
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAssetsImages]
	-- Add the parameters for the stored procedure here
	@ImageSysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE assetsImages where imageSysId = @ImageSysId
END



GO
/****** Object:  StoredProcedure [dbo].[EditarRegistro]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////////
create procedure [dbo].[EditarRegistro]
@ID uniqueidentifier,
@Nombre nVarchar(2500)
as
begin
 Update tipoObservaciones set Nombre= @Nombre
 where ID=@ID
end



GO
/****** Object:  StoredProcedure [dbo].[EditarRol]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EditarRol]
@IdRol uniqueidentifier,
@Nombre varchar(250),
@Descripcion varchar(2500),
@ESTA_BLOQUEADO bit
as
begin
UPDATE    RolesUsuario
SET              Nombre = @Nombre, descripcion = @descripcion, ESTA_BLOQUEADO = @ESTA_BLOQUEADO
WHERE     (idRol = @idRol)
end;



GO
/****** Object:  StoredProcedure [dbo].[EditarTipoTomaInventario]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
create procedure [dbo].[EditarTipoTomaInventario]
@ID uniqueidentifier,
@Nombre nvarchar(100),
@Descripcion nvarchar(500)
as
begin
	update TiposInventario
	set Nombre=@Nombre, Descripcion= @Descripcion
	where ID = @ID
end



GO
/****** Object:  StoredProcedure [dbo].[eliminarObservacion]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////////
create procedure [dbo].[eliminarObservacion]
@ID nVarchar(2500)
as
begin
delete from tipoObservaciones  where ID=@ID
end



GO
/****** Object:  StoredProcedure [dbo].[eliminarrelaciones]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[eliminarrelaciones]
@idrol uniqueidentifier
as
begin
delete from categoríasporrol where idrol = @idrol
end



GO
/****** Object:  StoredProcedure [dbo].[ExisteEPCEnTAGEPC]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ExisteEPCEnTAGEPC]
	 @EPC varchar(255) 
AS
BEGIN
	if not exists(select* from TagEPC where EPC = @EPC)
	begin 
		select '0' as Respuesta
	end 
	else
	begin 
		select '1' as Respuesta
	end 
END
GO
/****** Object:  StoredProcedure [dbo].[get20assets]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[get20assets]
as
begin
	select top 20 
shortDescription,Barcode
from assets
end
GO
/****** Object:  StoredProcedure [dbo].[GetAlertasXzonas]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAlertasXzonas]
@IdTipoAlerta int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT z.IP,z.NumeroAntena, z.NombreZona, z.IDZona
  ,ISNULL((select IdAlertasPorZona from AlertasPorZona where IdTipoAlerta = @IdTipoAlerta and IdZona = z.IDZona),0 ) AS IdAlertasPorZona
  ,ISNULL((select ComandCenter from AlertasPorZona where IdTipoAlerta = @IdTipoAlerta and IdZona = z.IDZona),0 ) AS ComandCenter
  ,ISNULL((select Sirena from AlertasPorZona where IdTipoAlerta = @IdTipoAlerta and IdZona = z.IDZona),0 ) AS Sirena
  ,ISNULL((select Semaforo from AlertasPorZona where IdTipoAlerta = @IdTipoAlerta and IdZona = z.IDZona),0 ) AS Semaforo
  FROM Zonas z

END
GO
/****** Object:  StoredProcedure [dbo].[GetAllAccesorios]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllAccesorios]
	   as
	   begin
		select * from Vista_Accesorio
	   end



GO
/****** Object:  StoredProcedure [dbo].[GetAllAccesoriosbyid]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllAccesoriosbyid]
	   @accesorioID uniqueidentifier
	   as
	   begin
		select * from Vista_Accesorio where accesorioID = @accesorioID
	   end



GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetCategories]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetAllAssetCategories]
	@active  bit
	
AS
BEGIN

	 SELECT [assetCategorySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
	  ,depSysId
	  ,[valorvidaUtil]
  FROM [assetCategory]


END

GO
/****** Object:  StoredProcedure [dbo].[getallassets]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[getallassets]
@Active bit,
@busqueda varchar(256)
as
begin

	select TOP(1000) a.*,
	       d.name,
	       o.name, 
	       b.name,
	       c.valorvidaUtil as 'FechaObsolesencia',
	       c.vidaUtilProcomer as 'procomerLifeTime'
	  from assets      as a, 
	       departments as d, 
	       officeses   as o, 
	       businessUnit as b,
	       assetCategory as c
	  where  a.businessUnitSysId = b.businessUnitSysId 
	         and b.departmentSysId = d.deptSysId 
	         and a.officeSysId = o.officeSysId
	         and a.assetCategorySysId = c.assetCategorySysId
	         and (assetItemNumber like '%'+@busqueda+'%'
                  or Barcode like '%'+@busqueda+'%'
                  or SAPNumber like '%'+@busqueda+'%'
	              or brand like '%'+@busqueda+'%'
	              or modelNo like '%'+@busqueda+'%'
	              or serialNo = @busqueda 
	              or PartNo like '%'+@busqueda+'%'
	              or shortDescription like '%'+@busqueda+'%'
	              or a.NUMB_APR like '%'+@busqueda+'%'
	             )
	  order by d.name
end

GO
/****** Object:  StoredProcedure [dbo].[getallassets2]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[getallassets2]

@Active bit,
@busqueda varchar(256)

as
begin

select top(500)

	   a.[assetSysId]

      ,a.[assetItemNumber]

      ,a.[assetCategorySysId]

      ,a.[assetStatusSysId]

      ,a.[companySysId]

      ,a.[managementSysID]

      ,a.[departmentSysId]

      ,a.[businessUnitSysId]

      ,a.[buildingSysId]

      ,a.[floorSysId]

      ,a.[officeSysId]

      ,a.[employeeRelated]

      ,a.[tagSysId]

      ,a.[lastEmployeeRelated]

      ,a.[brand]

      ,a.[modelNo]

      ,a.[serialNo]

      ,a.[skuNo]

      ,a.[PartNo]

      ,a.[isDepreciated]

      ,a.[isObsolete]

      ,a.[color]

      ,a.[cost]

      ,a.[size]


      ,a.[shortDescription]

      ,a.[longDescription]

      ,a.[accessoriesIncluded]

      ,a.[accessoriesQuantity]

      ,a.[accessoryDescription1]

      ,a.[accessorySerial1]

      ,a.[accessoryModel1]

      ,a.[accessoryDescription2]

      ,a.[accessorySerial2]

      ,a.[accessoryModel2]

      ,a.[accessoryDescription3]

      ,a.[accessorySerial3]

      ,a.[accessoryModel3]

      ,a.[accessoryDescription4]

      ,a.[accessorySerial4]

      ,a.[accessoryModel4]

      ,a.[entryUser]

      ,a.[entryDate]

      ,a.[updateUser]

      ,a.[updateDate]

      ,a.[rowGuid]

      ,a.[BillNo]

      ,a.[DateAdquired]

      ,a.[ProviderSysId]

      ,a.[GarantyTerms]

      ,a.[expirationDate]

      ,a.[unidNumber]

      ,a.[NUMB_APR]

      ,a.[Alias]

      ,a.[Origen]

      ,a.[ObservacionesAdicionales]

      ,a.[assetSubcategory]

      ,a.[Barcode]

      ,a.[proveedor]

      ,a.[TipoRegistro]

      ,a.[Depreciado]

      ,a.[ValorResidual]

      ,a.[respaldodescrip]

      ,a.[Placa]

      ,a.[Adquisicion]

      ,a.[ShelfSysId]

      ,a.[costDollars]

      ,a.[paidTaxes]

      ,a.[duaNumber]

      ,a.[residualValueDollars]

      ,a.[ProcomerFixedAssetAccount]

      ,a.[TaxesFixedAssetAccount]

      ,a.[AccountingAccountDepreciation]

      ,a.[InternValueBooks]

      ,a.[ProcomerValueBooks]

      ,a.[CapitalizationDate]

      ,a.[FTZInvestment]

      ,a.[SAPNumber]

      ,a.[CostCenter]

      ,a.[AssetClass]
   

      ,a.[Logico_A]
      ,isnull(a.[Logico_B], 0) as Logico_B
	  , d.name,
	       o.name, 
	       b.name,
	       c.valorvidaUtil as 'FechaObsolesencia',
	       c.vidaUtilProcomer as 'procomerLifeTime'
	  from assets      as a, 
	       departments as d, 
	       officeses   as o, 
	       businessUnit as b,
	       assetCategory as c
	  where  a.businessUnitSysId = b.businessUnitSysId 
	         and b.departmentSysId = d.deptSysId 
	         and a.officeSysId = o.officeSysId
	         and a.assetCategorySysId = c.assetCategorySysId
	         and  (
			 assetItemNumber = @busqueda 

			 or Barcode  = @busqueda

              or SAPNumber  = @busqueda

	          or shortDescription like '%'+@busqueda+'%'
			  )
	             
	  order by d.name

end

GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetsbyCategories]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[GetAllAssetsbyCategories] --'782A7C16-D66C-4F1F-9AE4-54AF2E795E26', ''
@idrole uniqueidentifier,
@busqueda varchar(2500)
as
begin
	select a.*, d.name, o.name, b.name 
	from assets a, departments d, officeses o, businessUnit b, categoríasporrol c
	where
	a.departmentSysId = d.deptSysId and
	a.officeSysId = o.officeSysId and 
	a.businessUnitSysId= b.businessUnitSysId and
	a.assetCategorySysId = c.idcat and
	c.idrol = @idrole and
	(
	assetItemNumber like '%'+@busqueda+'%' or 
	brand like '%'+@busqueda+'%' or 
	modelNo like '%'+@busqueda+'%' or 
	serialNo like '%'+@busqueda+'%' or
	PartNo like '%'+@busqueda+'%' or  
	shortDescription like '%'+@busqueda+'%' or 
	longDescription like '%'+@busqueda+'%' or 
	Alias like '%'+@busqueda+'%' or 
	Origen like '%'+@busqueda+'%' or 
	ObservacionesAdicionales like '%'+@busqueda+'%' or 
	assetSubcategory  like '%'+@busqueda+'%' or
	d.name   like '%'+@busqueda+'%' or
	o.name like  '%'+@busqueda+'%' or
	b.name like '%'+@busqueda+'%')
	order by d.name

end



GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetsbyDepSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllAssetsbyDepSysId]
@depsysID uniqueidentifier
as
begin

  select a.*,
         c.name Categoría
     from assets a, 
          assetCategory c
     where departmentSysId = @depsysID

end



GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetsbyfloorSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetAllAssetsbyfloorSysId]
@floorSysId uniqueidentifier
as
begin

  select a.assetSysId, a.assetItemNumber,a.shortDescription, a.longDescription, t.tagID
     from assets a, tagRegistry t      
     where a.floorSysId = @floorSysId and t.tagSysId= a.tagSysId

end

GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetsByLogica]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllAssetsByLogica]
	
	@Active bit,
	@busqueda varchar(256),
	@Usuario uniqueidentifier --se agregó nuevo parametro
AS
BEGIN
	SET NOCOUNT ON;
	   	

	SELECT A.assetSysId, A.Barcode, A.shortDescription, AC.name AS AssetCategory, AE.name AS AssetStatus, C.name AS Companies, B.name AS Buildings, F.name AS Floors, O.name AS Officeses, A.tagSysId
	FROM assets A
	LEFT JOIN assetCategory AC
	ON A.assetCategorySysId = AC.assetCategorySysId
	LEFT JOIN assetStatus AE
	ON A.assetStatusSysId = AE.assetStatusSysId
	LEFT JOIN companies C
	ON A.companySysId = C.companySysId
	LEFT JOIN buildings B
	ON A.buildingSysId = B.buildingSysId
	LEFT JOIN floors F
	ON A.floorSysId = F.buildingSysId
	LEFT JOIN officeses O
	ON A.officeSysId = O.officeSysId	
	WHERE (A.assetItemNumber LIKE '%'+@busqueda+'%'
			OR A.Barcode LIKE '%'+@busqueda+'%'
			OR A.SAPNumber LIKE '%'+@busqueda+'%'
			OR A.brand LIKE '%'+@busqueda+'%'
			OR A.modelNo LIKE '%'+@busqueda+'%'
			OR A.serialNo = @busqueda 
			OR A.PartNo LIKE '%'+@busqueda+'%'
			OR A.shortDescription LIKE '%'+@busqueda+'%'
			OR A.NUMB_APR LIKE '%'+@busqueda+'%')	
		--	and ((a.Logico_A in (select IdLogicoA from LogicoA where userSysId = @Usuario)) or (a.Logico_B in (select IdLogicoB from LogicoB where userSysId = @Usuario)))
	ORDER BY AssetCategory
END





GO
/****** Object:  StoredProcedure [dbo].[getallassetsByNUMERO]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[getallassetsByNUMERO]

@Active bit,
@busqueda varchar(256)

as
begin

select top(500)

	   a.[assetSysId]

      ,a.[assetItemNumber]

      ,a.[assetCategorySysId]

      ,a.[assetStatusSysId]

      ,a.[companySysId]

      ,a.[managementSysID]

      ,a.[departmentSysId]

      ,a.[businessUnitSysId]

      ,a.[buildingSysId]

      ,a.[floorSysId]

      ,a.[officeSysId]

      ,a.[employeeRelated]

      ,a.[tagSysId]

      ,a.[lastEmployeeRelated]

      ,a.[brand]

      ,a.[modelNo]

      ,a.[serialNo]

      ,a.[skuNo]

      ,a.[PartNo]

      ,a.[isDepreciated]

      ,a.[isObsolete]

      ,a.[color]

      ,a.[cost]

      ,a.[size]


      ,a.[shortDescription]

      ,a.[longDescription]

      ,a.[accessoriesIncluded]

      ,a.[accessoriesQuantity]

      ,a.[accessoryDescription1]

      ,a.[accessorySerial1]

      ,a.[accessoryModel1]

      ,a.[accessoryDescription2]

      ,a.[accessorySerial2]

      ,a.[accessoryModel2]

      ,a.[accessoryDescription3]

      ,a.[accessorySerial3]

      ,a.[accessoryModel3]

      ,a.[accessoryDescription4]

      ,a.[accessorySerial4]

      ,a.[accessoryModel4]

      ,a.[entryUser]

      ,a.[entryDate]

      ,a.[updateUser]

      ,a.[updateDate]

      ,a.[rowGuid]

      ,a.[BillNo]

      ,a.[DateAdquired]

      ,a.[ProviderSysId]

      ,a.[GarantyTerms]

      ,a.[expirationDate]

      ,a.[unidNumber]

      ,a.[NUMB_APR]

      ,a.[Alias]

      ,a.[Origen]

      ,a.[ObservacionesAdicionales]

      ,a.[assetSubcategory]

      ,a.[Barcode]

      ,a.[proveedor]

      ,a.[TipoRegistro]

      ,a.[Depreciado]

      ,a.[ValorResidual]

      ,a.[respaldodescrip]

      ,a.[Placa]

      ,a.[Adquisicion]

      ,a.[ShelfSysId]

      ,a.[costDollars]

      ,a.[paidTaxes]

      ,a.[duaNumber]

      ,a.[residualValueDollars]

      ,a.[ProcomerFixedAssetAccount]

      ,a.[TaxesFixedAssetAccount]

      ,a.[AccountingAccountDepreciation]

      ,a.[InternValueBooks]

      ,a.[ProcomerValueBooks]

      ,a.[CapitalizationDate]

      ,a.[FTZInvestment]

      ,a.[SAPNumber]

      ,a.[CostCenter]

      ,a.[AssetClass]
   

      ,a.[Logico_A]
      ,isnull(a.[Logico_B], 0) as Logico_B
	  , d.name,
	       o.name, 
	       b.name,
	       c.valorvidaUtil as 'FechaObsolesencia',
	       c.vidaUtilProcomer as 'procomerLifeTime'
	  from assets      as a, 
	       departments as d, 
	       officeses   as o, 
	       businessUnit as b,
	       assetCategory as c
	  where  a.businessUnitSysId = b.businessUnitSysId 
	         and b.departmentSysId = d.deptSysId 
	         and a.officeSysId = o.officeSysId
	         and a.assetCategorySysId = c.assetCategorySysId
	         and  (
			 assetItemNumber = @busqueda 

			 or Barcode  = @busqueda

              or SAPNumber  = @busqueda

	       
			  )
	             
	  order by d.name

end

GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetsByOfficeSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 18-jul-2012
-- Description:	GetAllAssetsByOfficeSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAllAssetsByOfficeSysId]
	-- Add the parameters for the stored procedure here
	@officeSysId uniqueidentifier
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT top 100 *
  FROM [assets]
	where officeSysId = @officeSysId
	order by assetItemNumber asc

	
	
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetStatus]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 25-jun-2012
-- Description:	GetAllAssetStatus
-- =============================================
CREATE PROCEDURE [dbo].[GetAllAssetStatus]
	-- Add the parameters for the stored procedure here
	 @Active bit
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [assetStatusSysId]
      ,[name]
      ,[description]
      ,name as displayname
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [assetStatus]
  order by displayname ASC
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllAssetStatus02]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllAssetStatus02]
	 
AS
BEGIN
	
	 SELECT [assetStatusSysId]
      ,[name]
      ,[description]
      ,name + ' / ' + description as displayname
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [assetStatus]
  order by displayname ASC
  
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllBuildings]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetAllBuildings
-- =============================================
CREATE PROCEDURE [dbo].[GetAllBuildings] 
	-- Add the parameters for the stored procedure here			
		    @active bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [buildingSysId]
      ,[name]
      ,companySysId
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [buildings]

END



GO
/****** Object:  StoredProcedure [dbo].[GetAllBuildingsByCompanySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetBuildingsByName
-- =============================================
CREATE PROCEDURE [dbo].[GetAllBuildingsByCompanySysId]
	-- Add the parameters for the stored procedure here			
	    @companySysId uniqueidentifier
		

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [buildings]
WHERE [companySysId] like @companySysId 
ORDER BY [name] ASC
   
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllBuildingsForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllBuildingsForHH]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [buildingSysId]
      ,[name]
      ,companySysId
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [buildings]
  ORDER BY [name] asc
END

--------------------------------------------------------------------------------------------------------
GO
/****** Object:  StoredProcedure [dbo].[GetAllBusinessUnit]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllBusinessUnit]
	-- Add the parameters for the stored procedure here			
		    @active varchar(50) 
          

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [businessUnitSysId]
      ,[name]
      ,[description]
      ,[description]+' / '+[name] as displayname
      ,[departmentSysId]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [businessUnit] 
  order by  displayname
  
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllBusinessUnitsByCDepartamentSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllBusinessUnitsByCDepartamentSysId]
@departamentSysId uniqueidentifier
as
begin
	select * from businessUnit where departmentSysId=@departamentSysId
end



GO
/****** Object:  StoredProcedure [dbo].[GetAllBusinessUnitsByDepartmentSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllBusinessUnitsByDepartmentSysId]
	-- Add the parameters for the stored procedure here
	 @departmentSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [businessUnitSysId]
      ,[name]
      ,[description]
      ,[description]+' / '+[name] as displayname
      ,[departmentSysId]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
	FROM [businessUnit]
	where [departmentSysId] = @departmentSysId
	order by  displayname
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllCategoriesForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCategoriesForHH]
AS
BEGIN
    SELECT assetCategorySysId, name, description from assetCategory

END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCompanies]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetUserNameByEmail
-- =============================================
Create PROCEDURE [dbo].[GetAllCompanies]
	-- Add the parameters for the stored procedure here			
	@Active bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- Insert statements for procedure here
	SELECT [companySysId]
		  ,[name]
		  ,[description]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
	  FROM [companies]

END



GO
/****** Object:  StoredProcedure [dbo].[GetAllCountriesForCompany]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Oswaldo Dávila Padrón>
-- Create date: <11 september 2017>
-- Description:	<Get all the countries associated to 
--               an specific company >
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCountriesForCompany]
	@countryName varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT C.companySysId, C.name, M.CountryName
	FROM companies C
	INNER JOIN [CompaniesXCountries] M on M.FK_companySysId = C.companySysId
	where C.name = @countryName
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllDepartments]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetAllDepartments
-- =============================================
CREATE PROCEDURE [dbo].[GetAllDepartments]
	-- Add the parameters for the stored procedure here
	 @active bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [deptSysId]
		  ,managementSysId
		  ,[companySysId]
		  ,[name]
		  ,[description]
		  ,[supervisor]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
  FROM [departments]
	ORDER BY description
		
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllDepartmentsBymanagementSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		marco Lepiz
-- Create date: jun-18-2012
-- Description:	GetAllDepartmentsByBusinessUnitSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAllDepartmentsBymanagementSysId]
	-- Add the parameters for the stored procedure here
	 @managementSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [deptSysId]
      ,managementSysId
      ,[companySysId]
      ,[name]
      ,[description]
      ,[supervisor]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [departments]
  WHERE managementSysId = @managementSysId
	ORDER BY name ASC

END



GO
/****** Object:  StoredProcedure [dbo].[GetAllEmployees]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	GetAllEmployees
-- =============================================
CREATE PROCEDURE [dbo].[GetAllEmployees]
	-- Add the parameters for the stored procedure here
	 @active bit 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [employeeSysId]
      ,[companySysId]
      ,[managementSysId]
      ,[deptSysId]
      ,[employeeNo]
      ,[name]
      ,[lastName]
      ,[tagSysId]
      ,[id]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[hireDate]
      ,[endOfLaboralRelationshipDate]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
    FROM [employees]
	WHERE [active] =  @active
	ORDER BY name ASC

END



GO
/****** Object:  StoredProcedure [dbo].[getAllErrorsExcel]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getAllErrorsExcel]
AS
BEGIN

    SELECT Error as Errores 
    FROM ErroresExcel  

END
GO
/****** Object:  StoredProcedure [dbo].[GetAllFloors]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetAllFloor
-- =============================================
CREATE PROCEDURE [dbo].[GetAllFloors]
	-- Add the parameters for the stored procedure here
	        @active bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT F.[floorSysId]
      ,F.[buildingSysId]
      ,F.[companySysId]
      ,F.[name]
      ,F.[description]
      ,F.[entryUser]
      ,F.[entryDate]
      ,F.[updateUser]
      ,F.[updateDate]
      ,F.[rowGuid]
  FROM [floors] F
  order by [name] asc

   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllFloorsByBuildingSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetFloorsByDescription
-- =============================================
CREATE PROCEDURE [dbo].[GetAllFloorsByBuildingSysId]
	-- Add the parameters for the stored procedure here
    @buildingSysId uniqueidentifier
		 	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [floorSysId]
      ,[buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [floors]
  WHERE buildingSysId = @buildingSysId 
  order by [name] asc
   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllFloorsForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllFloorsForHH]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [floorSysId]
      ,[buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [floors]   		
  ORDER BY [name] asc
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllFloorsHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetAllFloorsHH]
	-- Add the parameters for the stored procedure here
	        @active bit,
	        @idEdificio uniqueidentifier
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [floorSysId]
      ,[buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [floors]
  where buildingSysId = @idEdificio
  order by [name] asc

   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllFormatos]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Joselyn Monge>
-- Create date: <19/12/2016>
-- Description:	<GetAllFormatos>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllFormatos] 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT IdFormatoexporta,nombre,extencion FROM Formatoexporta
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllInventoryTakes]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllInventoryTakes] 
	-- Add the parameters for the stored procedure here
    @BeginDate DateTime, 
	@EndDate DateTime
	--@TakeDate DateTime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


    -- Insert statements for procedure here
	SELECT  IdToma, 
            TakeName, 
            TakeDescription, 
            CONVERT(varchar, TakeDate, 103) as TakeDate, 
            TakeStatus
    FROM [dbo].[TomaFisica]
    WHERE CONVERT(date, TakeDate) >= CONVERT(date, @BeginDate)
	 and CONVERT(date, TakeDate) <= CONVERT(date, @EndDate)
    ORDER BY TakeDate desc
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllLocationsAndCounts]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 20-jul-2012
-- Description:	GetAllLocationsAndCounts
-- =============================================
CREATE PROCEDURE [dbo].[GetAllLocationsAndCounts]
	-- Add the parameters for the stored procedure here
	    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT o.[officeSysId] [id],
		   o.[name] [location], 
	       o.[description] [desc], 
	       (select COUNT(*) from assets 
				where officeSysId = o.officeSysId) 'assetsCount'
	FROM dbo.officeses o

END



GO
/****** Object:  StoredProcedure [dbo].[GetAllLongDescriptionForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllLongDescriptionForHH]
AS
BEGIN
    SELECT * FROM tblDescripcionLarga order by IdDescripcionCorta
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllManagement]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 25-Ene-2013
-- Description:	Seleccionar toda la gerencia
-- =============================================
CREATE PROCEDURE [dbo].[GetAllManagement] 
	-- Add the parameters for the stored procedure here
	@active varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT managementSysId
	       ,name
	       ,description
	       ,name+' / '+description as displayname 
	       ,companySysId
	       ,rowGuid
	 FROM Management
	 order by displayname      	        
	      
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllManagementByCompanySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 25-01-2013
-- Description:	Seleccionar toda la gerencia por compañia
-- =============================================
CREATE PROCEDURE [dbo].[GetAllManagementByCompanySysId]
	-- Add the parameters for the stored procedure here
	@companySysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT managementSysId
	       ,name
	       ,description
	       ,name+' / '+description as displayname
	       ,companySysId
	       ,rowGuid
	 FROM Management
	 where companySysId = @companySysId
	 order by displayname
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllOffice]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllOffice]
	-- Add the parameters for the stored procedure here
	 @active  bit,
	 @criterio varchar(256)
	 
AS
BEGIN	
select	o.officeSysId, 
        c.companySysId, 
        b.buildingSysId, 
        bu.businessUnitSysId, 
        f.floorSysId, 
        d.deptSysId, 
        o.tagSysId, 
        o.name, 
        o.IsEnable, 
        o.description,
		o.entryuser, 
        o.entrydate, 
        o.updateuser, 
        o.updatedate, 
        o.rowGuid, 
        m.managementSysId
from	officeses O
INNER JOIN (SELECT floorSysId, name FROM floors) AS F ON F.floorSysId = O.floorSysId
INNER JOIN (SELECT buildingSysId, name FROM buildings) AS B ON B.buildingSysId = O.buildingSysId
INNER JOIN (SELECT companySysId, name FROM companies) AS C ON C.companySysId = O.companySysId
INNER JOIN (SELECT deptSysId, name, managementSysId FROM departments) AS D ON D.deptSysId = O.deptSysId
INNER JOIN (SELECT managementSysId, name FROM Management m) AS M ON M.managementSysId = D.managementSysId
INNER JOIN (SELECT businessUnitSysId, name FROM businessUnit) AS BU ON BU.businessUnitSysId = O.businessUnitSysId
where	
		(o.name like '%'+@criterio+'%' or o.description like '%'+@criterio+'%')
END




GO
/****** Object:  StoredProcedure [dbo].[GetAllOfficeByFloorSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllOfficeByFloorSysId]
	-- Add the parameters for the stored procedure here
	 @floorSysId  uniqueidentifier
	 
AS
BEGIN	
select	o.officeSysId, o.companySysId, o.name, o.businessUnitSysId, o.buildingSysId, o.floorSysId, o.deptSysId, o.tagSysId, o.description,
 o.entryUser, o.entryDate, o.updateUser, o.updateDate, o.rowGuid, o.IsEnable
from	officeses o, floors f
where	o.floorSysId = f.floorSysId and 
		o.floorSysId =  @floorSysId
		order by o.name asc
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllOfficesForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllOfficesForHH]
 
AS
BEGIN	
--select	o.officeSysId, c.companySysId, b.buildingSysId, bu.businessUnitSysId, f.floorSysId, d.deptSysId, o.tagSysId, o.name, o.IsEnable, o.description,
--		o.entryuser, o.entrydate, o.updateuser, o.updatedate, o.rowGuid, m.managementSysId
--from	officeses o, floors f, buildings b, businessUnit bu, departments d, Management m, companies c
--where	o.floorSysId= f.floorSysId and 
--		f.buildingSysId = b.buildingSysId and
--		o.businessUnitSysId = bu.businessUnitSysId and 
--		bu.departmentSysId = d.deptSysId and
--		d.managementSysId = m.managementSysId and
--		m.companySysId = c.companySysId


        select O.officeSysId, C.companySysId, B.buildingSysId, O.businessUnitSysId, F.floorSysId, O.deptSysId, O.tagSysId, 
        O.name, O.IsEnable, O.description, O.entryUser, O.entryDate, O.updateUser, O.updateDate, O.rowGuid, CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier) as managementSysId
        from officeses O
        inner join companies C ON O.companySysId = C.companySysId
        inner join buildings B ON O.buildingSysId = B.buildingSysId
        inner join floors F ON O.floorSysId = F.floorSysId

        --        select *
        --from officeses O
        --inner join companies C ON O.companySysId = C.companySysId
        --inner join buildings B ON O.buildingSysId = B.buildingSysId
        --inner join floors F ON O.floorSysId = F.floorSysId
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllOfficesXTags]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila
-- Create date: 21 nov 2017
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetAllOfficesXTags] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT officeSysId, tagSysId 
    FROM OfficesXTags
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllPermissionsBySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 04-julio-2012
-- Description:	GetAllPermissionsBySysId
-- =============================================
create PROCEDURE [dbo].[GetAllPermissionsBySysId]
	-- Add the parameters for the stored procedure here
	 @userSysId uniqueidentifier
	,@allowed  bit
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [permissionSysId]
		  ,[userSysId]
		  ,[page]
		  ,[allowed]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
  FROM [permissions]
  where [userSysId] = @userSysId and 
		allowed = @allowed
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllPermissionsByUserSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 04-julio-2012
-- Description:	GetAllPermissionsBySysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAllPermissionsByUserSysId]
	-- Add the parameters for the stored procedure here
	 @userSysId uniqueidentifier
	
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [permissionSysId]
		  ,[userSysId]
		  ,[page]
		  ,[allowed]
		  ,[description]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
  FROM [permissions]
  where [userSysId] = @userSysId
	order by len(SUBSTRING(description, 1, 2)), SUBSTRING(description, 1, 2) asc 
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProviders]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProviders]
	-- Add the parameters for the stored procedure here
	 @Active bit 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [providerSysId]
      ,[providerName]
      ,[contactName]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [providers]
	where [active] = @Active



END

GO
/****** Object:  StoredProcedure [dbo].[GetAllReaders]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz 
-- Create date: 27-jul-2012
-- Description:	GetAllReaders
-- =============================================
CREATE PROCEDURE [dbo].[GetAllReaders]
	-- Add the parameters for the stored procedure here
	@active bit 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [readerSysId]
		  ,[brand]
		  ,[ip]
		  ,[port]
		  ,[serial]
		  ,[model]
		  ,[macAddress]
		  ,[username]
		  ,[password]
		  ,[AreaSysId]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
	FROM [readers]	
  
	
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllShelf]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetAllShelf]
	-- Add the parameters for the stored procedure here
	 @active  bit,
	 @criterio varchar(256)
	 
AS
BEGIN	
--select	o.ShelfSysId, o.officeSysId, c.companySysId, b.buildingSysId, bu.businessUnitSysId, f.floorSysId, d.deptSysId, o.tagSysId, o.name, o.IsEnable, o.description,
--		o.entryuser, o.entrydate, o.updateuser, o.updatedate, o.rowGuid, m.managementSysId
--from	shelf o, floors f, buildings b, businessUnit bu, departments d, Management m, companies c, officeses ofi
--where	o.floorSysId= f.floorSysId and 
--		f.buildingSysId = b.buildingSysId and
--		o.businessUnitSysId = bu.businessUnitSysId and 
--		bu.departmentSysId = d.deptSysId and
--		d.managementSysId = m.managementSysId and
--		m.companySysId = c.companySysId and
--		o.officeSysId = ofi.officeSysId and
--		(o.name like '%'+@criterio+'%' or o.description like '%'+@criterio+'%')
        select top 1	s.ShelfSysId,
                o.officeSysId, 
                c.companySysId, 
                b.buildingSysId, 
                bu.businessUnitSysId, 
                f.floorSysId, 
                d.deptSysId, 
                s.tagSysId, 
                s.name, 
                s.IsEnable, 
                s.description,
		        s.entryuser, 
                s.entrydate, 
                s.updateuser, 
                s.updatedate, 
                s.rowGuid, 
                m.managementSysId
        from shelf S
        INNER JOIN (SELECT officeSysId FROM officeses) AS O ON S.officeSysId = S.officeSysId
        INNER JOIN (SELECT floorSysId, name FROM floors) AS F ON F.floorSysId = s.floorSysId
        INNER JOIN (SELECT buildingSysId, name FROM buildings) AS B ON B.buildingSysId = s.buildingSysId
        INNER JOIN (SELECT companySysId, name FROM companies) AS C ON C.companySysId = s.companySysId
        INNER JOIN (SELECT deptSysId, name, managementSysId FROM departments) AS D ON D.deptSysId = s.deptSysId
        INNER JOIN (SELECT managementSysId, name FROM Management m) AS M ON M.managementSysId = D.managementSysId
        INNER JOIN (SELECT businessUnitSysId, name FROM businessUnit) AS BU ON BU.businessUnitSysId = s.businessUnitSysId
        where (s.name like '%'+@criterio+'%' or s.description like '%'+@criterio+'%')

END





GO
/****** Object:  StoredProcedure [dbo].[GetAllShortDescriptionForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllShortDescriptionForHH]
AS
BEGIN
    SELECT * FROM tblDescripcionCorta
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllStructureofficeses]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAllStructureofficeses]
@officeSysId uniqueidentifier
As
Begin	
	Select 
	 cps.companySysId
	,mng.managementSysId
	,dps.deptSysId
	,but.businessUnitSysId
	,bis.buildingSysId
	,fos.floorSysId
	,ofs.officeSysId
	
	From officeses ofs
	inner join floors fos on
	ofs.floorSysId = fos.floorSysId
	inner join buildings bis on
	fos.buildingSysId = bis.buildingSysId 
	inner join businessUnit but on
	ofs.businessUnitSysId = but.businessUnitSysId
	inner join departments dps on
	but.departmentSysId = dps.deptSysId
	inner join Management mng on 
	dps.managementSysId = mng.managementSysId
	inner join companies cps on
	mng.companySysId = cps.companySysId

	where ofs.officeSysId = @officeSysId
End



GO
/****** Object:  StoredProcedure [dbo].[GetAllTagRegistry]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 17-jul-2012
-- Description:	GetAllTagRegistry
-- =============================================
CREATE PROCEDURE [dbo].[GetAllTagRegistry]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [tagSysId]
		  ,[tagID]
		  ,[tagTypeSysId]
		  ,[isAssigned]
		  ,[discontinued]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
  FROM [tagRegistry]
  --where [discontinued] = 0

END



GO
/****** Object:  StoredProcedure [dbo].[GetAllTagsAssigned]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 18-jun-2012
-- Description:	GetAllTagsAssigned
-- =============================================
Create PROCEDURE [dbo].[GetAllTagsAssigned]
	-- Add the parameters for the stored procedure here
	@isAssigned bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [tagSysId]
      ,[tagID]
      ,[tagTypeSysId]
      ,[isAssigned]
      ,[discontinued]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [tagRegistry]
  WHERE isAssigned = @isAssigned	 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllTagTypes]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 12 jul 2012
-- Description:	GetAllTagTypes
-- =============================================
CREATE PROCEDURE [dbo].[GetAllTagTypes]
	-- Add the parameters for the stored procedure here
	@active bit
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [tagTypeSysId]
		   ,[code]
		   ,[name]
		   ,[description]
		   ,[entryUser]
		   ,[entryDate]
		   ,[updateUser]
		   ,[updateDate]
		   ,[rowGuid]
           ,'Sin Asignar' as category
	  FROM [tagTypes]
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllUsers]
	-- Add the parameters for the stored procedure here
	  @active bit
	 ,@applicationName varchar(100)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
  	 SELECT a.[userSysId]
      ,a.[username]
      ,a.[applicationName]
      ,a.[email]
      ,a.[comment]
      ,a.[password]
      ,a.[passwordQuestion]
      ,a.[passwordAnswer]
      ,a.[isApproved]
      ,a.[lastActivityDate]
      ,a.[lastLoginDate]
      ,a.[lastPasswordChangedDate]
      ,a.[creationDate]
      ,a.[isOnLine]
      ,a.[isLockedOut]
      ,a.[lastLockedOutDate]
      ,a.[failedPasswordAttemptCount]
      ,a.[failedPasswordAttemptWindowStart]
      ,a.[failedPasswordAnswerAttemptCount]
      ,a.[failedPasswordAnswerAttemptWindowStart]
      ,a.Idrol
      ,CAST('00000000-0000-0000-0000-000000000000' AS uniqueidentifier)--e.deptSysId
  FROM [users] a --, [employees] e
  WHERE a.isApproved = @active  and a.applicationName = @applicationName 
  --and
  --a.[userSysId] =e.[userSysId]
  order by username asc
	
 
END



GO
/****** Object:  StoredProcedure [dbo].[GetAllUsersByUsername]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllUsersByUsername]
	-- Add the parameters for the stored procedure here			
   @username varchar(128)
  ,@applicationName varchar(100)           
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- Insert statements for procedure here

	 SELECT  a.[userSysId]
      ,a.[username]
      ,a.[applicationName]
      ,a.[email]
      ,a.[comment]
      ,a.[password]
      ,a.[passwordQuestion]
      ,a.[passwordAnswer]
      ,a.[isApproved]
      ,a.[lastActivityDate]
      ,a.[lastLoginDate]
      ,a.[lastPasswordChangedDate]
      ,a.[creationDate]
      ,a.[isOnLine]
      ,a.[isLockedOut]
      ,a.[lastLockedOutDate]
      ,a.[failedPasswordAttemptCount]
      ,a.[failedPasswordAttemptWindowStart]
      ,a.[failedPasswordAnswerAttemptCount]
      ,a.[failedPasswordAnswerAttemptWindowStart]
      ,a.Idrol
      ,cast('00000000-0000-0000-0000-000000000000' as uniqueidentifier) deptSysId
  FROM [users] a
  WHERE a.[username] LIKE '%' + @username + '%' 
		and a.applicationName = @applicationName
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllUsersByUsernameHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllUsersByUsernameHH]
	-- Add the parameters for the stored procedure here			
   @username varchar(128)         
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- Insert statements for procedure here

	 SELECT  a.[userSysId]
  FROM [users] a
  WHERE a.[username] LIKE '%' + @username + '%' 
    
END
GO
/****** Object:  StoredProcedure [dbo].[GetAssetCategoryByCategorySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetAssetCategoryByCategorySysId]
@assetCategorySysId uniqueidentifier 
	  
AS
BEGIN

	SET NOCOUNT ON;
	 SELECT name,
	     assetCategorySysId,
	        description,
	        entryUser,
	        entryDate,
	        updateUser, 
	        updateDate,
	        rowGuid,
	        depSysId,
	        valorvidaUtil 
	         from dbo.assetCategory 
	 WHERE assetCategorySysId = @assetCategorySysId;
END

GO
/****** Object:  StoredProcedure [dbo].[GetAssetCategoryByCategorySysIdLifeTime]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssetCategoryByCategorySysIdLifeTime]
@assetCategorySysId uniqueidentifier 
	  
AS
BEGIN

	SET NOCOUNT ON;
	 SELECT name,
	     assetCategorySysId,
	        description,
	        entryUser,
	        entryDate,
	        updateUser, 
	        updateDate,
	        rowGuid,
	        depSysId,
	        valorvidaUtil, 
	        vidaUtilProcomer 
	         from dbo.assetCategory 
	 WHERE assetCategorySysId = @assetCategorySysId;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAssetCategoryByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssetCategoryByDescription]
@description  varchar(100)
	
AS
BEGIN
	 SELECT [assetCategorySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
	  ,[depSysId]
	  ,[valorvidaUtil]
  FROM [assetCategory]
	where [description] like '%' + @description + '%'

END

GO
/****** Object:  StoredProcedure [dbo].[GetAssetCategoryByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetAssetCategoryByName]

@name  varchar(100)
	
AS
BEGIN
	 SELECT [assetCategorySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
      ,[depSysId]
      ,[valorvidaUtil]
  FROM [assetCategory]
	where 
	[name] like '%'+@name +'%'

END

GO
/****** Object:  StoredProcedure [dbo].[GetAssetCategoryFullnameByCategorySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAssetCategoryFullnameByCategorySysId]
@assetCategorySysId uniqueidentifier
as
begin
	select name from assetCategory
	where assetCategorySysId = @assetCategorySysId
end

GO
/****** Object:  StoredProcedure [dbo].[GetAssetNumberBySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 14/02/2013
-- Description:	Obtener numero de activo por id
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetNumberBySysId]
	-- Add the parameters for the stored procedure here
	@AssetSysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT assetItemNumber from assets where assetSysId = @AssetSysId
END



GO
/****** Object:  StoredProcedure [dbo].[getassets]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[getassets]
@Name varchar(150)
as
begin

	select a.assetSysId, A.Barcode as Placa,A.shortDescription as Descripcion,
	AC.name as Categoria,TR.tagID as EPC , te.NumeroTag,
	ISNULL (TA.Nombre,' ') as TipoAlerta, 'FALSE' as Printer
	from assets A
	LEFT join assetCategory AC on AC.assetCategorySysId = A.assetCategorySysId
	LEFT join tagRegistry TR on  TR.tagSysId = A.tagSysId
	LEFT join AlertasActivo AA on AA.IdActivo = A.assetSysId
	LEFT join TiposAlertas TA on TA.IdTipoAlerta = AA.IdTipoAlerta
	LEFT join tagepc TE on TR.tagID =  te.EPC
	where A.shortDescription like '%'+@Name+'%' or A.Barcode like '%'+@Name+'%' or assetItemNumber like '%'+@Name+'%' or brand like '%'+@Name+'%'

end
GO
/****** Object:  StoredProcedure [dbo].[getassetsByCategogy]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[getassetsByCategogy]
 @assetCategorySysId uniqueidentifier
as
begin

	select a.assetSysId, A.Barcode as Placa,A.shortDescription as Descripcion,
	AC.name as Categoria,TR.tagID as EPC , te.NumeroTag,
	ISNULL (TA.Nombre,' ') as TipoAlerta, 'FALSE' as Printer
	from assets A
	inner join assetCategory AC on AC.assetCategorySysId = A.assetCategorySysId
	LEFT join tagRegistry TR on  TR.tagSysId = A.tagSysId
	LEFT join AlertasActivo AA on AA.IdActivo = A.assetSysId
	LEFT join TiposAlertas TA on TA.IdTipoAlerta = AA.IdTipoAlerta
	LEFT join tagepc TE on TR.tagID =  te.EPC
	where AC.assetCategorySysId = @assetCategorySysId

end


GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByCategorySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 28-jun-2012
-- Description:	GetAssetsByCategorySysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetsByCategorySysId]
	-- Add the parameters for the stored procedure here
	 @assetCategorySysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT top 100 *
  FROM [assets]
	WHERE assetCategorySysId = @assetCategorySysId
	order by assetItemNumber,shortDescription;

END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAssetsByDescription]
@description varchar(400)
as
begin

select top 100 * from assets
where shortDescription like '%'+@description+'%' or
		longDescription like '%'+@description+'%' 
end



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByEmployeeSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 28-jun-2012
-- Description:	GetAssetsByEmployeeSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetsByEmployeeSysId]
	-- Add the parameters for the stored procedure here
	 @employeeSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT top 100 *
  FROM [assets]
	WHERE employeeRelated = @employeeSysId
	order by assetItemNumber,shortDescription;

END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByIdParent]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssetsByIdParent]
	
	@parentAssetSyId uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON;

    SELECT A.assetSysId, A.assetItemNumber, A.shortDescription, AC.name AS AssetCategory, AE.name AS AssetStatus, C.name AS Companies, B.name AS Buildings, F.name AS Floors, O.description AS Officeses
	FROM assets A
	LEFT JOIN assetCategory AC
	ON A.assetCategorySysId = AC.assetCategorySysId
	LEFT JOIN assetStatus AE
	ON A.assetStatusSysId = AE.assetStatusSysId
	LEFT JOIN companies C
	ON A.companySysId = C.companySysId
	LEFT JOIN buildings B
	ON A.buildingSysId = B.buildingSysId
	LEFT JOIN floors F
	ON A.floorSysId = F.floorSysId
	LEFT JOIN officeses O
	ON A.officeSysId = O.officeSysId
	WHERE parentAssetSyId = @parentAssetSyId

END
GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByOfficeSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 22-jun-2012
-- Description:	GetAssetsByOfficeSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetsByOfficeSysId]
	-- Add the parameters for the stored procedure here
	 @officeSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT top 100 *
  FROM [assets]
	WHERE officeSysId = @officeSysId
	order by assetItemNumber,shortDescription;

END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByStatusSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 28-jun-2012
-- Description:	GetAssetsByCategorySysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetsByStatusSysId]
	-- Add the parameters for the stored procedure here
	 @statusSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT top 100 *
  FROM [assets]
	WHERE assetCategorySysId = @statusSysId
	order by assetItemNumber,shortDescription;

END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByUserSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAssetsByUserSysId]
@usersysid uniqueidentifier
as
begin

  select a.* 
    from Assets a, 
         employees e
    where a.employeeRelated = e.employeeSysId
          and e.userSysId = @usersysid
end



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsByView]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAssetsByView]
@indexinicio bigint,
@indexfinal bigint
as 
begin
	select * 
	from View_MassiveAssets
	where AssetsIndex BETWEEN @indexinicio and @indexfinal
end
GO
/****** Object:  StoredProcedure [dbo].[GetAssetsForInventory]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 23-Jul-2012
-- Description:	GetAssetsForInventory
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetsForInventory]
	-- Add the parameters for the stored procedure here
	 @userSysId varchar(40)
	,@locations varchar(800)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 

declare @query varchar(2000)

set @query = 'SELECT top 100 *
  FROM [assets]
   WHERE convert(varchar(40),entryUser) = ' + @userSysId + 
  ' and  convert(varchar(40),officeSysId) in (' + @locations + ') 
  ORDER BY assetItemNumber ASC '

  exec  (@query)

END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsForRUUByCriteria]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetAssetsForRUUByCriteria] 
	@criteria varchar(200)
AS

	
	Select 
	 a.assetSysId
	,a.Barcode
	,a.shortDescription
	,a.longDescription
	,ast.name
	,ac.name AS Categoria
	,aco.name AS Compania
	,abu.name AS Departamento
	,afl.name AS Piso
	,aof.name AS Oficina
	,aem.name AS empleado
	,at.tagID
	FROM assets a
	inner join assetStatus ast ON a.assetStatusSysId = ast.assetStatusSysId
	inner join assetCategory ac ON a.assetCategorySysId = ac.assetCategorySysId
	inner join companies aco ON a.companySysId = aco.companySysId
	inner join buildings abu ON a.buildingSysId = abu.buildingSysId
	inner join floors afl ON a.floorSysId = afl.floorSysId
	inner join officeses aof ON a.officeSysId = aof.officeSysId
	inner join employees aem ON a.employeeRelated = aem.employeeSysId
	inner join tagRegistry at ON a.tagSysId = at.tagSysId
	Where longDescription like '%' + @criteria +'%' OR placa = @criteria
GO
/****** Object:  StoredProcedure [dbo].[GetAssetsId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[GetAssetsId]
@id uniqueidentifier
as
begin
select a.*,
c.valorvidaUtil as 'FechaObsolesencia',
c.vidaUtilProcomer as 'procomerLifeTime' 
from assets as a, 
assetCategory as c 
where assetSysId = @id
and a.assetCategorySysId = c.assetCategorySysId
end



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsId2]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[GetAssetsId2]
@id uniqueidentifier
as
begin
select 
	   a.[assetSysId]
      ,a.[assetItemNumber]

      ,a.[assetCategorySysId]

      ,a.[assetStatusSysId]

      ,a.[companySysId]

      ,a.[managementSysID]

      ,a.[departmentSysId]

      ,a.[businessUnitSysId]

      ,a.[buildingSysId]

      ,a.[floorSysId]

      ,a.[officeSysId]

      ,a.[employeeRelated]
      ,a.[tagSysId]
      ,a.[lastEmployeeRelated]

      ,a.[brand]
      ,a.[modelNo]
      ,a.[serialNo]
      ,a.[skuNo]
      ,a.[PartNo]
      ,a.[isDepreciated]
      ,a.[isObsolete]
      ,a.[color]
      ,a.[cost]
      ,a.[size]


      ,a.[shortDescription]
      ,a.[longDescription]
      ,a.[accessoriesIncluded]
      ,a.[accessoriesQuantity]

      ,a.[accessoryDescription1]
      ,a.[accessorySerial1]
      ,a.[accessoryModel1]
      ,a.[accessoryDescription2]
      ,a.[accessorySerial2]
      ,a.[accessoryModel2]
      ,a.[accessoryDescription3]
      ,a.[accessorySerial3]
      ,a.[accessoryModel3]
      ,a.[accessoryDescription4]
      ,a.[accessorySerial4]
      ,a.[accessoryModel4]

      ,a.[entryUser]
      ,a.[entryDate]
      ,a.[updateUser]
      ,a.[updateDate]
      ,a.[rowGuid]
      ,a.[BillNo]

      ,a.[DateAdquired]

      ,a.[ProviderSysId]
      ,a.[GarantyTerms]

      ,a.[expirationDate]

      ,a.[unidNumber]
      ,a.[NUMB_APR]
      ,a.[Alias]
      ,a.[Origen]
      ,a.[ObservacionesAdicionales]
      ,a.[assetSubcategory]
      ,a.[Barcode]
      ,a.[proveedor]
      ,a.[TipoRegistro]
      ,a.[Depreciado]
      ,a.[ValorResidual]
      ,a.[respaldodescrip]
      ,a.[Placa]
      ,a.[Adquisicion]

      ,a.[ShelfSysId]

      ,a.[costDollars]
      ,a.[paidTaxes]
      ,a.[duaNumber]
      ,a.[residualValueDollars]
      ,a.[ProcomerFixedAssetAccount]
      ,a.[TaxesFixedAssetAccount]
      ,a.[AccountingAccountDepreciation]
      ,a.[InternValueBooks]
      ,a.[ProcomerValueBooks]
      ,a.[CapitalizationDate]
      ,a.[FTZInvestment]
      ,a.[SAPNumber]
      ,a.[CostCenter]
      ,a.[AssetClass]
   

      ,a.[Logico_A]
      ,isnull(a.[Logico_B], 0) as Logico_B
	  , 
	       c.valorvidaUtil as 'FechaObsolesencia',
	       c.vidaUtilProcomer as 'procomerLifeTime'
from assets as a, 
assetCategory as c 
where assetSysId = @id
and a.assetCategorySysId = c.assetCategorySysId
end



GO
/****** Object:  StoredProcedure [dbo].[GetAssetStatusByStatusSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 26-jun-2012
-- Description:	GetAssetStatusByStatusSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetStatusByStatusSysId]
	-- Add the parameters for the stored procedure here
	 @assetStatusSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [name] 
  FROM [assetStatus]
  WHERE assetStatusSysId = @assetStatusSysId
END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetStatusesByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 26-jun-2012
-- Description:	GetAssetStatusesByDescription
-- =============================================
create PROCEDURE [dbo].[GetAssetStatusesByDescription]
	-- Add the parameters for the stored procedure here
	@description varchar(100)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT [assetStatusSysId]
			  ,[name]
			  ,[description]
			  ,[entryUser]
			  ,[entryDate]
			  ,[updateUser]
			  ,[updateDate]
			  ,[rowGuid]
		  FROM [assetStatus]
		WHERE [name] LIKE '%' + @description + '%'
		order by name asc

END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetStatusesByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetStatusesByName]
	-- Add the parameters for the stored procedure here
	@name varchar(100)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT [assetStatusSysId]
			  ,[name]
			  ,[description]
			  ,[entryUser]
			  ,[entryDate]
			  ,[updateUser]
			  ,[updateDate]
			  ,[rowGuid]
		  FROM [assetStatus]
		WHERE [name] LIKE '%' + @name + '%'
		order by name asc

END



GO
/****** Object:  StoredProcedure [dbo].[GetAssetsUpdateAPI]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE   [dbo].[GetAssetsUpdateAPI]
@FInicial Datetime,
@FFinal Datetime
AS
BEGIN


SELECT  a.assetItemNumber, a.companyIdExtern as SAPNumber, a.Barcode, 
	   la.companyIdExtern as IdLogicoA, la.Nombre NombreLogicoA,
	   isnull(lb.companyIdExtern,'') IdLogicoB, isnull(lb.Nombre,'') NombreLogicoB,
	   c.companyIdExtern IdUbicacionA, c.name NombreUbicacionA,
	   b.companyIdExtern IdUbicacionB, b.name NombreUbicacionB,
	   f.companyIdExtern IdUbicacionC, f.name NombreUbicacionC,
	   o.companyIdExtern IdUbicacionD, o.name NombreUbicacionD,
	   ca.companyIdExtern IdCategoria, ca.name NombreCategoria,
	   e.companyIdExtern IdFuncionario, e.name + ' ' + e.lastName NombreFuncionario,
	   ast.companyIdExtern IdEstado, ast.description NombreEstado,
	   a.serialNo, a.ObservacionesAdicionales As Observacion, a.size As JustificacionTecnica
	   FROM assets a
	   inner join LogicoA la on la.IdLogicoA = a.Logico_A
	   left join LogicoB lb on lb.IdLogicoB = a.Logico_B
	   inner join companies c on c.companySysId = a.companySysId
	   inner join buildings b on b.buildingSysId = a.buildingSysId
	   inner join floors f on f.floorSysId = a.floorSysId
	   inner join officeses o on o.officeSysId = a.officeSysId
	   inner join assetCategory ca on ca.assetCategorySysId = a.assetCategorySysId
	   inner join employees e on e.employeeSysId = A.employeeRelated
	   inner join assetStatus ast on ast.assetStatusSysId = a.assetStatusSysId
	   where  a.updateDate  >= @FInicial
		and a.updateDate <= @FFinal and a.entryDate != a.updateDate
	   
END


GO
/****** Object:  StoredProcedure [dbo].[GetBitacora]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetBitacora]
as
begin
	select * from BitacoraMigracion
end



GO
/****** Object:  StoredProcedure [dbo].[GetBuildingByBuildingSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetBuildingByBuildingSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetBuildingByBuildingSysId]
	-- Add the parameters for the stored procedure here			
	    @buildingSysId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [buildingSysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [buildings]
WHERE [buildingSysId] = @buildingSysId   
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetBuildingNameByBuildingSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetBuildingNameByBuildingSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetBuildingNameByBuildingSysId]
	-- Add the parameters for the stored procedure here			
	    @buildingSysId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [name]
  FROM [buildings]
WHERE [buildingSysId] = @buildingSysId
   
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetBuildingsByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetBuildingsByDescription
-- =============================================
CREATE PROCEDURE [dbo].[GetBuildingsByDescription]
	-- Add the parameters for the stored procedure here			
	    @description varchar(50) 		

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [buildingSysId]
	  ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [buildings]
WHERE [description] like '%' + @description + '%'    
   
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetBuildingsByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetBuildingsByName
-- =============================================
CREATE PROCEDURE [dbo].[GetBuildingsByName]
	-- Add the parameters for the stored procedure here			
	    @name varchar(50) 
		

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [buildings]
WHERE [Name] like '%' + @name + '%' 
   
   
	
END



GO
/****** Object:  StoredProcedure [dbo].[getBuildingSysIdByFloorSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[getBuildingSysIdByFloorSysId]
@_FloorSysId UNIQUEIDENTIFIER
AS
BEGIN
	SELECT buildingSysId IdEdificio
	FROM floors
	WHERE floorSysId = @_FloorSysId
END
GO
/****** Object:  StoredProcedure [dbo].[GetBusinessUnitByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	[GetBusinessUnitsByName]
-- =============================================
CREATE PROCEDURE [dbo].[GetBusinessUnitByName]
	-- Add the parameters for the stored procedure here			
	@criteria varchar(100)		   
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [businessUnitSysId]
      ,[name]
      ,[description]
      ,[departmentSysId]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [businessUnit]
  WHERE [name] = @criteria



   
  
END



GO
/****** Object:  StoredProcedure [dbo].[GetBusinessUnitNameByBusinessUnitSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBusinessUnitNameByBusinessUnitSysId]
	-- Add the parameters for the stored procedure here			
	@businessUnitSysId uniqueidentifier
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [name] + ' - ' + description      
  FROM [businessUnit]
  WHERE [businessUnitSysId] = @businessUnitSysId
  ORDER BY NAME ASC
  
END



GO
/****** Object:  StoredProcedure [dbo].[GetBusinessUnitsByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetBusinessUnitsByDescription
-- =============================================
CREATE PROCEDURE [dbo].[GetBusinessUnitsByDescription]
	-- Add the parameters for the stored procedure here			
	@criteria varchar(100)		   
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [businessUnitSysId]
      ,[name]
      ,[description]
      ,[departmentSysId]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [businessUnit]
  WHERE [description] like  '%' + @criteria + '%'
  ORDER BY NAME ASC



   
  
END



GO
/****** Object:  StoredProcedure [dbo].[GetBusinessUnitsByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	[GetBusinessUnitsByName]
-- =============================================
CREATE PROCEDURE [dbo].[GetBusinessUnitsByName]
	-- Add the parameters for the stored procedure here			
	@criteria varchar(100)		   
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [businessUnitSysId]
      ,[name]
      ,[description]
      ,[departmentSysId]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [businessUnit]
  WHERE [name] LIKE  '%'+@criteria+'%'



   
  
END



GO
/****** Object:  StoredProcedure [dbo].[GetBusinessUnitSysIdByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 03-Agosto-2012
-- Description:	GetBusinessUnitSysIdByName
-- =============================================
CREATE PROCEDURE [dbo].[GetBusinessUnitSysIdByName]
	-- Add the parameters for the stored procedure here
	 @name varchar(50)	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [businessUnitSysId]
		  ,[name]
		  ,[description]
		  ,[departmentSysId]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
	  FROM [businessUnit]
 WHERE name = @name
 
END



GO
/****** Object:  StoredProcedure [dbo].[GetCompaniesByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetCompaniesByDescription
-- =============================================
Create PROCEDURE [dbo].[GetCompaniesByDescription]
	-- Add the parameters for the stored procedure here			
		    @description varchar(50)
          
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [companies]
WHERE [description] like   '%' + @description + '%'


END



GO
/****** Object:  StoredProcedure [dbo].[GetCompaniesByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetCompaniesByName
-- =============================================
CREATE PROCEDURE [dbo].[GetCompaniesByName]
	-- Add the parameters for the stored procedure here			
		    @name varchar(50)
          
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [companies]
WHERE [name] like  '%' + @name + '%'







END



GO
/****** Object:  StoredProcedure [dbo].[GetCompanyNameByCompanySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetCompanyNameByCompanySysId
-- =============================================
CREATE PROCEDURE [dbo].[GetCompanyNameByCompanySysId]
	-- Add the parameters for the stored procedure here			
		    @companySysId uniqueidentifier          
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [name]     
	FROM [companies]
	WHERE companySysId = @companySysId


END



GO
/****** Object:  StoredProcedure [dbo].[GetCompanyNameByDepartmentSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Oswaldo Dávila
-- Create date: 25 september 2017
-- Description:	GetCompanyNameByDepartmentSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetCompanyNameByDepartmentSysId]
	-- Add the parameters for the stored procedure here			
		    @departmentSysId uniqueidentifier          
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT C.name + ' - ' + C.description
	FROM companies C
	inner join departments D on D.companySysId = C.companySysId
	WHERE D.deptSysId = @departmentSysId


END



GO
/****** Object:  StoredProcedure [dbo].[getCompanySysIdByBuildingSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getCompanySysIdByBuildingSysId]
@_BuildingSysId UNIQUEIDENTIFIER
AS
BEGIN
	SELECT companySysId IdCompania
	FROM buildings
	WHERE buildingSysId = @_BuildingSysId
END
GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentByCompanySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Updated by: Oswaldo Dávila
-- Update date: 25 september 2017
-- Description: get all the departments assigned to a company
-- =============================================
CREATE procedure [dbo].[GetDepartmentByCompanySysId]
@CompanySysId uniqueidentifier
as
begin
		select deptSysId,
			   companySysId,
			   managementSysId,
			   name,
			   description,
			   supervisor,
			   entryUser,
			   entryDate, 
			   updateUser,
			   updateDate,
			   rowGuid,
			   idDepartamento
		from departments 
		where companySysId = @CompanySysId
end



GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentByManagementSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetDepartmentByManagementSysId]
@ManagementSysId uniqueidentifier
as
begin
select * from departments where managementSysId=@ManagementSysId
end



GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentNameByDeptoSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetDepartmentsByBusinessUnitSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetDepartmentNameByDeptoSysId]
	-- Add the parameters for the stored procedure here
	        @departmentSysId uniqueidentifier
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT 
      
      [name] + ' - ' + description
      
  FROM [departments]
  WHERE [deptSysId] = @departmentSysId
   

   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentsByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetDepartmentsByDescription
-- =============================================
CREATE PROCEDURE [dbo].[GetDepartmentsByDescription]
	-- Add the parameters for the stored procedure here
	        @criteria varchar(50)
          
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT *
  FROM [departments]
  WHERE [description] LIKE '%'+ @criteria + '%'
  ORDER BY [description] ASC
   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetDepartmentsByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Updated by: Oswaldo Dávila
-- Update date: 25 september 2017
-- Description: managementSysId removed from procedure
-- =============================================
CREATE PROCEDURE [dbo].[GetDepartmentsByName]
--[GetDepartmentsByName] '%'
	-- Add the parameters for the stored procedure here
	        @criteria varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     
	d.deptSysId
	, c.companySysId
	--, m.managementSysId
	, d.name
	, d.description
	, d.supervisor
	, d.entryUser
	, d.entryDate
	, d.updateUser
	, d.updateDate
	, d.rowGuid
	FROM departments d 
	--inner join Management m on d.managementSysId = m.managementSysId
	--inner join companies c on m.companySysId = c.companySysId
	inner join companies c on c.companySysId = d.companySysId
  WHERE d.[name] LIKE '%'+ @criteria + '%'
  ORDER BY d.[name] ASC
   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeByDepartmentSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 03-Agosto-2012
-- Description:	GetEmployeeByDepartmentSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeeByDepartmentSysId]
	-- Add the parameters for the stored procedure here
	 @DepartmentSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [employeeSysId]
      ,[companySysId]
      ,[managementSysId]
      ,[deptSysId]
      ,[employeeNo]
      ,[name]
      ,[lastName]
      ,[tagSysId]
      ,[id]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[hireDate]
      ,[endOfLaboralRelationshipDate]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [employees]
	WHERE [deptSysId] = @DepartmentSysId
	
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeBySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 03-Agosto-2012
-- Description:	GetEmployeeBySysId
-- =============================================
CREAtE PROCEDURE [dbo].[GetEmployeeBySysId]
	-- Add the parameters for the stored procedure here
	 @employeeSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
    if (@employeeSysId = '00000000-0000-0000-0000-000000000000' )
    SELECT 'No Asignado Aun'
    else
     
	SELECT [name] + ' ' + [lastName]
	  FROM [employees]
		WHERE [employeeSysId] = @employeeSysId

		 
END



GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesByLastname]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	GetEmployeesByLastname
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeesByLastname]
	-- Add the parameters for the stored procedure here
	 @lastName varchar(100) 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [employeeSysId]
      ,[companySysId]
      ,[managementSysId]
      ,[deptSysId]
      ,[employeeNo]
      ,[name]
      ,[lastName]
      ,[tagSysId]
      ,[id]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[hireDate]
      ,[endOfLaboralRelationshipDate]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [employees]
  WHERE [lastName] like '%' + @lastName + '%'

END



GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	GetEmployeesByLastname
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeesByName]--'maria'
	-- Add the parameters for the stored procedure here
	 @name varchar(100) 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [employeeSysId]
      ,[companySysId]
      ,[managementSysId]
      ,[deptSysId]
      ,[employeeNo]
      ,[name]
      ,[lastName]
      ,[tagSysId]
      ,[id]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[hireDate]
      ,[endOfLaboralRelationshipDate]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [employees]
	WHERE [name] like '%' + @name + '%'

END



GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeSysIdByFullName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 3-agosto-2012
-- Description:	GetEmployeeSysIdByFullName
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployeeSysIdByFullName]
	-- Add the parameters for the stored procedure here
	 @fullName varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
		SELECT [employeeSysId]
		  ,[companySysId]
		  ,[managementSysId]
		  ,[deptSysId]
		  ,[employeeNo]
		  ,[name]
		  ,[lastName]
		  ,[tagSysId]
		  ,[id]
		  ,[phone1]
		  ,[cell]
		  ,[email]
		  ,[active]
		  ,[hireDate]
		  ,[endOfLaboralRelationshipDate]
		  ,[entryUser]
		  ,[entryDate]
		  ,[updateUser]
		  ,[updateDate]
		  ,[rowGuid]
	  FROM [employees]
	WHERE ([name] + ' ' + [lastName]) = @fullName
		  

	
END



GO
/****** Object:  StoredProcedure [dbo].[GetEPCByTagSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 22-jun-2012
-- Description:	GetEPCByTagSysId
-- =================-===========-=================
CREATE PROCEDURE [dbo].[GetEPCByTagSysId]
	-- Add the parameters for the stored procedure here
	@tagSysId uniqueidentifier
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select tagID from tagRegistry
	where tagSysId = @tagSysId	
	
END



GO
/****** Object:  StoredProcedure [dbo].[GetFloorByPhysicLocation]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 15 jun 2012
-- Description:	GetFloorByPhysicLocation
-- =============================================
CREATE PROCEDURE [dbo].[GetFloorByPhysicLocation]
	-- Add the parameters for the stored procedure here
	  @companySysId uniqueidentifier
	 ,@buildingSysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [floorSysId]
      ,[buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [floors]
	WHERE companySysId = @companySysId and 
	buildingSysId = @buildingSysId
				
END

GO
/****** Object:  StoredProcedure [dbo].[GetFloorNameByFloorSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetFloorsByDescription
-- =============================================
CREATE PROCEDURE [dbo].[GetFloorNameByFloorSysId]
	-- Add the parameters for the stored procedure here
		 	@floorSysId uniqueidentifier
		 	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [name]
      ,[buildingSysId]
      ,[companySysId]
      ,[floorSysId]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [floors]
  WHERE floorSysId = @floorSysId 
  order by [name] asc
   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetFloorsByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetFloorsByDescription
-- =============================================
CREATE PROCEDURE [dbo].[GetFloorsByDescription]
	-- Add the parameters for the stored procedure here
		 	@description varchar(50)
		 	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [floorSysId]
      ,[buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [floors]
  WHERE [description] like '%' + @description + '%'
  order by [name] asc
   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetFloorsByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetFloorsByName
-- =============================================
CREATE PROCEDURE [dbo].[GetFloorsByName]
	-- Add the parameters for the stored procedure here
		 	@name varchar(50)
		 	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [floorSysId]
      ,[buildingSysId]
      ,[companySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [floors]
  WHERE [name] like '%' + @name + '%'
  order by [name] asc
   		
END



GO
/****** Object:  StoredProcedure [dbo].[GetFloorSysIdByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	GetFloorSysIdByName
-- =============================================
CREATE PROCEDURE [dbo].[GetFloorSysIdByName]
	-- Add the parameters for the stored procedure here
    @name uniqueidentifier
		 	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT [floorSysId]     
	FROM [floors]
  WHERE [name] = @name
   		
END



GO
/****** Object:  StoredProcedure [dbo].[getFloorSysIdByOfficeSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[getFloorSysIdByOfficeSysId]
@_OfficeSysId UNIQUEIDENTIFIER
AS
BEGIN
	SELECT floorSysId IdPiso
	FROM officeses
	WHERE officeSysId = @_OfficeSysId
END
GO
/****** Object:  StoredProcedure [dbo].[GetImagesByAsset]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 12/02/2013
-- Description:	Devolver imágenes de cada activo
-- =============================================
CREATE PROCEDURE [dbo].[GetImagesByAsset]
	-- Add the parameters for the stored procedure here
	@AssetSysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT imageSysId
	      ,assetSysId
	      ,name
	      ,destino
	      ,extension
	      ,consecutivo
	FROM assetsImages where assetSysId = @AssetSysId order BY consecutivo ASC
END



GO
/****** Object:  StoredProcedure [dbo].[GetImageSysIdByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 14/02/2013
-- Description:	obtener id de la imagen por nombre de la imagen
-- =============================================
CREATE PROCEDURE [dbo].[GetImageSysIdByName] 
	@Name varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT imageSysId from assetsImages where name = @Name
END



GO
/****** Object:  StoredProcedure [dbo].[GetInventoriesForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetInventoriesForHH]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  IdToma, 
            TakeName, 
            TakeDescription, 
            TakeDate, 
            TakeStatus
    FROM [dbo].[TomaFisica]
    WHERE TakeStatus = 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetInventoryTake]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetInventoryTake] 
	-- Add the parameters for the stored procedure here
	@TakeId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  IdToma, 
            TakeName, 
            TakeDescription, 
            TakeDate, 
            TakeStatus
    FROM [dbo].[TomaFisica]
    WHERE IdToma = @TakeId
END
GO
/****** Object:  StoredProcedure [dbo].[GetLisEmpleados]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetLisEmpleados]
@criterio varchar(50)
as
begin
  select v.* 
    from vt_empleados as v 
    where (v.Nombre    like '%'+@criterio+'%'
           or v.Cédula like '%'+@criterio+'%' 
           or v.Numero like '%'+@criterio+'%'
          )
end
GO
/****** Object:  StoredProcedure [dbo].[GetLisEmpleados02]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetLisEmpleados02]
	 
AS
BEGIN

	SELECT [employeeSysId]
      ,[companySysId]
      ,[managementSysId]
      ,[deptSysId]
      ,[employeeNo]
      ,[name]
      ,[lastName]
      ,[tagSysId]
      ,[id]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[hireDate]
      ,[endOfLaboralRelationshipDate]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
    FROM [employees]

END




GO
/****** Object:  StoredProcedure [dbo].[getlistuser]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getlistuser]
as begin
select *  from vt_usuarios_disponibles
end



GO
/****** Object:  StoredProcedure [dbo].[GetLogicoA]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLogicoA]

AS
BEGIN
	SET NOCOUNT ON;

    SELECT  LA.IdLogicoA, LA.Nombre, LA.Descripcion, LA.userSysId, U.username
	FROM LogicoA LA
	left join users U
	ON LA.userSysId = U.userSysId 
	ORDER BY LA.Nombre ASC
END



GO
/****** Object:  StoredProcedure [dbo].[GetLogicoAByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLogicoAByDescription]
	
	@description varchar(100)
AS
BEGIN
	SET NOCOUNT ON;

    SELECT IdLogicoA, Nombre, Descripcion
	FROM LogicoA
	WHERE Descripcion like '%' + @description + '%'

END
GO
/****** Object:  StoredProcedure [dbo].[GetLogicoAByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLogicoAByName]
	@name varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT IdLogicoA, Nombre, Descripcion
	FROM LogicoA
	WHERE Nombre like '%' + @name + '%'

END
GO
/****** Object:  StoredProcedure [dbo].[GetLogicoB]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLogicoB]

	@IdLogicoA int
AS
BEGIN
	SET NOCOUNT ON;

	SELECT LB.IdLogicoB, LB.IdLogicoA, LA.Nombre AS NombreLA, LB.Nombre AS Nombre,
	lb.Descripcion, u.userSysId,u.username
	FROM LogicoB LB
	inner join LogicoA LA ON LA.IdLogicoA = LB.IdLogicoA
	left join users U
	ON LB.userSysId = U.userSysId
	WHERE LB.IdLogicoA = @IdLogicoA
	ORDER BY LB.Nombre ASC

END

GO
/****** Object:  StoredProcedure [dbo].[GetManagemenSysIdByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 25-Ene-2013
-- Description:	Seleccionar el ID gerencia por nombre 
-- =============================================
CREATE PROCEDURE [dbo].[GetManagemenSysIdByName] 
	-- Add the parameters for the stored procedure here
	@name varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT managementSysId
	FROM Management
	where name + ' - ' + description = @name	
END



GO
/****** Object:  StoredProcedure [dbo].[GetManagementByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 25-Ene-2013
-- Description:	Seleccionar la gerencia por descripcion
-- =============================================
CREATE PROCEDURE [dbo].[GetManagementByDescription] 
	-- Add the parameters for the stored procedure here
	@criteria varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT managementSysId
	       ,name
	       ,description
	       ,companySysId
	       ,rowGuid
	FROM Management
	where description like '%' + @criteria + '%'
	order by name ASC	
END



GO
/****** Object:  StoredProcedure [dbo].[GetManagementByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 25-Ene-2013
-- Description:	Seleccionar la gerencia por nombre
-- =============================================
CREATE PROCEDURE [dbo].[GetManagementByName] 
	-- Add the parameters for the stored procedure here
	@criteria varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT managementSysId
	       ,name
	       ,description
	       ,companySysId
	       ,rowGuid
	FROM Management
	where name=@criteria	
END



GO
/****** Object:  StoredProcedure [dbo].[GetManagementBySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz	
-- Create date: 31-01-13
-- Description:	Obtener gerencia por su ID
-- =============================================
CREATE PROCEDURE [dbo].[GetManagementBySysId] 
	-- Add the parameters for the stored procedure here
	@sysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT managementSysId
	      ,name
	      ,description
	      ,rowGuid
	      ,companySysId
	FROM Management 
	WHERE managementSysId = @sysId
END



GO
/****** Object:  StoredProcedure [dbo].[GetManagementDisplayNamebySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetManagementDisplayNamebySysId]
@sysid uniqueidentifier
as
begin
	select name+' - '+description from Management where managementSysId=@sysid
end



GO
/****** Object:  StoredProcedure [dbo].[GetManagementNamebySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetManagementNamebySysId]
@sysid uniqueidentifier
as
begin
	select name from Management where managementSysId=@sysid
end



GO
/****** Object:  StoredProcedure [dbo].[GetManagementsByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 25-Ene-2013
-- Description:	Seleccionar la gerencia por nombre deduccion
-- =============================================
CREATE PROCEDURE [dbo].[GetManagementsByName] 
	-- Add the parameters for the stored procedure here
	@criteria varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT managementSysId
	       ,name
	       ,description
	       ,companySysId
	       ,rowGuid
	FROM Management
	where name like '%' + @criteria + '%'	
END



GO
/****** Object:  StoredProcedure [dbo].[GetNextAssetNumber]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 20 Junio - 2012
-- Description:	GetNextAssetNumber
-- =============================================
CREATE PROCEDURE [dbo].[GetNextAssetNumber]
-- Add the parameters for the stored procedure here	 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT isnull(max(Convert(int, assetItemNumber)),0) +1      
	FROM [assets]
	
	


	
END



GO
/****** Object:  StoredProcedure [dbo].[GetNextEmployeeNumber]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 22 Junio - 2012
-- Description:	[GetNextEmployeeNumber]
-- =============================================
CREATE PROCEDURE [dbo].[GetNextEmployeeNumber]
-- Add the parameters for the stored procedure here	 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT isnull(max(Convert(int, employeeNo)),0) +1      
	FROM [employees]
	
	


	
END



GO
/****** Object:  StoredProcedure [dbo].[GetNextInventoryNumber]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 17-jul-2012 
-- Description:	[GetNextInventoryNumber]
-- =============================================
CREATE PROCEDURE [dbo].[GetNextInventoryNumber]
	-- Add the parameters for the stored procedure here
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT isnull(max(number),0)+1 FROM [inventory] 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetOfficeByFloorSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOfficeByFloorSysId]
	-- Add the parameters for the stored procedure here
	@floorSysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select	o.officeSysId, c.companySysId, b.buildingSysId, bu.businessUnitSysId, f.floorSysId, d.deptSysId, o.tagSysId, o.name, o.description,
		o.entryuser, o.entrydate, o.updateuser, o.updatedate, o.rowGuid, m.managementSysId, o.IsEnable
from	officeses o, floors f, buildings b, businessUnit bu, departments d, Management m, companies c
where	o.floorSysId= f.floorSysId and 
		f.buildingSysId = b.buildingSysId and
		o.businessUnitSysId = bu.businessUnitSysId and 
		bu.departmentSysId = d.deptSysId and
		d.managementSysId = m.managementSysId and
		m.companySysId = c.companySysId 
        and
		f.floorSysId = @floorSysId
Order by o.name asc
    -- Insert statements for procedure here

END



GO
/****** Object:  StoredProcedure [dbo].[GetOfficeByLogicalData]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 18-jun-2012
-- Description:	GetOfficeByLogicalData
-- =============================================
CREATE PROCEDURE [dbo].[GetOfficeByLogicalData]
	-- Add the parameters for the stored procedure here
	  @companySysId uniqueidentifier
	 ,@businessUnitSysId uniqueidentifier
	 ,@departmentSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [officeSysId]
      ,[companySysId]
      ,[buildingSysId]
      ,[businessUnitSysId]
      ,[floorSysId]
      ,[deptSysId]
      ,[tagSysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid],
	  newID() as [managementSysId]
  FROM [officeses]
	WHERE
	[deptSysId] = @departmentSysId
	order by name asc

END



GO
/****** Object:  StoredProcedure [dbo].[GetOfficeByPhisicalData]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 18-jun-2012
-- Description:	GetOfficeByPhisicalData
-- =============================================
CREATE PROCEDURE [dbo].[GetOfficeByPhisicalData]
	-- Add the parameters for the stored procedure here
	  @companySysId uniqueidentifier
	 ,@buildingSysId uniqueidentifier
	 ,@floorSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [officeSysId]
      ,[companySysId]
      ,[buildingSysId]
      ,[businessUnitSysId]
      ,[floorSysId]
      ,[deptSysId]
      ,[tagSysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [officeses]
	WHERE [companySysId] = @companySysId and
	[buildingSysId] = @buildingSysId and
	[floorSysId] = @floorSysId
	order by name asc

END



GO
/****** Object:  StoredProcedure [dbo].[GetOfficeNameByOfficeSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 19-jul-2012
-- Description:	GetOfficeNameByOfficeSysId
-- =============================================
CREATE PROCEDURE [dbo].[GetOfficeNameByOfficeSysId]
	-- Add the parameters for the stored procedure here
	 @officeSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [name]
  FROM [officeses]
  Where officeSysId = @officeSysId
  
END



GO
/****** Object:  StoredProcedure [dbo].[GetProvidersByContact]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	 
-- =============================================
CREATE PROCEDURE  [dbo].[GetProvidersByContact]
	-- Add the parameters for the stored procedure here
	 @searchCriteria varchar(100)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [providerSysId]
      ,[providerName]
      ,[contactName]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [providers]
  where [contactName]  like '%' + @searchCriteria + '%'

END



GO
/****** Object:  StoredProcedure [dbo].[GetProvidersByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	 
-- =============================================
CREATE PROCEDURE  [dbo].[GetProvidersByName]
	-- Add the parameters for the stored procedure here
	 @searchCriteria varchar(100)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [providerSysId]
      ,[providerName]
      ,[contactName]
      ,[phone1]
      ,[cell]
      ,[email]
      ,[active]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [providers]
  where [contactName]  like '%' + @searchCriteria + '%'

END



GO
/****** Object:  StoredProcedure [dbo].[GetReaderByIP]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 27-jul-2012
-- Description:	GetReaderByIP
-- =============================================
CREATE PROCEDURE [dbo].[GetReaderByIP]
	-- Add the parameters for the stored procedure here
	 @ip varchar(50) 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [readerSysId]
      ,[brand]
      ,[ip]
      ,[port]
      ,[serial]
      ,[model]
      ,[macAddress]
      ,[username]
      ,[password]
      ,[AreaSysId]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [readers]
	Where ip like @ip + '%'


END



GO
/****** Object:  StoredProcedure [dbo].[GetReaderBySysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 27-jul-2012
-- Description:	GetReaderBySysId
-- =============================================
CREATE PROCEDURE [dbo].[GetReaderBySysId]
	-- Add the parameters for the stored procedure here
	 @readerSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [readerSysId]
      ,[brand]
      ,[ip]
      ,[port]
      ,[serial]
      ,[model]
      ,[macAddress]
      ,[username]
      ,[password]
      ,[AreaSysId]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [readers]
		where readerSysId = @readerSysId;


	 
	 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetRolUserHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRolUserHH]
	-- Add the parameters for the stored procedure here
	  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select p.page
		,p.description
		, u.username
	from users u
	inner join [dbo].[permissions] p on p.userSysId = u.Idrol
	where p.allowed = 1
	and p.page = 'HH'
	order by len(SUBSTRING(p.description, 1, 2)), SUBSTRING(p.description, 1, 2) asc 
 
END
GO
/****** Object:  StoredProcedure [dbo].[GetShelfByLogicalData]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Joselyn Monge
-- Create date: 03-jul-2017
-- Description:	GetShelfByLogicalData
-- =============================================
CREATE PROCEDURE [dbo].[GetShelfByLogicalData]
	-- Add the parameters for the stored procedure here
	  @companySysId uniqueidentifier
	 ,@businessUnitSysId uniqueidentifier
	 ,@departmentSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [ShelfSysId]
	  ,[officeSysId]
      ,[companySysId]
      ,[buildingSysId]
      ,[businessUnitSysId]
      ,[floorSysId]
      ,[deptSysId]
      ,[tagSysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid],
	  newID() as [managementSysId]
  FROM [shelf]
	WHERE
	[deptSysId] = @departmentSysId
	order by name asc

END





GO
/****** Object:  StoredProcedure [dbo].[GetShelfByOfficeSysId]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Joselyn Monge5
-- Create date: 04-jul-2017
-- Description:	[GetShelfByOfficeSysId]
-- =============================================
CREATE PROCEDURE [dbo].[GetShelfByOfficeSysId]
	-- Add the parameters for the stored procedure here
	  @officeSysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [ShelfSysId]
	  ,[officeSysId]
      ,[companySysId]
      ,[buildingSysId]
      ,[businessUnitSysId]
      ,[floorSysId]
      ,[deptSysId]
      ,[tagSysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid],
	  newID() as [managementSysId]
	  ,isEnable
  FROM [shelf]
	WHERE
	[officeSysId] = @officeSysId
	order by name asc

END






GO
/****** Object:  StoredProcedure [dbo].[GetShelfByPhisicalData]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Joselyn Monge
-- Create date: 03-jul-2017
-- Description:	GetShelfByPhisicalData
-- =============================================
CREATE PROCEDURE [dbo].[GetShelfByPhisicalData]
	-- Add the parameters for the stored procedure here
	  @companySysId uniqueidentifier
	 ,@buildingSysId uniqueidentifier
	 ,@floorSysId uniqueidentifier
	 ,@officeSysId uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [ShelfSysId]
	  ,[officeSysId]
      ,[companySysId]
      ,[buildingSysId]
      ,[businessUnitSysId]
      ,[floorSysId]
      ,[deptSysId]
      ,[tagSysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [shelf]
	WHERE [companySysId] = @companySysId and
	[buildingSysId] = @buildingSysId and
	[floorSysId] = @floorSysId and
	[officeSysId] = @officeSysId
	order by name asc

END





GO
/****** Object:  StoredProcedure [dbo].[GetSpecificTags]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 18-jun-2012
-- Description:	GetSpecificTags
-- =============================================
CREATE PROCEDURE [dbo].[GetSpecificTags]
	-- Add the parameters for the stored procedure here
	 @tagTypeSysId uniqueidentifier
	,@isAssigned bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [tagSysId]
      ,[tagID]
      ,[tagTypeSysId]
      ,[isAssigned]
      ,[discontinued]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [tagRegistry]
  WHERE tagTypeSysId = @tagTypeSysId and 
	isAssigned = @isAssigned	 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetTagInfoByEPC]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 27-jul-2012
-- Description:	GetTagByEPC
-- =============================================
CREATE PROCEDURE [dbo].[GetTagInfoByEPC]
	-- Add the parameters for the stored procedure here
	 @EPC varchar(100)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 
	 SELECT t.[tagSysId]
		   ,t.[tagID]
		   ,t.[tagTypeSysId]
		   ,t.[isAssigned]
		   ,t.[discontinued]
		   ,t.[entryUser]
		   ,t.[entryDate]
		   ,t.[updateUser]
		   ,t.[updateDate]
		   ,t.[rowGuid]	
    FROM [tagRegistry] t, 
         [tagTypes] tt
	WHERE t.[tagTypeSysId] = tt.[tagTypeSysId] AND t.[tagID]= @EPC
	 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetTagTypesByDescription]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 19-jun-2012
-- Description:	GetTagTypesByName
-- =============================================
CREATE PROCEDURE [dbo].[GetTagTypesByDescription]
	-- Add the parameters for the stored procedure here
	 @description varchar(100) 
	  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [tagTypeSysId]
      ,[code]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
  FROM [tagTypes]
	where [description] like '%'+ @description + '%'
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetTagTypesByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 19-jun-2012
-- Description:	GetTagTypesByName
-- =============================================
CREATE PROCEDURE [dbo].[GetTagTypesByName]
	-- Add the parameters for the stored procedure here
	 @name varchar(100) 
	  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [tagTypeSysId]
      ,[code]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
      ,'Sin Asignar' as category
  FROM [tagTypes]
	where [name] like '%'+ @name + '%'
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetTagTypeSysIdByName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	GetTagTypeSysIdByName
-- =============================================
CREATE PROCEDURE [dbo].[GetTagTypeSysIdByName]
	-- Add the parameters for the stored procedure here
	 @tagTypeName varchar(100)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here tagTypeSysId
	SELECT     tagTypeSysId AS tagTypeSysId, code, name, description, entryUser, entryDate, updateUser, updateDate, rowGuid
FROM         tagTypes
WHERE     (LOWER(name) = @tagTypeName)
  
END



GO
/****** Object:  StoredProcedure [dbo].[GetTempAssetById]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetTempAssetById] 

@idTempAsset varchar(256)

as
Begin
select tempassetsv.* from

	((Select 	
	tp.tempAssetsSysId,
			tp.EPC,
			tr.tagSysId,
			tp.officeSysId,
			tp.descCorta,
			tp.serie,
			tp.modelo,
			tp.assetStatusSysId,
			tp.employeeRelated,
			tp.Metodo,
			tp.marca,
			o.name oficina
			from tempAssets tp
			inner join tagRegistry tr on
			tr.tagID = tp.EPC		
			inner join officeses o on
			tp.officeSysId = o.officeSysId
	)		
			union 
			(
			select 
			tp.tempAssetsSysId,
			tp.EPC,
			'00000000-0000-0000-0000-000000000000' as tagSysId,
			tp.officeSysId,
			tp.descCorta,
			tp.serie,
			tp.modelo,
			tp.assetStatusSysId,
			tp.employeeRelated,
			tp.Metodo,
			tp.marca,
			o.name Oficina		
			from tempAssets tp
			
inner join officeses o on
			tp.officeSysId = o.officeSysId
			where Metodo not like 'RFID'
			) 
) tempassetsv
where tempassetsv.tempAssetsSysId = @idTempAsset
End



GO
/****** Object:  StoredProcedure [dbo].[GetTipoAlertas]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTipoAlertas]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM TiposAlertas
END
GO
/****** Object:  StoredProcedure [dbo].[GetTiposInventario]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Joselyn Monge>
-- Create date: <04-Oct-2016>
-- Description:	<Obtiene lista de Tipos de inventario>
-- =============================================

CREATE PROCEDURE [dbo].[GetTiposInventario] 
	-- Add the parameters for the stored procedure here
	@Active bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ID]
		  ,[Nombre]
		  ,[Descripcion]
		 
	  FROM [TiposInventario]

END
--GO

GO
/****** Object:  StoredProcedure [dbo].[GetTodoLogicoB]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTodoLogicoB]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT LB.IdLogicoB, LB.IdLogicoA, LA.Nombre as NombreLA, LB.Nombre , LB.Descripcion, LB.userSysId, U.username
	FROM LogicoB LB
	left join users U
	ON LB.userSysId = U.userSysId
	inner join LogicoA LA
	on LB.IdLogicoA = LA.IdLogicoA

END
GO
/****** Object:  StoredProcedure [dbo].[GetTodosAssetsCategorys]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTodosAssetsCategorys]
AS
BEGIN
	SET NOCOUNT ON;

    SELECT [assetCategorySysId]
      ,[name]
      ,[description]
      ,[entryUser]
      ,[entryDate]
      ,[updateUser]
      ,[updateDate]
      ,[rowGuid]
	  ,depSysId
	  ,[valorvidaUtil]
  FROM [assetCategory]

END
GO
/****** Object:  StoredProcedure [dbo].[GetTomaFisicaDetalleForHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTomaFisicaDetalleForHH]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  IdTakeDetail, 
            FK_TomaFisica, 
            EPC, 
            DateRead
    FROM [dbo].[TomaFisicaDetalle] TFD
    INNER JOIN (SELECT IdToma, TakeStatus FROM TomaFisica) TF ON TF.IdToma = TFD.FK_TomaFisica
    WHERE TF.TakeStatus = 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserByUsername]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	GetUserByUsername
-- =============================================
CREATE PROCEDURE [dbo].[GetUserByUsername]
	-- Add the parameters for the stored procedure here			
            @username varchar(255) 
           ,@applicationName varchar(255) 
    
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT top 1 a.[userSysId]
      ,a.[username]
      ,a.[applicationName]
      ,a.[email]
      ,a.[comment]
      ,a.[password]
      ,a.[passwordQuestion]
      ,a.[passwordAnswer]
      ,a.[isApproved]
      ,a.[lastActivityDate]
      ,a.[lastLoginDate]
      ,a.[lastPasswordChangedDate]
      ,a.[creationDate]
      ,a.[isOnLine]
      ,a.[isLockedOut]
      ,a.[lastLockedOutDate]
      ,a.[failedPasswordAttemptCount]
      ,a.[failedPasswordAttemptWindowStart]
      ,a.[failedPasswordAnswerAttemptCount]
      ,a.[failedPasswordAnswerAttemptWindowStart]
      ,a.Idrol
  FROM [users] a
WHERE  a.[username] = @username
      
	 
END



GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsers]
AS
BEGIN
	SET NOCOUNT ON;

    SELECT userSysId, username 
	FROM users 

END
GO
/****** Object:  StoredProcedure [dbo].[GetUsersByUsername]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsersByUsername]
	-- Add the parameters for the stored procedure here			
   @username varchar(128)
  ,@applicationName varchar(100)           
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- Insert statements for procedure here
	if 	@username ='admin'
	begin
	
	  SELECT  a.[userSysId]
        ,a.[username]
        ,a.[applicationName]
        ,a.[email]
        ,a.[comment]
        ,a.[password]
        ,a.[passwordQuestion]
        ,a.[passwordAnswer]
        ,a.[isApproved]
        ,a.[lastActivityDate]
        ,a.[lastLoginDate]
        ,a.[lastPasswordChangedDate]
        ,a.[creationDate]
        ,a.[isOnLine]
        ,a.[isLockedOut]
        ,a.[lastLockedOutDate]
        ,a.[failedPasswordAttemptCount]
        ,a.[failedPasswordAttemptWindowStart]
        ,a.[failedPasswordAnswerAttemptCount]
        ,a.[failedPasswordAnswerAttemptWindowStart]
        ,a.Idrol
        ,null deptSysId
    FROM [users] a
    WHERE a.[username] LIKE '%' + @username + '%' 
		  and a.applicationName = @applicationName
	
	end
	 else
	  SELECT  a.[userSysId]
       ,a.[username]
       ,a.[applicationName]
       ,a.[email]
       ,a.[comment]
       ,a.[password]
       ,a.[passwordQuestion]
       ,a.[passwordAnswer]
       ,a.[isApproved]
       ,a.[lastActivityDate]
       ,a.[lastLoginDate]
       ,a.[lastPasswordChangedDate]
       ,a.[creationDate]
       ,a.[isOnLine]
       ,a.[isLockedOut]
       ,a.[lastLockedOutDate]
       ,a.[failedPasswordAttemptCount]
       ,a.[failedPasswordAttemptWindowStart]
       ,a.[failedPasswordAnswerAttemptCount]
       ,a.[failedPasswordAnswerAttemptWindowStart]
       ,a.Idrol
       ,e.deptSysId
    FROM [users] a, [employees] e
    WHERE a.[username] LIKE '%' + @username + '%' 
          and a.applicationName = @applicationName
	      --and a.[userSysId] = e.[userSysId]
  end



GO
/****** Object:  StoredProcedure [dbo].[GetUsserName]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetUsserName]
@UsserSysID uniqueidentifier
as
Begin
	if exists (Select employeeSysId from employees where userSysId =  @UsserSysID)
	Begin
		Select name + ' ' + lastName
			from employees where userSysId =  @UsserSysID
	End
	else
	Begin
		Select 'Sin referencia'
	End
End

GO
/****** Object:  StoredProcedure [dbo].[GetZonas]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetZonas]
AS
BEGIN
	SET NOCOUNT ON;

    SELECT IP, NumeroAntena, OficinaID, NombreZona, SEMAFORO, ACCESO, Actualizable, EnciendeSemaforo, PuertoRojo, PuertoVerde, PuertoGpio, IDZona 
	FROM Zonas

END
GO
/****** Object:  StoredProcedure [dbo].[IngresarTag]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[IngresarTag] 
@tagID varchar(100),
@barcode varchar(100)
as
begin
print @barcode
if(@barcode ='0')
	return 

Select * from tagRegistry where tagID = @tagID
	IF NOT EXISTS(
	 Select i.tagID from tagRegistry i inner join LoteEPCTAG l ON l.EPC = i.tagID
													   where l.Consecutivo =@barcode and l.categoriaTag = 'Laptops' AND l.EstaGrabado = 1
	)
	Begin

	print 'antes de obtener'

		DECLARE @EPC Varchar(100)
		set @EPC = (SELECT l.EPC from  LoteEPCTAG l where l.Consecutivo = @barcode 
													   AND l.categoriaTag = 'Laptops' AND l.EstaGrabado = 1 )

													   print @EPC

		--declare @now Datetime 
		declare
		--set @now = getdate()
		--Declare
		--@tagsysId uniqueidentifier,
		--@tagTypeSysId uniqueidentifier ,
		--@isAssigned bit  ,
		--@discontinued bit ,
		@entryUser uniqueidentifier = null,
		--@entryDate datetime = @now,
		@updateUser uniqueidentifier = null,
		--@updateDate datetime = @now,
		@rowGuid uniqueidentifier = null


		INSERT INTO tagRegistry
				(   tagSysId, 
					tagID, 
					tagTypeSysId, 
					isAssigned, 
					discontinued, entryUser, 
					entryDate, 
					updateUser, 
					updateDate, 
					rowGuid)
		VALUES     
			   (	NEWID(), 
					@EPC, 
					'00000000-0000-0000-0000-000000000000', 
					'0', 
					'0', 
					@entryUser, 
					GETDATE(), 
					@updateUser,
					GETDATE(), 
					@rowGuid)
	End
END
GO
/****** Object:  StoredProcedure [dbo].[IngresarTagGS1]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[IngresarTagGS1] 
@tagID varchar(100),
@TypeTag varchar(300)
as
begin

declare @tagTypeSysId uniqueidentifier

Set @tagTypeSysId = (select tagTypeSysId from tagTypes where name = @TypeTag)

--Select * from tagRegistry where tagID = @tagID
	IF NOT EXISTS(
	 SELECT tagID FROM tagRegistry
	 where tagID = @tagID
	)
	Begin
		--declare @now Datetime 
		declare
		--set @now = getdate()
		--Declare
		--@tagsysId uniqueidentifier,
		--@tagTypeSysId uniqueidentifier ,
		--@isAssigned bit  ,
		--@discontinued bit ,
		@entryUser uniqueidentifier = null,
		--@entryDate datetime = @now,
		@updateUser uniqueidentifier = null,
		--@updateDate datetime = @now,
		@rowGuid uniqueidentifier = null


		INSERT INTO tagRegistry
				(   tagSysId, 
					tagID, 
					tagTypeSysId, 
					isAssigned, 
					discontinued, entryUser, 
					entryDate, 
					updateUser, 
					updateDate, 
					rowGuid)
		VALUES     
			   (	NEWID(), 
					@tagID, 
					@tagTypeSysId, 
					'0', 
					'0', 
					@entryUser, 
					GETDATE(), 
					@updateUser,
					GETDATE(), 
					@rowGuid)

		update epcTestGs1 set Grabado = '1' where epc = @tagID
	End
END



GO
/****** Object:  StoredProcedure [dbo].[IngresarTagSector]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[IngresarTagSector] 
@tagID varchar(100)
as
begin
	IF NOT EXISTS(
	 SELECT tagID FROM tagRegistry
	 where tagID = @tagID
	)
	Begin
		
		declare
		@entryUser uniqueidentifier = null,
		@updateUser uniqueidentifier = null,
		@rowGuid uniqueidentifier = null


		INSERT INTO tagRegistry
				(   tagSysId, 
					tagID, 
					tagTypeSysId, 
					isAssigned, 
					discontinued, entryUser, 
					entryDate, 
					updateUser, 
					updateDate, 
					rowGuid)
		VALUES     
			   (	NEWID(), 
					@tagID, 
					'00000000-0000-0000-0000-000000000000', 
					'1', 
					'0', 
					@entryUser, 
					GETDATE(), 
					@updateUser,
					GETDATE(), 
					@rowGuid)
	End
END
GO
/****** Object:  StoredProcedure [dbo].[insertAccessorios]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertAccessorios]
@accesorioID uniqueidentifier, 
@assetSysId uniqueidentifier, 
@nombre varchar(256), 
@numerodeserie varchar(25), 
@numeroparte varchar(25), 
@descripcion varchar(2500), 
@fabricante varchar(256)
as
begin
	INSERT INTO Accesorio
                      (accesorioID, assetSysId, nombre, numerodeserie, numeroparte, descripcion, fabricante)
VALUES     (@accesorioID, @assetSysId, @nombre, @numerodeserie, @numeroparte, @descripcion, @fabricante)
end



GO
/****** Object:  StoredProcedure [dbo].[InsertAlertaActivo]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAlertaActivo]
	
	@IdTipoAlerta int,
	@IdActivo uniqueidentifier,
	@Resultado varchar(100) output

AS
BEGIN
	SET NOCOUNT ON;

	--IF NOT EXISTS(SELECT Nombre FROM LogicoA WHERE Nombre = @Nombre)

	IF NOT EXISTS(SELECT IdActivo FROM AlertasActivo WHERE IdActivo = @IdActivo)
	BEGIN
		INSERT INTO AlertasActivo (IdTipoAlerta, IdActivo)
		VALUES (@IdTipoAlerta, @IdActivo)
		SET @Resultado = 'Exitoso'
	END
	BEGIN
		UPDATE AlertasActivo SET IdTipoAlerta = @IdTipoAlerta
		WHERE IdActivo = @IdActivo
	END

END
GO
/****** Object:  StoredProcedure [dbo].[insertarRolCategoría]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insertarRolCategoría]
@idrol uniqueidentifier,
@idcat uniqueidentifier
as
begin
	insert into categoríasporrol (id, idrol, idcat) values (newid(), @idrol, @idcat)
end



GO
/****** Object:  StoredProcedure [dbo].[InsertAssetCategory]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertAssetCategory]
	  @name varchar(100)
	 ,@description varchar(100) 
	 ,@entryUser uniqueidentifier
	 ,@depsysid uniqueidentifier
	 ,@valorvidaUtil INT
	  
AS
BEGIN

	 INSERT INTO [assetCategory]
           ([assetCategorySysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid]
		   ,[depsysid]
		   ,[valorvidaUtil])
     VALUES
           (NEWID()
           ,@name 
           ,@description 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser 
           ,GETDATE()
           ,NEWID()
           ,@depsysid
           ,@valorvidaUtil)

END

GO
/****** Object:  StoredProcedure [dbo].[InsertAssets]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertAssets]
		    @assetItemNumber varchar(256)
           ,@assetCategorySysId  uniqueidentifier
           ,@assetStatusSysId  uniqueidentifier
           ,@companySysId  uniqueidentifier
           ,@businessUnitSysId  uniqueidentifier
           ,@departmentSysId  uniqueidentifier
           ,@officeSysId  uniqueidentifier
           ,@buildingSysId  uniqueidentifier
           ,@floorSysId  uniqueidentifier
           ,@employeeRelated  uniqueidentifier
           ,@tagSysId  uniqueidentifier
           ,@lastEmployeeRelated  uniqueidentifier
           ,@brand varchar(100)
           ,@modelNo varchar(100)
           ,@serialNo varchar(100)
           ,@skuNo varchar(100)
           ,@PartNo varchar(100)
           ,@isDepreciated bit
           ,@isObsolete bit
           ,@color varchar(100)
           ,@cost money
           ,@size varchar(100)
           ,@shortDescription varchar(200)
           ,@longDescription varchar(400)
           ,@accessoriesIncluded bit
           ,@accessoriesQuantity int
           ,@accessoryDescription1 varchar(100)
           ,@accessorySerial1 varchar(50)
           ,@accessoryModel1 varchar(50)
           ,@accessoryDescription2 varchar(100)
           ,@accessorySerial2 varchar(50)
           ,@accessoryModel2 varchar(50)
           ,@accessoryDescription3 varchar(100)
           ,@accessorySerial3 varchar(50)
           ,@accessoryModel3 varchar(50)
           ,@accessoryDescription4 varchar(100)
           ,@accessorySerial4 varchar(50)
           ,@accessoryModel4 varchar(50)
           ,@entryUser uniqueidentifier
           ,@BillNo varchar(15)
           ,@DateAdquired Datetime
           ,@ProviderSysId uniqueidentifier
           ,@GarantyTerms Text
           ,@expirationDate Datetime
           ,@Numb_Apr int
           ,@Alias nvarchar(200)
           ,@ManagementSysId uniqueidentifier
           ,@Origen varchar(250)
           ,@ObservacionesAdicionales varchar(750)
           ,@AssetSubcategory varchar(200)
           ,@CodeBar varchar(50)	 
	       ,@fechaObsolesencia int
		   ,@proveedor varchar(200)	
		   ,@tiporegistro varchar(256)
		   ,@depresiado bit
		   ,@valoresidual int
		   ,@shelfSysId uniqueidentifier
		   ,@costDollars money
		   ,@paidTaxes bit
		   ,@duaNumber varchar(20)
		   ,@procomerLifeTime int
		   ,@residualValueDollars money
		   ,@ProcomerFixedAssetAccount varchar(150)
		   ,@TaxesFixedAssetAccount varchar(150)
		   ,@AccountingAccountDepreciation varchar(150)
		   ,@InternValueBooks money
		   ,@ProcomerValueBooks	money
		   ,@CapitalizationDate datetime
		   ,@FTZInvestment varchar(150)
		   ,@SAPNumber varchar(100)
		   ,@CostCenter varchar(100)
		   ,@AssetClass varchar(100)
		   ,@LogicoA int
		   ,@LogicoB int
			
AS			 
BEGIN

	print 'insert'
		INSERT INTO [assets]
           ([assetSysId]
           ,[assetItemNumber]
           ,[assetCategorySysId]
           ,[assetStatusSysId]
           ,[companySysId]
           ,[businessUnitSysId]
           ,[departmentSysId]
           ,[officeSysId]
           ,[buildingSysId]
           ,[floorSysId]
           ,[employeeRelated]
           ,[tagSysId]
           ,[lastEmployeeRelated]
           ,[brand]
           ,[modelNo]
           ,[serialNo]
           ,[skuNo]
           ,[PartNo]
           ,[isDepreciated]
           ,[isObsolete]
           ,[color]
           ,[cost]
           ,[size]
           ,[shortDescription]
           ,[longDescription]
           ,[accessoriesIncluded]
           ,[accessoriesQuantity]
           ,[accessoryDescription1]
           ,[accessorySerial1]
           ,[accessoryModel1]
           ,[accessoryDescription2]
           ,[accessorySerial2]
           ,[accessoryModel2]
           ,[accessoryDescription3]
           ,[accessorySerial3]
           ,[accessoryModel3]
           ,[accessoryDescription4]
           ,[accessorySerial4]
           ,[accessoryModel4]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid]
           ,BillNo
           ,DateAdquired
           ,ProviderSysId
           ,GarantyTerms
           ,expirationDate
           ,Numb_Apr
           ,Alias
           ,managementSysID
           ,Origen
           ,ObservacionesAdicionales
           ,assetSubcategory
           ,Barcode
           --,FechaObsolesencia
           ,proveedor
           ,TipoRegistro
           ,Depreciado
           ,ValorResidual
		   ,ShelfSysId
		   ,costDollars 
		   ,paidTaxes 
		   ,duaNumber 
		   --,procomerLifeTime
		   ,residualValueDollars
		   ,ProcomerFixedAssetAccount
		   ,TaxesFixedAssetAccount
		   ,AccountingAccountDepreciation 
		   ,InternValueBooks 
		   ,ProcomerValueBooks	
		   ,CapitalizationDate 
		   ,FTZInvestment 
		   ,SAPNumber 
		   ,CostCenter 
		   ,AssetClass
		   ,Logico_A
		   ,Logico_B
		   ,parentAssetSyId) 
		   
     VALUES
           (NEWID()
           ,@assetItemNumber 
           ,@assetCategorySysId 
           ,@assetStatusSysId 
           ,@companySysId 
           ,@businessUnitSysId 
           ,@departmentSysId 
           ,@officeSysId 
           ,@buildingSysId 
           ,@floorSysId 
           ,@employeeRelated 
           ,@tagSysId 
           ,@lastEmployeeRelated 
           ,@brand 
           ,@modelNo 
           ,@serialNo 
           ,@skuNo 
           ,@PartNo 
           ,@isDepreciated 
           ,@isObsolete 
           ,@color 
           ,@cost 
           ,@size 
           ,@shortDescription 
           ,@longDescription 
           ,@accessoriesIncluded 
           ,@accessoriesQuantity 
           ,@accessoryDescription1 
           ,@accessorySerial1 
           ,@accessoryModel1 
           ,@accessoryDescription2 
           ,@accessorySerial2 
           ,@accessoryModel2 
           ,@accessoryDescription3 
           ,@accessorySerial3 
           ,@accessoryModel3 
           ,@accessoryDescription4 
           ,@accessorySerial4 
           ,@accessoryModel4 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser
           ,GETDATE()
           ,NEWID()
           ,@BillNo
           ,@DateAdquired
           ,@ProviderSysId
           ,@GarantyTerms
           ,@expirationDate
           ,@Numb_Apr
           ,@Alias
           ,@ManagementSysId
           ,@Origen
           ,@ObservacionesAdicionales
           ,@AssetSubcategory
           ,@CodeBar
           --,@fechaObsolesencia
           ,@proveedor
           ,@tiporegistro
           ,@depresiado
           ,@valoresidual
		   ,@shelfSysId
		   ,@costDollars
		   ,@paidTaxes
		   ,@duaNumber
		   --,@procomerLifeTime 
		   ,@residualValueDollars
		   ,@ProcomerFixedAssetAccount 
		   ,@TaxesFixedAssetAccount 
		   ,@AccountingAccountDepreciation
		   ,@InternValueBooks
		   ,@ProcomerValueBooks
		   ,@CapitalizationDate
		   ,@FTZInvestment
		   ,@SAPNumber
		   ,@CostCenter
		   ,@AssetClass
		   ,@LogicoA
		   ,@LogicoB
		   ,'00000000-0000-0000-0000-000000000000');
		   
		   
		   
		   

		--UPDATE [tagRegistry] 
		--	SET isAssigned = 1
		--WHERE tagSysId = @tagSysId;
		--print 'Borrando temporal'
		--Delete from tempAssets where tempAssetsSysId = CONVERT(int, @assetItemNumber)
		--print 'Tag en uso'
		
END
GO
/****** Object:  StoredProcedure [dbo].[InsertAssetsImages]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 12/02/2013
-- Description:	Ingreso de imagenes
-- =============================================
CREATE PROCEDURE [dbo].[InsertAssetsImages]
	-- Add the parameters for the stored procedure here
	@AssetSysId uniqueidentifier,
	@Name varchar(100),
	@Destino varchar(100),
	@Extension varchar(10),
	@Consecutivo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO assetsImages 
	           (imageSysId
	           ,assetSysId
	           ,name
	           ,destino
	           ,extension
	           ,consecutivo)
	       VALUES 
	           (NEWID()
	           ,@AssetSysId
	           ,@Name
	           ,@Destino
	           ,@Extension
	           ,@Consecutivo)
END



GO
/****** Object:  StoredProcedure [dbo].[InsertAssetStatus]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 19-jun-2012
-- Description:	InsertAssetStatus
-- =============================================
CREATE PROCEDURE [dbo].[InsertAssetStatus]
	-- Add the parameters for the stored procedure here
			@name varchar(50)
           ,@description varchar(150)
           ,@entryUser uniqueidentifier
         
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 
    declare @cuenta int
    select @cuenta = count(*) from [assetStatus] where name = @name or description = @description
    
  if @cuenta = 0
  begin
    -- Insert statements for procedure here
	 INSERT INTO [assetStatus]
           ([assetStatusSysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
       VALUES
             (NEWID()
             ,@name 
             ,@description 
             ,@entryUser 
             ,GETDATE()
             ,@entryUser
             ,GETDATE()
             ,NEWID())
  end
  
  return @cuenta    
END



GO
/****** Object:  StoredProcedure [dbo].[InsertBuilding]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	InsertBuilding
-- =============================================
CREATE PROCEDURE [dbo].[InsertBuilding]
	-- Add the parameters for the stored procedure here			
		    @name varchar(50) 
           ,@description varchar(150) 
           ,@entryUser uniqueidentifier           
           ,@companySysId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    INSERT INTO [buildings]
           ([buildingSysId]
           ,[companySysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@companySysId
           ,@name
           ,@description 
           ,@entryUser 
           ,getDate()
           ,@entryUser 
           ,getDate()
           ,newid())
	
END



GO
/****** Object:  StoredProcedure [dbo].[InsertBusinessUnit]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	InsertBusinessUnit
-- =============================================
CREATE PROCEDURE [dbo].[InsertBusinessUnit]
	-- Add the parameters for the stored procedure here			
		    @name  varchar(50)
           ,@description  varchar(150) 
           ,@departmentSysId  uniqueidentifier 
           ,@entryUser  uniqueidentifier 
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   INSERT INTO [businessUnit]
           ([businessUnitSysId]
           ,[name]
           ,[description]
           ,[departmentSysId]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@name 
           ,@description 
           ,@departmentSysId 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser 
           ,GETDATE()
           ,NEWID())

  
END



GO
/****** Object:  StoredProcedure [dbo].[InsertCatalogo]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 15/02/2013
-- Description:	ingresar catalogo
-- =============================================
CREATE PROCEDURE [dbo].[InsertCatalogo]
	-- Add the parameters for the stored procedure here
	@Codigo varchar(10),
	@Descripcion varchar(200),
	@tipo varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO catalogo (
	            catalogoSysId,
	            codigo,
	            descripcion,
	            Tipo)
	       VALUES (
	            NEWID(),
	            @Codigo,
	            @Descripcion,
	            @tipo)	            
END



GO
/****** Object:  StoredProcedure [dbo].[InsertCompany]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	InsertCompany
-- =============================================
Create PROCEDURE [dbo].[InsertCompany]
	-- Add the parameters for the stored procedure here			
		    @name varchar(50)
           ,@description varchar(150)
           ,@entryUser uniqueidentifier           
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- Insert statements for procedure here
INSERT INTO [companies]
           ([companySysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@name 
           ,@description 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser 
           ,GETDATE()
           ,NEWID())


END



GO
/****** Object:  StoredProcedure [dbo].[InsertCompanyXCountry]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Oswaldo Dávila Padrón>
-- Create date: <11 september 2017>
-- Description:	<Stored procedure to save a new country assigned to a new company>
-- =============================================
CREATE PROCEDURE [dbo].[InsertCompanyXCountry]
	@FK_companySysId uniqueidentifier, 
	@CountryName varchar(200) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO [dbo].[CompaniesXCountries](
		FK_companySysId, 
		CountryName
	)
    VALUES (
		@FK_companySysId,	
		@CountryName
    )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartment]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	InsertDepartment
-- =============================================
-- =============================================
-- Updated by: Oswaldo Dávila
-- Update date: 25 september 2017
-- Description: managementSysId removed from procedure
-- =============================================
CREATE PROCEDURE [dbo].[InsertDepartment]
	-- Add the parameters for the stored procedure here
	      --  @deptSysId  uniqueidentifier,>
            --@gerenciaSysId  uniqueidentifier
            @companySysId  uniqueidentifier
           ,@name varchar(50)
           ,@description varchar(100)
           ,@supervisorSysId uniqueidentifier
           ,@entryUser uniqueidentifier
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    	----------------------------------------------- 
	DECLARE @emptySysId uniqueidentifier = cast('00000000-0000-0000-0000-000000000000' as uniqueidentifier)
	
	INSERT INTO [departments]
			   ([deptSysId]
			   ,[managementSysId]
			   ,[companySysId]
			   ,[name]
			   ,[description]
			   ,[supervisor]
			   ,[entryUser]
			   ,[entryDate]
			   ,[updateUser]
			   ,[updateDate]
			   ,[rowGuid])
     VALUES		(NEWID()
			   ,@emptySysId
			   ,@companySysId 
			   ,@name 
			   ,@description 
			   ,@supervisorSysId 
			   ,@entryUser
			   ,GETDATE()
			   ,@entryUser
			   ,GETDATE()
			   ,NEWID())

		
END



GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	InsertEmployee
-- =============================================

CREATE PROCEDURE [dbo].[InsertEmployee]
	-- Add the parameters for the stored procedure here			
          --@employeeSysId, uniqueidentifier,>
            @companySysId  uniqueidentifier 
           ,@managementSysId uniqueidentifier 
           ,@deptSysId uniqueidentifier 
           ,@employeeNo  int 
           ,@name  varchar(50) 
           ,@lastName  varchar(50) 
           ,@tagSysId  uniqueidentifier 
           ,@id  varchar(100) 
           ,@phone1  varchar(20) 
           ,@cell  varchar(20) 
           ,@email  varchar(128) 
           ,@active  bit 
           ,@hireDate  datetime 
           ,@endOfLaboralRelationshipDate  datetime 
           ,@entryUser uniqueidentifier 
           

        
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 INSERT INTO [employees]
           ([employeeSysId]
           ,[companySysId]
           ,[managementSysId]
           ,[deptSysId]
           ,[employeeNo]
           ,[name]
           ,[lastName]
           ,[tagSysId]
           ,[id]
           ,[phone1]
           ,[cell]
           ,[email]
           ,[active]
           ,[hireDate]
           ,[endOfLaboralRelationshipDate]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@companySysId 
           ,@managementSysId 
           ,@deptSysId
           ,@employeeNo 
           ,@name 
           ,@lastName 
           ,@tagSysId
           ,@id 
           ,@phone1 
           ,@cell 
           ,@email 
           ,@active 
           ,@hireDate 
           ,@endOfLaboralRelationshipDate 
           ,@entryUser
           ,GETDATE() 
           ,@entryUser
           ,GETDATE()
           ,NEWID())

	UPDATE tagRegistry
		SET isAssigned = 1
	WHERE tagSysId = @tagSysId





END



GO
/****** Object:  StoredProcedure [dbo].[InsertFloor]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	InsertFloor
-- =============================================
CREATE PROCEDURE [dbo].[InsertFloor]
	-- Add the parameters for the stored procedure here
		--	@floorSysId  uniqueidentifier
            @buildingSysId  uniqueidentifier
           ,@companySysId  uniqueidentifier
           ,@name varchar(50)
           ,@description  varchar(150)
           ,@entryUser  uniqueidentifier
          
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   INSERT INTO [floors]
           ([floorSysId]
           ,[buildingSysId]
           ,[companySysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@buildingSysId 
           ,@companySysId 
           ,@name 
           ,@description 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser 
           ,GETDATE()
           ,NEWID()) 

   		
END



GO
/****** Object:  StoredProcedure [dbo].[InsertLocationToLoad]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 20-jul-2012
-- Description:	InsertLocationToLoad
-- =============================================
CREATE PROCEDURE [dbo].[InsertLocationToLoad]
	-- Add the parameters for the stored procedure here
	  @officeSysId uniqueidentifier
	 ,@userSysId uniqueidentifier	 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [assetsToLoad]
           ([officeSysId]
           ,[userSysId]
           ,[entryDate])
     VALUES
           (@officeSysId
           ,@userSysId
           ,GETDATE())


	
	
END



GO
/****** Object:  StoredProcedure [dbo].[InsertLogicoA]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertLogicoA]
	
	@Nombre varchar(50),
	@Descripcion varchar(100),
	@Usuario varchar(50),
	@Resultado varchar(100) output
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @userSysId uniqueidentifier
	IF(@Usuario = 'Sin asignar')
	BEGIN
		SET @userSysId ='00000000-0000-0000-0000-000000000000'
	END
	ELSE
	BEGIN
		IF NOT EXISTS(SELECT userSysId FROM users WHERE username = @Usuario)
		BEGIN
			SET @Resultado = 'El usuario no existe'
			RETURN
		END
		SELECT @userSysId = userSysId FROM users WHERE username = @Usuario
	END

	IF NOT EXISTS(SELECT Nombre FROM LogicoA WHERE Nombre = @Nombre)
	BEGIN
		INSERT INTO LogicoA (Nombre, Descripcion, userSysId) values (@Nombre, @Descripcion, @userSysId)
		SET @Resultado = 'Exitoso'
		END
	ELSE 
	BEGIN
		SET @Resultado = 'Ya existe'
	END 
END
GO
/****** Object:  StoredProcedure [dbo].[InsertLogicoB]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertLogicoB]

	@IdLogicoA int,
	@Nombre varchar(50),
	@Descripcion varchar(100),
	@Usuario varchar(50),
	@Resultado varchar(100) output
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @userSysId uniqueidentifier
	IF(@Usuario = 'Sin Asignar')
	BEGIN
		SET @userSysId ='00000000-0000-0000-0000-000000000000'
	END
	BEGIN
		IF NOT EXISTS(SELECT userSysId FROM users WHERE username = @Usuario)
		BEGIN
			SET @Resultado = 'El usuario no existe'
			RETURN
		END
		SELECT @userSysId = userSysId FROM users WHERE username = @Usuario
	END

    IF NOT EXISTS(Select Nombre FROM LogicoB WHERE IdLogicoA = @IdLogicoA AND Nombre = @Nombre)
	BEGIN
		INSERT INTO LogicoB(IdLogicoA, Nombre, Descripcion, userSysId) VALUES (@IdLogicoA, @Nombre, @Descripcion, @userSysId)
		SET @Resultado = 'Exitoso'
	END 
	ELSE
	BEGIN 
		SET @Resultado = 'Ya existe'
	END 	
END
GO
/****** Object:  StoredProcedure [dbo].[InsertManagement]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 24-Ene-2013
-- Description:	Insertar gerencia
-- =============================================
CREATE PROCEDURE [dbo].[InsertManagement] 
	-- Add the parameters for the stored procedure here
	@nameManagement varchar(50),
	@descriptionManagement varchar(200),
	@companySysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Management
	      (managementSysId,
	       name,
	       description,
	       rowGuid,
	       companySysId)
	  VALUES(
	       NEWID(),
	       @nameManagement,
	       @descriptionManagement,
	       NEWID(),
	       @companySysId)
END



GO
/****** Object:  StoredProcedure [dbo].[InsertNewInventories]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertNewInventories] 
	-- Add the parameters for the stored procedure here
    @InventoryTakes dbo.TomasInventarioType READONLY, 
    @Inventory dbo.InventarioType READONLY, 
    @InventoryDetails dbo.DetalleInventarioType READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO TomasdelInventario TI USING @InventoryTakes IT ON
            (TI.ID = IT.idInventoryTake)
            WHEN NOT MATCHED THEN
            INSERT (ID, 
                    fecha, 
                    usuario, 
                    Oficina, 
                    ID_TipoInventario)
            VALUES (IT.idInventoryTake, 
                   GETDATE(), 
                   IT.userSysId, 
                   IT.officeSysId, 
                   IT.idInventoryType);
-------------------------------------------------------------------------------------------------------------
            MERGE INTO Inventario I USING @Inventory INV ON 
            (I.ID = INV.idInventory)
            WHEN NOT MATCHED THEN
            INSERT (ID, 
                    Num, 
                    Leidos, 
                    Total, 
                    Ok, 
                    Faltantes, 
                    Sobrantes, 
                    Fecha, 
                    IDToma, 
                    Marca, 
                    Metodo)
            VALUES (INV.idInventory, 
                    INV.numItems, 
                    INV.readItems,
                    INV.readTotal, 
                    INV.readOk, 
                    INV.readMissing, 
                    INV.readExtra, 
                    INV.inventoryDate, 
                    INV.idInventoryTake, 
                    0, 
                    INV.method);
-------------------------------------------------------------------------------------------------------------
            MERGE INTO Detalle_Inventario DT USING @InventoryDetails I ON
            (DT.ID = I.idInventoryDetails)
            WHEN NOT MATCHED THEN
            INSERT (ID, 
                                       ID_Inventario, 
                                       NumeroActivo, 
                                       Descripcion, 
                                       EPC, 
                                       Estado, 
                                       Excluido)
            VALUES (I.idInventoryDetails, 
                    I.idInventory, 
                    I.assetNumber, 
                    I.assetDescription, 
                    I.EPC, 
                    I.assetState, 
                    I.assetExcluded);

        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END

--select top 1 * from Inventario

--select top 1 * from Detalle_Inventario
GO
/****** Object:  StoredProcedure [dbo].[InsertNewInventoryTake]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertNewInventoryTake] 
	-- Add the parameters for the stored procedure here
	@TakeId uniqueidentifier,
    @TakeName varchar(150), 
    @TakeDescription varchar(150), 
    @TakeDate datetime, 
    @TakeStatus bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
    INSERT INTO [dbo].[TomaFisica]
           ([IdToma]
           ,[TakeName]
           ,[TakeDescription]
           ,[TakeDate]
           ,[TakeStatus])
     VALUES
           (@TakeId
           ,@TakeName
           ,@TakeDescription
           ,GETDATE() 
           ,@TakeStatus )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertOffice]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertOffice]
	-- Add the parameters for the stored procedure here
          @businessUnitSysId uniqueidentifier 
           ,@companySysId uniqueidentifier 
           ,@buildingSysId uniqueidentifier 
           ,@floorSysId uniqueidentifier           
           ,@tagSysId uniqueidentifier 
           ,@name varchar(50) 
           ,@description varchar(150) 
           ,@entryUser uniqueidentifier
           ,@isEnable bit 
           

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [officeses]
           ([officeSysId]
           ,[companySysId]
           ,[buildingSysId]
           ,[businessUnitSysId]
           ,[floorSysId]
           ,[deptSysId]
           ,[tagSysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid]
           ,[IsEnable])
     VALUES
           (NEWID()
           ,@companySysId --'00000000-0000-0000-0000-000000000000' 
           ,@buildingSysId --'00000000-0000-0000-0000-000000000000' 
           ,@businessUnitSysId 
           ,@floorSysId 
           ,'00000000-0000-0000-0000-000000000000' 
           ,@tagSysId 
           ,@name 
           ,@description 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser
           ,GETDATE()
           ,NEWID()
           ,@isEnable)
 
	 	UPDATE tagRegistry
		SET isAssigned = 1
	WHERE tagSysId = @tagSysId	 
END



GO
/****** Object:  StoredProcedure [dbo].[InsertOrUpdateAllOfficesXTags]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrUpdateAllOfficesXTags] 
	-- Add the parameters for the stored procedure here
    @OfficesXTags dbo.OfficesXTagsType READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO OfficesXTags O USING @OfficesXTags OT ON
            (O.tagSysId = OT.tagSysId)
            WHEN MATCHED THEN
            UPDATE 
            SET O.officeSysId = OT.officeSysId, 
                O.tagSysId = OT.tagSysId
            WHEN NOT MATCHED THEN 
            INSERT (officeSysId, 
                    tagSysId)
            VALUES (OT.officeSysId, 
                    OT.tagSysId);
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
            SELECT ERROR_MESSAGE()+ '-' + 
	                       CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	                       ERROR_PROCEDURE()  AS 'RESULTADO'
					
					if @@TRANCOUNT > 0
					Begin
						Rollback
						select @@Error * -1
	     			End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[InsertOrUpdateAssetsTags]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrUpdateAssetsTags] 
	-- Add the parameters for the stored procedure here
    @AssetsType dbo.AssetsType READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            UPDATE assets
            SET tagSysId = A.tagSysId, 
                updateUser = dbo.getUserSysId('Admin'), 
                officeSysId = A.officeSysId,
                floorSysId = A.floorSysId,
                buildingSysId = A.buildingSysId,
                companySysId = A.companySysId,
                updateDate = GETDATE()
            FROM @AssetsType A
            WHERE assets.assetSysId = A.assetSysId
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[InsertOrUpdateInventoriesTakes]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrUpdateInventoriesTakes] 
	-- Add the parameters for the stored procedure here
    @TomaFisicaType [dbo].[TomaFisicaType] READONLY, 
    @TomaFisicaDetalleType [dbo].[TomaFisicaDetalleType] READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here

	
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO [dbo].[TomaFisica] TF USING @TomaFisicaType IT ON
            (TF.[IdToma] = IT.[IdToma])
            WHEN MATCHED THEN 
                UPDATE 
                SET TF.[TakeStatus] = IT.[TakeStatus]
            WHEN NOT MATCHED THEN
            INSERT ([IdToma]
                   ,[TakeName]
                   ,[TakeDescription]
                   ,[TakeDate]
                   ,[TakeStatus])
            VALUES (IT.[IdToma], 
                   IT.[TakeName], 
                   IT.[TakeDescription], 
                   GETDATE(), 
                   IT.[TakeStatus]);
        COMMIT TRANSACTION
----------------------------------------------------------------------------------------------
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO [dbo].[TomaFisicaDetalle] I USING @TomaFisicaDetalleType INV ON 
            (I.[FK_TomaFisica] = INV.[FK_TomaFisica] and I.[EPC] = INV.[EPC])
            WHEN NOT MATCHED THEN
            INSERT ([IdTakeDetail]
                   ,[FK_TomaFisica]
                   ,[EPC]
                   ,[DateRead])
            VALUES (INV.[IdTakeDetail], 
                    INV.[FK_TomaFisica], 
                    INV.[EPC], 
                    GETDATE());
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END

--select top 1 * from Inventario

--select top 1 * from Detalle_Inventario

--alter table Detalle_Inventario
--add officeSysId uniqueidentifier


--alter table Detalle_Inventario
--add OfficeName varchar(200)
GO
/****** Object:  StoredProcedure [dbo].[InsertOrUpdateTags]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertOrUpdateTags] 
	-- Add the parameters for the stored procedure here
    @TagsType dbo.TagsType READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO tagRegistry TR USING @TagsType T ON 
            (TR.tagSysId = T.tagSysId)
            WHEN MATCHED THEN
            UPDATE
            SET TR.tagID = T.tagID, 
                TR.tagTypeSysId = T.tagTypeSysId, 
                TR.isAssigned = T.isAssigned,
                TR.discontinued = T.discontinued,
                TR.updateDate = GETDATE()
            WHEN NOT MATCHED THEN
            INSERT (tagSysId,
                    tagID, 
                    tagTypeSysId, 
                    isAssigned, 
                    discontinued, 
                    entryUser, 
                    updateUser)
            VALUES (T.tagSysId,
                    T.tagID, 
                    T.tagTypeSysId, 
                    T.isAssigned, 
                    T.discontinued, 
                    dbo.getUserSysId('Admin'), 
                    dbo.getUserSysId('Admin'));
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[InsertProvider]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: June-21-2012
-- Description:	InsertProvider
-- =============================================
CREATE PROCEDURE [dbo].[InsertProvider]
	-- Add the parameters for the stored procedure here
	        @providerName varchar(150) 
           ,@contactName varchar(100) 
           ,@phone1 varchar(20) 
           ,@cell varchar(20)
           ,@email varchar(20) 
           ,@active bit 
           ,@entryUser uniqueidentifier            
           
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 INSERT INTO [providers]
           ([providerSysId]
           ,[providerName]
           ,[contactName]
           ,[phone1]
           ,[cell]
           ,[email]
           ,[active]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@providerName
           ,@contactName 
           ,@phone1 
           ,@cell 
           ,@email
           ,@active 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser 
           ,GETDATE()
           ,NEWID())


END



GO
/****** Object:  StoredProcedure [dbo].[InsertReader]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 27-jul-2012
-- Description:	InsertReader
-- =============================================
CREATE PROCEDURE [dbo].[InsertReader]
	-- Add the parameters for the stored procedure here
			@brand  varchar(50) 
           ,@ip  varchar(15) 
           ,@port  varchar(10) 
           ,@serial  varchar(50) 
           ,@model  varchar(50) 
           ,@macAddress  varchar(100) 
           ,@username  varchar(50) 
           ,@password  varchar(100) 
           ,@AreaSysId  uniqueidentifier 
           ,@entryUser uniqueidentifier 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [readers]
           ([readerSysId]
           ,[brand]
           ,[ip]
           ,[port]
           ,[serial]
           ,[model]
           ,[macAddress]
           ,[username]
           ,[password]
           ,[AreaSysId]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@brand 
           ,@ip 
           ,@port 
           ,@serial 
           ,@model 
           ,@macAddress 
           ,@username 
           ,@password 
           ,@AreaSysId 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser  
           ,GETDATE()
           ,NEWID())
	



END



GO
/****** Object:  StoredProcedure [dbo].[InsertShelf]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Joselyn Monge 030717
CREATE PROCEDURE [dbo].[InsertShelf]
	-- Add the parameters for the stored procedure here
          @businessUnitSysId uniqueidentifier
		   ,@officeSysId uniqueidentifier 
           ,@floorSysId uniqueidentifier           
           ,@tagSysId uniqueidentifier 
           ,@name varchar(50) 
           ,@description varchar(150) 
           ,@entryUser uniqueidentifier
           ,@isEnable bit 
           

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [shelf]
           ([ShelfSysId]
		   ,[officeSysId]
           ,[companySysId]
           ,[buildingSysId]
           ,[businessUnitSysId]
           ,[floorSysId]
           ,[deptSysId]
           ,[tagSysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid]
           ,[IsEnable])
     VALUES
           (NEWID()
		   ,@officeSysId
           ,'00000000-0000-0000-0000-000000000000' 
           ,'00000000-0000-0000-0000-000000000000' 
           ,@businessUnitSysId 
           ,@floorSysId 
           ,'00000000-0000-0000-0000-000000000000' 
           ,@tagSysId 
           ,@name 
           ,@description 
           ,@entryUser 
           ,GETDATE()
           ,@entryUser
           ,GETDATE()
           ,NEWID()
           ,@isEnable)
 
	 	UPDATE tagRegistry
		SET isAssigned = 1
	WHERE tagSysId = @tagSysId	 
END





GO
/****** Object:  StoredProcedure [dbo].[InsertTag]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTag]
		    @EPC varchar(24)
           ,@NumeroTag  varchar(50)
           ,@Lote  varchar(50)
          
AS			 
BEGIN

if not exists (select idtag from tbl_Tags where EPC = @EPC)
	begin
			INSERT INTO [tbl_Tags]
			   (EPC
			   ,NumeroTag
			   ,Lote)
		 VALUES
			   (@EPC
			   ,@NumeroTag
			   ,@Lote);
	end	   
	
	if exists(select idtag from tbl_Tags where EPC = @EPC)
	begin
		select 'Exitoso' as Respuesta
	end
	else
	begin
		select 'Error' as Respuesta
	end
END
GO
/****** Object:  StoredProcedure [dbo].[InsertTagRegistry]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertTagRegistry]
@tagsysId uniqueidentifier,
@tagID varchar(100),
@tagTypeSysId uniqueidentifier,
@isAssigned bit,
@discontinued bit,
@entryUser uniqueidentifier = null,
@entryDate datetime = null,
@updateUser uniqueidentifier = null,
@updateDate datetime = null,
@rowGuid uniqueidentifier = null
as
begin
INSERT INTO tagRegistry
                      (tagSysId, tagID, tagTypeSysId, isAssigned, discontinued, entryUser, entryDate, updateUser, updateDate, rowGuid)
VALUES     (@tagSysId, @tagID, @tagTypeSysId, @isAssigned, @discontinued, @entryUser, @entryDate, @updateUser, @updateDate, @rowGuid)

end



GO
/****** Object:  StoredProcedure [dbo].[InsertTagType]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTagType]
	-- Add the parameters for the stored procedure here
	        @code varchar(50)
           ,@name varchar(50)
           ,@description varchar(150)
           ,@assetCategorySysId uniqueidentifier
           ,@entryUser uniqueidentifier
           

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [tagTypes]
           ([tagTypeSysId]
           ,[code]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid])
     VALUES
           (NEWID()
           ,@code 
           ,@name
           ,@description
           ,@entryUser 
           ,GETDATE()
           ,@entryUser 
           ,GETDATE()
           ,NEWID())
	
END



GO
/****** Object:  StoredProcedure [dbo].[InsertTipoAlertas]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTipoAlertas]
	
	@Nombre varchar(200),
	@TipoMaximoNoLectura varchar(200),
	@Email1 varchar(200),
	@Email2 varchar(200),
	@Email3 varchar(200),
	@GestionApp bit,
	@CirculoPermitido varchar(200),
	@UsuarioPermitido varchar(200),
	@IdCirculoPermitido int,
	@IdUsuarioPermitido int,
	@Resultado varchar(100) output

AS
BEGIN
	SET NOCOUNT ON;

    IF NOT EXISTS(SELECT Nombre FROM TiposAlertas WHERE Nombre = @Nombre)
	BEGIN
		INSERT INTO TiposAlertas (Nombre, TiempoMaximoNoLectura, Email1, Email2, Email3, GestionApp, CirculoPermitido, UsuarioPermitido, IdCirculoPermitido, IdUsuarioPermitido)
		VALUES (@Nombre, @TipoMaximoNoLectura, @Email1, @Email2, @Email3, @GestionApp, @CirculoPermitido, @UsuarioPermitido, @IdCirculoPermitido, @IdUsuarioPermitido)
		SET @Resultado = 'Exitoso'
	END
	ELSE
	BEGIN
		SET @Resultado = 'Ya existe'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	InsertUser
-- =============================================
CREATE PROCEDURE [dbo].[InsertUser]
	-- Add the parameters for the stored procedure here			
            @username varchar(255) 
           ,@applicationName varchar(255) 
           ,@email varchar(128) 
           ,@comment varchar(255) 
           ,@password varchar(128) 
           ,@passwordQuestion varchar(255) 
           ,@passwordAnswer varchar(255) 
           ,@isApproved bit 
           ,@lastActivityDate datetime 
           ,@lastLoginDate datetime 
           ,@lastPasswordChangedDate datetime 
           ,@creationDate datetime 
           ,@isOnLine bit 
           ,@isLockedOut bit 
           ,@lastLockedOutDate datetime 
           ,@failedPasswordAttemptCount int 
           ,@failedPasswordAttemptWindowStart datetime 
           ,@failedPasswordAnswerAttemptCount int 
           ,@failedPasswordAnswerAttemptWindowStart datetime	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 
	 INSERT INTO [dbo].[users]
           ([userSysId]
           ,[username]
           ,[applicationName]
           ,[email]
           ,[comment]
           ,[password]
           ,[passwordQuestion]
           ,[passwordAnswer]
           ,[isApproved]
           ,[lastActivityDate]
           ,[lastLoginDate]
           ,[lastPasswordChangedDate]
           ,[creationDate]
           ,[isOnLine]
           ,[isLockedOut]
           ,[lastLockedOutDate]
           ,[failedPasswordAttemptCount]
           ,[failedPasswordAttemptWindowStart]
           ,[failedPasswordAnswerAttemptCount]
           ,[failedPasswordAnswerAttemptWindowStart])
     VALUES
           (NEWID()
           ,@username
           ,@applicationName
           ,@email
           ,@comment
           ,@password
           ,@passwordQuestion
           ,@passwordAnswer
           ,@isApproved
           ,@lastActivityDate
           ,@lastLoginDate
           ,@lastPasswordChangedDate
           ,@creationDate
           ,@isOnLine
           ,@isLockedOut
           ,@lastLockedOutDate
           ,@failedPasswordAttemptCount
           ,@failedPasswordAttemptWindowStart
           ,@failedPasswordAnswerAttemptCount
           ,@failedPasswordAnswerAttemptWindowStart)
 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[InsertZonas]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertZonas] 
	
	@IpZonas varchar(200),
	@NumeroAntena int,
	@OficinaID uniqueidentifier,
	@NombreZona varchar(200),
	@Semaforo bit,
	@Acceso bit,
	@Actualizable bit,
	@EnciendeSemaforo bit, 
	@PuertoRojo int,
	@PuertoVerde int,
	@PuertoGpio int,
	@Resultado varchar(100) output
AS
BEGIN
	SET NOCOUNT ON;

    INSERT INTO Zonas (IP, NumeroAntena, OficinaID, NombreZona, SEMAFORO, ACCESO, Actualizable, EnciendeSemaforo, PuertoRojo, PuertoVerde, PuertoGpio)
	VALUES (@IpZonas, @NumeroAntena, @OficinaID, @NombreZona, @Semaforo, @Acceso, @Actualizable, @EnciendeSemaforo, @PuertoRojo, @PuertoVerde, @PuertoGpio)
	SET @Resultado = 'Exitoso'
END
GO
/****** Object:  StoredProcedure [dbo].[InsLecturasLineasReaderRoche]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--InsLecturasLineasReader
--InsLecturasLineasReader
CREATE PROCEDURE [dbo].[InsLecturasLineasReaderRoche]
@IdEmpresa varchar(100),-- 2
@TagEPC varchar(100),-- 636489215330300000869B73
@IP varchar(50),    -- 192.168.1.155
@Antena varchar(10)  --1
as
--2
BEGIN
 EXEC [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].InsLecturasLineasReader @IdEmpresa,@TagEPC,@IP,@Antena
 
 INSERT INTO LecturasBorrar (EPC, Ip, Antena, Fecha)
 VALUES (@TagEPC, @IP, @Antena, GETDATE())
END
 --[acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].InsLecturasLineasReader 2,'636489215330300000869B73','192.168.1.155',1

GO
/****** Object:  StoredProcedure [dbo].[liberarTag]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[liberarTag]
@epc varchar(200)
as
begin
	declare @id uniqueidentifier
	select @id = tagSysId from tagRegistry where tagID=@epc
	update tagRegistry set isAssigned=0 where tagSysId = @id
	update assets set tagSysId = '00000000-0000-0000-0000-000000000000' where tagSysId = @id
	--Agregar la función para que sriva en Oficinas tambien
	update officeses set tagSysId = '00000000-0000-0000-0000-000000000000' where tagSysId = @id
end



GO
/****** Object:  StoredProcedure [dbo].[ListaempleadosFiltrado]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ListaempleadosFiltrado]
@Nombre varchar(256)
as
begin
	select * from vt_empleados where Nombre like '%' + @Nombre + '%'
	
end

GO
/****** Object:  StoredProcedure [dbo].[ListarActivo]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarActivo]
@oficina uniqueidentifier,
@incluyeDepartamento float
as
begin

declare @departamentoID uniqueidentifier
declare @departamentoName varchar(256)
declare @OficinaName varchar(256)

 if @incluyeDepartamento=1
 begin
	print 'Incluye departamento'
	select @departamentoID= deptSysId from officeses where officeSysId= @oficina
	
	
	select @departamentoName = name from departments where deptSysId=@departamentoID
	
	
	select @OficinaName = name from officeses where officeSysId=@oficina
	
	select a.assetSysId ID, a.assetItemNumber Numero, t.tagID tag, a.Alias, a.shortDescription+ ' ' +a.brand + ' '+ a.longDescription Descripcion, @OficinaName oficina, @departamentoName departamento
	 from assets a, tagRegistry t
	 where a.tagSysId= t.tagSysId and
	  EXISTS (select businessUnitSysId from businessUnit where departmentSysId=@departamentoID)
	
 end
 else
 begin
	print 'no incluye departamento'
	select @departamentoID= deptSysId from officeses where officeSysId= @oficina
	

	select @departamentoName = name from departments where deptSysId=@departamentoID
	

	select @OficinaName = name from officeses where officeSysId=@oficina
	
	select a.assetSysId ID, a.assetItemNumber Numero, t.tagID tag, a.Alias, a.shortDescription+ ' ' +a.brand +' '+a.longDescription Descripcion, @OficinaName oficina, @departamentoName departamento
	 from assets a, tagRegistry t
	 where a.tagSysId= t.tagSysId and
	 officeSysId = @oficina
	 
 end
end



GO
/****** Object:  StoredProcedure [dbo].[ListarActivos]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarActivos]
@depsysid uniqueidentifier = '00000000-0000-0000-0000-000000000000'
as
begin
	if @depsysid <> '00000000-0000-0000-0000-000000000000'
	begin
		select * from vt_ListadeActivos where departamentSysId = @depsysid
	end else
	begin
		select * from vt_ListadeActivos
	end
end;



GO
/****** Object:  StoredProcedure [dbo].[ListarActivosHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarActivosHH] 
as
begin
        SELECT A.assetSysId AS ID, 
               A.assetItemNumber AS Numero, 
               E.name + ' ' + E.lastName AS Alias, 
               A.shortDescription + ' ' + A.brand + ' ' + A.longDescription + ' Serial: ' + A.serialNo AS descripcion, 
               D.name AS departamento, 
               O.name AS oficina, 
               F.name AS piso,
               B.name AS edificio, 
               C.name AS compania,
               TR.tagID AS Tag, 
               A.Barcode, 
               A.officeSysId AS IdOficina, 
               A.ShelfSysId AS IdEstante, 
               A.assetCategorySysId,
               A.floorSysId as idPiso,
               A.buildingSysId as idEdificio,
               A.companySysId as idCompania
               --A.serialNo AS Serial, 
               --DC.Descripcion AS DescripcionCorta,
               --DL.Descripcion AS DescripcionLarga
        FROM assets A
        INNER JOIN departments D ON A.departmentSysId = D.deptSysId
        INNER JOIN officeses O ON A.officeSysId = O.officeSysId
        INNER JOIN floors F ON A.floorSysId = F.floorSysId
        INNER JOIN buildings B ON A.buildingSysId = B.buildingSysId
        INNER JOIN companies C ON A.companySysId = C.companySysId
        INNER JOIN tagRegistry TR ON A.tagSysId = TR.tagSysId
        INNER JOIN employees E ON A.employeeRelated = E.employeeSysId
        INNER JOIN shelf S ON A.ShelfSysId = S.ShelfSysId
        INNER JOIN assetCategory AC ON A.assetCategorySysId = AC.assetCategorySysId
        INNER JOIN assetStatus AST ON A.assetStatusSysId = AST.assetStatusSysId
        --INNER JOIN tblDescripcionLarga DL ON A.IdDescripcionLarga = DL.ID
        --INNER JOIN tblDescripcionCorta DC ON A.IdDescripcionCorta = DC.ID
        WHERE AST.name <> 'Inactivo'
        ORDER BY len(assetItemNumber), assetItemNumber asc

end

--select * from assetStatus

--select * from employees


GO
/****** Object:  StoredProcedure [dbo].[ListarActivosporCriterio]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ListarActivosporCriterio] 
@criterio varchar(100)
as
begin
select a.assetSysId ID, a.assetItemNumber Numero, empl.name + ' ' + empl.lastName as Alias, a.shortDescription+ ' ' +a.brand +' '+a.longDescription+' Serial: '+a.serialNo descripcion , d.Name departamento, o.name oficina, t.tagID Tag, a.Barcode, a.[officeSysId]  IdOficina, a.ShelfSysId IdEstante
from assets a, departments d, officeses o, tagRegistry t,employees empl, shelf s
where a.departmentSysId = d.deptSysId and
	  a.officeSysId = o.officeSysId and
	  a.tagSysId = t.tagSysId and
	  a.employeeRelated = empl.employeeSysId and
	  s.ShelfSysId = a.ShelfSysId and
	  (
	   a.assetItemNumber like '%'+@criterio+'%' or a.Alias like '%'+@criterio+'%'
	   or a.longDescription like '%'+@criterio+'%' or d.Name like '%'+@criterio+'%' or
	   o.Name like '%'+@criterio+'%' 
	   or a.ShelfSysId like '%'+@criterio+'%'
	  )
end



GO
/****** Object:  StoredProcedure [dbo].[ListarActivosporCriterioV1]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[ListarActivosporCriterioV1] 
@criterio varchar(100)
as
begin
select a.assetSysId ID, a.assetItemNumber Numero, empl.name + ' ' + empl.lastName as Alias, a.shortDescription+ ' ' +a.brand +' '+a.longDescription+' Serial: '+a.serialNo descripcion , d.Name departamento, o.name oficina, t.tagID Tag, a.Barcode, a.[officeSysId]  IdOficina, a.ShelfSysId IdEstante
from assets a, departments d, officeses o, tagRegistry t,employees empl, shelf s
where a.departmentSysId = d.deptSysId and
	  a.officeSysId = o.officeSysId and
	  a.tagSysId = t.tagSysId and
	  a.employeeRelated = empl.employeeSysId and
	  s.ShelfSysId = a.ShelfSysId and
	  (
	   a.assetItemNumber like '%'+@criterio+'%' or a.Alias like '%'+@criterio+'%'
	   or a.longDescription like '%'+@criterio+'%' or d.Name like '%'+@criterio+'%' or
	   o.Name like '%'+@criterio+'%' 
	   or a.ShelfSysId like '%'+@criterio+'%'
	  )
end



GO
/****** Object:  StoredProcedure [dbo].[ListarActivosTemp]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ListarActivosTemp]

as
Begin

	(Select 	tp.tempAssetsSysId,
			tp.EPC,
			tr.tagSysId,
			tp.officeSysId,
			tp.descCorta,
			tp.serie,
			tp.modelo,
			tp.assetStatusSysId,
			tp.employeeRelated,
			tp.Metodo,
			tp.marca,
			o.name Oficina
			from tempAssets tp
			inner join tagRegistry tr on
			tr.tagID = tp.EPC		
			inner join officeses o on
			tp.officeSysId = o.officeSysId
	)		
			union 
			(
			select 
			tp.tempAssetsSysId,
			tp.EPC,
			'00000000-0000-0000-0000-000000000000' as tagSysId,
			tp.officeSysId,
			tp.descCorta,
			tp.serie,
			tp.modelo,
			tp.assetStatusSysId,
			tp.employeeRelated,
			tp.Metodo,
			tp.Marca,
			o.name oficina
			from tempAssets tp
			inner join officeses o on
			tp.officeSysId = o.officeSysId
			where Metodo not like 'RFID'
			) 
			
End

GO
/****** Object:  StoredProcedure [dbo].[ListarCatalogoPorCriterio]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 15/02/2013
-- Description:	buscar catalogo por criterio
-- =============================================
CREATE PROCEDURE [dbo].[ListarCatalogoPorCriterio]
	-- Add the parameters for the stored procedure here
	@Criterio varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT catalogoSysId, codigo, descripcion, Tipo from catalogo
	where (codigo like '%' + @Criterio + '%' or
	       descripcion like '%' + @Criterio + '%' or 
	       Tipo like '%' + @Criterio + '%')          
END



GO
/****** Object:  StoredProcedure [dbo].[ListarDetallesdeInventarios]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarDetallesdeInventarios] --'72FDF172-3DB4-4565-9EE7-C9B89718873B'
@ID_Inventario uniqueidentifier
as
begin
	select d.ID, 
    d.ID_Inventario, 
    d.NumeroActivo, 
    d.Descripcion, 
    d.EPC, 
    d.Estado, 
    d.Excluido, 
    t.Nombre from 
    Detalle_Inventario d
    INNER JOIN (SELECT ID, Nombre FROM tipoObservaciones) t ON t.ID = d.Observaciones
	where

	ID_Inventario = @ID_Inventario 
    ORDER BY d.Estado
end

--select * from Detalle_Inventario
GO
/****** Object:  StoredProcedure [dbo].[ListarInventarios]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarInventarios]
@IDToma uniqueidentifier
as
begin
select * from Inventario where IDToma= @IDToma order by Fecha
end



GO
/****** Object:  StoredProcedure [dbo].[ListarInventariosPorActivo]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ListarInventariosPorActivo] 
	-- Add the parameters for the stored procedure here
	@numeroActivo varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    select top 10 
           NumeroActivo, 
           DI.Descripcion, 
           EPC, 
           Estado, 
           TYO.Nombre as Observaciones, 
           CustomComentario as Comentario, 
           CONVERT(datetime, Fecha, 103) as Fecha, 
           O.name as Oficina, 
           TY.Nombre as TipoInventario
    from Detalle_Inventario DI
    INNER JOIN (SELECT ID, Fecha, IDToma FROM Inventario where Marca = 1) I ON I.ID = DI.ID_Inventario
    INNER JOIN (SELECT ID, Oficina, ID_TipoInventario FROM TomasdelInventario) TI ON I.IDToma = TI.ID
    INNER JOIN (SELECT ID, Nombre from TiposInventario) TY ON TY.ID = TI.ID_TipoInventario
    INNER JOIN (SELECT ID, Nombre from tipoObservaciones) TYO ON TYO.ID = DI.Observaciones
    INNER JOIN (SELECT officeSysId, name FROM officeses) O ON O.officeSysId = TI.Oficina
    where NumeroActivo = @numeroActivo
    Order by Fecha desc

END
GO
/****** Object:  StoredProcedure [dbo].[ListarOficinas]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarOficinas]
as
begin

	select o.officeSysId id, o.name Nombre, o.floorSysId piso, o.tagSysId Tag from 
	officeses o 
	
end

GO
/****** Object:  StoredProcedure [dbo].[ListarOficinasHH]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ListarOficinasHH]
@idEdificio uniqueidentifier
as
begin

	select o.officeSysId id, o.name Nombre, o.floorSysId piso, o.tagSysId Tag from 
	officeses o inner join floors f
	on o.floorSysId = f.floorSysId 
	where f.buildingSysId = @idEdificio
	
end



GO
/****** Object:  StoredProcedure [dbo].[listarporcriterio]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////////
create procedure [dbo].[listarporcriterio] 
@criterio varchar(450)
as
begin
if @criterio is null
begin
 set @criterio='%'
end
if @criterio = ''
begin
 set @criterio='%'
end
select * from tipoObservaciones where Nombre like '%'+@criterio+'%' order by Nombre
end



GO
/****** Object:  StoredProcedure [dbo].[listarrelaciones]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[listarrelaciones]
@idrol uniqueidentifier
as
begin
	select * from categoríasporrol where idrol = @idrol
end



GO
/****** Object:  StoredProcedure [dbo].[ListarRoles]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ListarRoles]
@ver varchar(3),
@idrol varchar(100)
as
begin
if @ver='TOD'
BEGIN
SELECT * FROM RolesUsuario WHERE convert(nvarchar(36),idRol) like '%'+@idrol+'%'
END else if @ver='BLO'
BEGIN
SELECT * FROM RolesUsuario WHERE ESTA_BLOQUEADO=1 and convert(nvarchar(36),idRol) like '%'+@idrol+'%'
END else if @ver='PER'
BEGIN
SELECT * FROM RolesUsuario WHERE ESTA_BLOQUEADO=0 and convert(nvarchar(36),idRol) like '%'+@idrol+'%'
END
end;



GO
/****** Object:  StoredProcedure [dbo].[ListarTipodeTomadeInventario]    Script Date: 30/10/2024 23:28:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
--INSERT INTO TiposInventario
--                      (ID, Nombre, Descripcion)
--VALUES     (NEWID(), N'Mensual', N'Inventario Mensual')
--INSERT INTO TiposInventario
--                      (ID, Nombre, Descripcion)
--VALUES     (NEWID(), N'Anual', N'Inventario Anual')
--INSERT INTO TiposInventario
--                      (ID, Nombre, Descripcion)
--VALUES     (NEWID(), N'Auditoria', N'Inventario por Auditoria')
--go
--//////////////////////////////////////////////////////////////
create procedure [dbo].[ListarTipodeTomadeInventario]
as
begin
	select * from TiposInventario
end



GO
/****** Object:  StoredProcedure [dbo].[ListarTipoTomaInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////////
create procedure [dbo].[ListarTipoTomaInventario]
@criterio varchar(500)
as
begin
	select * from TiposInventario
	where 
	Nombre like '%'+@criterio+'%' or
	Descripcion like '%'+@criterio+'%'	
end



GO
/****** Object:  StoredProcedure [dbo].[ListarTomasdeInventarios]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ListarTomasdeInventarios]
@FechaInicial DateTime,
@FechaFinal DateTime,
@Tipo uniqueidentifier
as
begin
if @Tipo = '00000000-0000-0000-0000-000000000000'
	begin
		select a.ID, 
			   a.fecha Fecha, 
			   u.username Usuario , 
			   'Sector: ' + O.name Oficina
		from TomasdelInventario a
        INNER JOIN users U ON a.usuario = U.userSysId
        INNER JOIN officeses O ON a.Oficina = O.officeSysId
        INNER JOIN Inventario I ON I.IDToma = A.ID
		where a.fecha >= @FechaInicial and 
			  a.fecha <= DATEADD(HOUR, 23, @FechaFinal) 
			  --and I.Marca = 1
		order by a.fecha desc

        --select * from Inventario
		
	end 
else
	begin
		select a.ID, 
			   a.fecha Fecha, 
			   u.username Usuario , 
			   'Sector: ' + O.name Oficina
		from TomasdelInventario a
        INNER JOIN users U ON a.usuario = U.userSysId
        INNER JOIN officeses O ON a.Oficina = O.officeSysId
        INNER JOIN Inventario I ON I.IDToma = A.ID

        where ID_TipoInventario = @Tipo	and 
			  a.fecha >= @FechaInicial and 
			 a.fecha <= DATEADD(HOUR, 23, @FechaFinal) 
			  

		
	end
end


GO
/****** Object:  StoredProcedure [dbo].[ListarTomasdeInventariosAprobadas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ListarTomasdeInventariosAprobadas]
@FechaInicial DateTime,
@FechaFinal DateTime,
@Tipo uniqueidentifier
as
begin
if @Tipo = '00000000-0000-0000-0000-000000000000'
 begin
  select a.ID, 
      a.fecha Fecha, 
      u.username Usuario , 
      O.name Oficina
  from TomasdelInventario a
        INNER JOIN users U ON a.usuario = U.userSysId
        INNER JOIN officeses O ON a.Oficina = O.officeSysId
        INNER JOIN (SELECT ID, IDToma, Marca from Inventario) I ON I.IDToma = a.ID
  where a.fecha >= @FechaInicial and 
     a.fecha <= DATEADD(HOUR, 23, @FechaFinal) and
              I.Marca = 1
  order by a.fecha desc
 end 
else
 begin
  select a.ID, 
      a.fecha Fecha, 
      u.username Usuario , 
      O.name Oficina
  from TomasdelInventario a
        INNER JOIN users U ON a.usuario = U.userSysId
        INNER JOIN officeses O ON a.Oficina = O.officeSysId
        INNER JOIN (SELECT ID, IDToma, Marca from Inventario) I ON I.IDToma = a.ID
        where ID_TipoInventario = @Tipo and 
     fecha >= @FechaInicial and 
     fecha <= DATEADD(HOUR, 23, @FechaFinal) and
              I.Marca = 1
  order by fecha
 end
end
GO
/****** Object:  StoredProcedure [dbo].[ListarUsuarios]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
create procedure [dbo].[ListarUsuarios]
as
begin
select userSysId id, username Nombre, password Contrasena from users
end



GO
/****** Object:  StoredProcedure [dbo].[LoadExcelFile]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LoadExcelFile]
/*(
 @error varchar(max) output
)  */
AS 
	/*DECLARE @Errores varchar(max) = ' ',
			@Error1 varchar(max) = ' ',
			@Error2 varchar(max) = ' ',
			@Error3 varchar(max) = ' ',
			@Error4 varchar(max) = ' ',
			@Error5 varchar(max) = ' ',
			@Error6 varchar(max) = ' ',
			@Error7 varchar(max) = ' '	*/
BEGIN
	
		BEGIN TRY
		
		 SET TRANSACTION ISOLATION LEVEL READ COMMITTED
		 BEGIN TRANSACTION
		 truncate table ErroresExcel
		 ----------------------------------------------------------------------
		 ------ Inserción masiva de Asset Categories
		 ----------------------------------------------------------------------*/        
       
		 --exec Sp_ObtenerCategoriasActivosExcel --@Error1  output
		 
		 --set @Errores += @Error1
		 --------------------------------------------------------------------
		 ---- Inserción masiva de Companies - Empresa
		 --------------------------------------------------------------------

		 exec Sp_ObtenerCompaniasActivosExcel --@Error2  output
		 --set @Errores += @Error2
		 --------------------------------------------------------------------
		 ---- Inserción masiva de Buildings - Sedes
		 --------------------------------------------------------------------
		 
		 exec Sp_ObtenerBuildingsActivosExcel --@Error3 output
		 --set @Errores += @Error3
		 --------------------------------------------------------------------
		 ---- Inserción masiva de Floors - Centro Funcional 1
		 --------------------------------------------------------------------
		 
		 exec Sp_ObtenerFloorsActivosExcel --@Error4 output
		 --set @Errores += @Error4
		 --------------------------------------------------------------------
		 ---- Inserción masiva de Offices - Centro Funcional 2
		 --------------------------------------------------------------------
		 
		 exec Sp_ObtenerOficinasExcel --@Error5 output
		  --set @Errores += @Error5
		 --------------------------------------------------------------------
		 ---- Inserción Y ACTUALIZACION masiva de Employees - Empleados
		 --------------------------------------------------------------------
   
		 exec Sp_ObtenerEmpleadosExcel --@Error6 output 
		 --set @Errores += @Error6
		 --------------------------------------------------------------------
		 ---- Inserción Y ACTUALIZACION masiva de Assets - Activos
		 --------------------------------------------------------------------
		 
		 exec Sp_ObtenerActivosExcel  --@Error7 output
		 --set @Errores += @Error7
		 COMMIT TRANSACTION

		END TRY
		BEGIN CATCH
					SELECT ERROR_MESSAGE()+ '-' + 
	                       CAST(ERROR_LINE() as nvarchar(10)) + '-' +
	                       ERROR_PROCEDURE() + '-XACT-' + XACT_STATE()  AS '-RESULTADO'
					
					if XACT_STATE() = 1 and @@TRANCOUNT > 0
					Begin
						Rollback
						select @@Error * -1
	     			End
		END CATCH
		select Error as Errores from ErroresExcel
		--set @error = @Errores
	END
	
	--NOILYN:
	--Modificado línea 32 = comentado linea que inserta nuevas categorias de activos.
	--Ya no se insertan de acuerdo al excel, sino de Procomer
GO
/****** Object:  StoredProcedure [dbo].[MarcarInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
create procedure [dbo].[MarcarInventario] 
@Toma uniqueidentifier,
@inventario uniqueidentifier
as
begin
 
 update Inventario set marca = 0 
 where IDToma=@Toma
 
 update Inventario set marca = 1 
 where IDToma=@Toma and ID=@inventario
 
end



GO
/****** Object:  StoredProcedure [dbo].[MoveAssetstotable]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--delete from dbo.assets
--[MoveAssetstotable] '3A8E10C2-8FB5-4309-9752-AE2A3099371C'
CREATE  procedure  [dbo].[MoveAssetstotable]
@user UNIQUEIDENTIFIER
as

delete from BitacoraMigracion


--select * from BitacoraMigracion

declare @FACO varchar(15), --1.Company
		@FANUMB int,--* 2. Asset Item Number
		@FAAPID varchar(12),--3. Unit or Tag Number
		@FAASID varchar(25),--5. Serial Number
		@FALOC varchar(12),
		@FADL01 varchar(30),
		@FADL02 varchar(30), --Proveedores
		@FADL03 varchar(30), --Proveedores
		@FADAJ datetime,
		@FAEQST varchar(2),
		@FADEXJ datetime,
		@FAAN8 int,
		@FAACL1 varchar(200),
		@FAACL7 varchar(200),
		@FAFA6 varchar(250),
		@FARMK varchar(250),
		@FARMK2 varchar(250),
		@FAKIT varchar(250),
		@FAACL2 varchar(200),
		@EXISTENTES_ int,
		@EXISTENTES_i int,
		@COMPANYID UNIQUEIDENTIFIER,
		@rowGuid UNIQUEIDENTIFIER,
		@businessUnitSysId uniqueidentifier,
		@assetStatusSysId uniqueidentifier,
		@assetSysId uniqueidentifier,
		@providerSysId uniqueidentifier,
		--versión nueva
		--03012013
		--Se agrega la función de generar un departamento o actualizarlo de acuerdo a la unidad de negociós homologa
		@deptSysId uniqueidentifier,
		@managementSysId uniqueidentifier,
		@nombremarca varchar(200),
		@NombreOrigen varchar(200),
		@claseid uniqueidentifier,
		@subClase varchar(200),
		@existe2 int;
		--@oficina uniqueidentifier,
		--@piso uniqueidentifier,
		--@edificio uniqueidentifier;

--select distinct(FAEQST) from TempMaestroActivos
begin
DECLARE ASSETS_CURSOR CURSOR FOR
SELECT FACO, 
	   FANUMB, 
	   FAAPID, 
	   FAASID, 
	   FALOC, 
	   FADL01, 
	   FADL02,
	   FADL03, 
	   CONVERT(DATETIME,FADAJ, 103), 
	   FAEQST,
	   FAACL1,
	   FAACL7,
	   FAFA6,
	   FARMK,
	   FARMK2,
	   FAKIT,
	   FAAN8,
	   FAACL2
	   FROM TempMaestroActivos where 
									(FALOC not in ( '        7400'))
									and
									(
									FAEQST not in ('RO', 'OB', '')
									)
	   OPEN ASSETS_CURSOR
	   FETCH NEXT FROM ASSETS_CURSOR
	INTO @FACO, 
	   @FANUMB, 
	   @FAAPID, 
	   @FAASID, 
	   @FALOC, 
	   @FADL01,
	   @FADL02,
	   @FADL03, 
	   @FADAJ, 
	   @FAEQST,
	   @FAACL1,
	   @FAACL7,
	   @FAFA6,
	   @FARMK,
	   @FARMK2,
	   @FAKIT,
	   @FAAN8,
	   @FAACL2;

	  WHILE @@FETCH_STATUS = 0
				BEGIN
					PRINT 'INICIANDO REGISTRO '+CONVERT(VARCHAR, @FANUMB);				
	
				
					/*REINICIALIZAR EXISTENTES*/
					set @EXISTENTES_ = 0;
					/*VER SI EXISTE UNIDAD DE NEGOCIO*/			
					SELECT @EXISTENTES_ =  count(businessUnitSysId) from businessUnit where @FALOC like '%'+name;
				
					--/*SI EXISTIERA?*/
					IF @EXISTENTES_>0
					BEGIN
						PRINT 'UNIDAD DE NEGOCIO '+@FALOC+ 'YA EXISTÍA';
						--declare
						--@FALOC varchar(12),
						--@COMPANYID UNIQUEIDENTIFIER,
						--@businessUnitSysId uniqueidentifier,
						--@assetStatusSysId uniqueidentifier,
						--@assetSysId uniqueidentifier,
						--@deptSysId uniqueidentifier,
						--@managementSysId uniqueidentifier,
						--@FAEQST varchar(2),
						--@EXISTENTES_i int,						
						--@rowGuid UNIQUEIDENTIFIER,
						--@user UNIQUEIDENTIFIER
						
						--set @user = newid()
						--set @rowGuid = newid()
						
						
						--set @faloc= '   205410015'
						
						SELECT @businessUnitSysId = businessUnitSysId FROM businessUnit WHERE @FALOC like '%'+name
						SELECT @deptSysId = departmentSysId FROM businessUnit WHERE @FALOC like '%'+name
						SELECT @managementSysId = managementSysId FROM departments where deptSysId=@deptSysId
						SELECT @COMPANYID = companySysId from Management where managementSysId=@managementSysId
						--SELECT @oficina = officeSysId from officeses where businessUnitSysId = @businessUnitSysId
						--SELECT @Piso = floorSysId from officeses where businessUnitSysId = @businessUnitSysId
						--SELECT @edificio = buildingSysId from floors where floorSysId= @piso
						--select @businessUnitSysId
						--select @deptSysId
						--select @managementSysId
						--select @COMPANYID
						
						if @FAEQST=''
						BEGIN
							Set @FAEQST= '00'
						END
						if @FAEQST is null
						BEGIN
							Set @FAEQST= '00'
						END
						
						
						
						set @EXISTENTES_i = 0;
						/*VER SI EXISTE ESTADO*/			
						SELECT @EXISTENTES_i =  count(*)from assetStatus where name=@FAEQST;					
						/*SI EXISTIERA?*/
						IF @EXISTENTES_i>0
						BEGIN
							PRINT 'ESTADO '+@FAEQST+ 'YA EXISTÍA';
							SELECT @assetStatusSysId = assetStatusSysId FROM assetStatus WHERE name = @FAEQST
						END ELSE
						BEGIN
							PRINT 'NO EXISTE ESTADO '+@FAEQST+ ' EN LA BD';
							--EN CASO DE CAER AQUÍ SIGNIFICA QUE NO EXISTÍA LA COMPAÑIA QUE SE INGRESÓ
							--INSERTAR LA COMPAÑIA
							PRINT 'REGISTRANDOLA EN BASES DE DATOS';
							SET @assetStatusSysId = NEWID();
							SET @rowGuid = NEWID();	
							
							INSERT INTO assetStatus
							  (assetStatusSysId, name, description, entryUser, entryDate, updateUser, updateDate, rowGuid)
							VALUES     (@assetStatusSysId,@FAEQST,'Nuevo',@user,GETDATE(),@user,GETDATE(),@rowGuid);
						END 
						--select @FAEQST
						/*Manejo de sbuclase*/
						--@nombremarca varchar(200),
						--@NombreOrigen varchar(200),
						--@subClase varchar(200),
						--@existe2 int;
						select @existe2 = count(*) from catalogo where codigo = @FAACL2 and Tipo='SubClase'
						
						if @existe2 = 1 
						begin
							select @subClase = descripcion from catalogo where codigo = @FAACL2 and Tipo='SubClase'
						end else
						begin
						    select @subClase = 'Sin Clasificar'
						end
						
						select @existe2 = count(*) from catalogo where codigo = @FAACL7 and Tipo='Marca'
						
						if @existe2 = 1 
						begin
							select @nombremarca  = descripcion from catalogo where codigo = @FAACL7 and Tipo='Marca'
						end else
						begin
						    select @nombremarca  = 'Sin Clasificar'
						end
						
						select @existe2 = count(*) from catalogo where codigo = @FAFA6 and Tipo='Origen'
						
						if @existe2 = 1 
						begin
							select @NombreOrigen  = descripcion from catalogo where codigo = @FAFA6 and Tipo='Origen'
						end else
						begin
						    select @NombreOrigen  = 'Sin Clasificar'
						end
						
						select @existe2 = count(*) from assetCategory where name=@FAACL1
						
						if @existe2 = 1 
						begin
							select @claseid  =  assetCategorySysId from assetCategory where name=@FAACL1
						end else
						begin
						    select @claseid  = '00000000-0000-0000-0000-000000000000'
						end
						
						
						
						
						/*REINICIALIZAR EXISTENTES*/
						set @EXISTENTES_i = 0;
						/*VER SI EXISTE UNIDAD DE NEGOCIO*/			
						SELECT @EXISTENTES_i =  count(*)from assets where assetItemNumber = @FANUMB;											
						/*SI EXISTIERA?*/
						
						IF @EXISTENTES_i>0
						BEGIN
							PRINT 'El ACTIVO '+@FADL01+ ' EXISTE EN LA BD, SE HARÁ UN UPDATE';
						/*	UPDATE    assets
                            SET  companySysId =@COMPANYID, businessUnitSysId =@businessUnitSysId, assetStatusSysId =@assetStatusSysId, shortDescription =@FADL01, DateAdquired =@FADAJ, expirationDate=@FADEXJ 
                            WHERE assetItemNumber = @FANUMB*/
                            --El script de arriba se retiró debido a que actializa las columnas de "Descripción corta", "Fecha de actualización" y "Fecha de expiración" cuyo caso es mejor respetar lo que se impuso en el sistema
                            UPDATE    assets
                            SET  companySysId =@COMPANYID, businessUnitSysId =@businessUnitSysId,brand=@nombremarca, assetStatusSysId =@assetStatusSysId,NUMB_APR=@FAAPID, shortDescription=@FADL01, departmentSysId=@deptSysId ,managementSysID=@managementSysId, longDescription=@FADL01+' '+@FADL02+' '+@FADL03, DateAdquired=@FADAJ, Origen=@NombreOrigen, ObservacionesAdicionales=@FARMK+' '+@FARMK2+' '+@FAKIT, assetSubcategory=@subClase, assetCategorySysId=@claseid, modelNo=@FADL02, serialNo = @FAASID
                            WHERE assetItemNumber = @FANUMB
                            
                           
						END ELSE
						BEGIN
							PRINT 'El ACTIVO '+@FADL01+ ' NO EXISTE EN LA BD, SE HARÁ UN INSERT';
							SET @assetSysId=NEWID()
							SET @rowGuid=NEWID();
							INSERT INTO assets
							(assetSubcategory, assetSysId, assetItemNumber, assetStatusSysId, companySysId, entryUser, entryDate, updateUser, updateDate, rowGuid, DateAdquired,longDescription, shortDescription,
							unidNumber,ProviderSysId, assetCategorySysId, businessUnitSysId, departmentSysId, serialNo, managementSysID, NUMB_APR, brand, Origen, ObservacionesAdicionales,  modelNo)
							VALUES  
							(@subClase, @assetSysId,@FANUMB,@assetStatusSysId,@COMPANYID,@user,GETDATE(),@user,GETDATE(),@rowGuid,@FADAJ, @FADL01+' '+@FADL02+' '+@FADL03 ,@FADL01 ,@FAAN8, 
							@ProviderSysId, @claseid, @businessUnitSysId, @deptSysId, @FAASID, @managementSysId, @FAAPID, @nombremarca, @NombreOrigen, @FARMK+' '+@FARMK2+' '+@FAKIT, @FADL02)
						END	
						END	ELSE
						BEGIN
							Print 'Haciendo bitacora'
							insert into BitacoraMigracion (AssetnNo,descripcion, DetalleError)
							values (@FANUMB, @FADL01+' '+@FADL02+' '+@FADL03, 'La Unidad de Negocios '+@FALOC+' no está Registrada')--@FANUMB--FADL01
							--CLOSE ASSETS_CURSOR;
							--DEALLOCATE ASSETS_CURSOR;--MATA EL CURSOR EN MEMORIA
							Print 'Sali'
						--	return
						END
						
						
						
						print 'Sin entro aquí toy mal'
						
						
					
			FETCH NEXT FROM ASSETS_CURSOR	
							INTO 
							@FACO, 
						   @FANUMB, 
						   @FAAPID, 
						   @FAASID, 
						   @FALOC, 
						   @FADL01,
						   @FADL02,
						   @FADL03,
						   @FADAJ, 
						   @FAEQST,
						   @FAACL1,
						   @FAACL7,
						   @FAFA6,
						   @FARMK,
						   @FARMK2,
						   @FAKIT,
						   @FAAN8,
						   @FAACL2;				
				END--FIN DEL BEGIN QUE ESTÁ DESPUES DEL WHILE
				CLOSE ASSETS_CURSOR;
DEALLOCATE ASSETS_CURSOR;--MATA EL CURSOR EN MEMORIA
end;

GO
/****** Object:  StoredProcedure [dbo].[ObtenerAssetLog]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ObtenerAssetLog]
@criterio varchar(200)
as
begin
	SELECT 
	   a.assetSysId
	  ,a.Barcode
	  ,a.shortDescription
      ,t.tagId as tagID
      ,o.name  as Office    
	FROM assets a
	inner join tagRegistry t on t.tagSysId = a.tagSysId
	inner join officeses o on o.officeSysId = a.officeSysId
	where a.shortDescription like '%'+@criterio+'%' or a.Barcode like '%'+@criterio+'%'
end

GO
/****** Object:  StoredProcedure [dbo].[ObtenerAssetLogByCategory]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ObtenerAssetLogByCategory]
@assetCategorySysId uniqueidentifier
as
begin
	SELECT 
	   a.assetSysId
	  ,a.Barcode as Barcode
	  ,a.shortDescription as shortDescription
      ,t.tagId as tagID
      ,o.name  as Office    
	FROM assets a
	inner join tagRegistry t on t.tagSysId = a.tagSysId
	inner join officeses o on o.officeSysId = a.officeSysId
	where a.assetCategorySysId = @assetCategorySysId
end



GO
/****** Object:  StoredProcedure [dbo].[ObtenerAssetLogByDateRank]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ObtenerAssetLogByDateRank]
@assetSysId uniqueidentifier,
@FInicial Date,
@FFinal Date
as
begin
	 SELECT assetLogUpdateSysId
      ,assetSysId
      ,tagId
      ,office
      ,floor
      ,building
      ,company
      ,brand
      ,modelNo
      ,serialNo
      ,Barcode
      ,userUpdate
      ,assetItemNumber
      ,longDescription
      ,shortDescription
      ,updateDate
	FROM assetLogUpdates 
	where assetSysId = @assetSysId and updateDate  >= @FInicial
	and updateDate <= dateadd(day, 1, @FFinal);
end

--Exec ObtenerAssetLogByDateRank '912DA73E-B068-41D4-94B9-07D8A65496CD', '01-04-2020', '04-04-2020'
GO
/****** Object:  StoredProcedure [dbo].[Obtenerbitacoras]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Obtenerbitacoras]
as
begin
select count(*) from BitacoraMigracion
end



GO
/****** Object:  StoredProcedure [dbo].[obtenernombreporid]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[obtenernombreporid]
@idrol uniqueidentifier
as
begin
select Nombre from RolesUsuario where idRol= @idrol
end



GO
/****** Object:  StoredProcedure [dbo].[ObtenerPlaca]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ObtenerPlaca]
	 @EPC varchar(255) 
AS
BEGIN
	if not exists(select* from TagEPC where EPC = @EPC)
	begin 
		select '' as Placa
	end 
	else
	begin 
		select NumeroTag from TagEPC where EPC = @EPC
	end 
END
GO
/****** Object:  StoredProcedure [dbo].[ObtnerActivosAlerta]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ObtnerActivosAlerta]
	@Top int,
	@Index int,
	@IdAlerta int
AS
BEGIN
	DECLARE @fechaLectura DateTime
	SET NOCOUNT ON;
		SET @fechaLectura = GETDATE()--( Select TOP(@Top) fnc_ObtenerUltimaFechaLectura(IdActivo) from AlertasActivo Where IdAlertasActivo > @Index)
		-- Declare the return variable here
    Declare @assetSysId uniqueidentifier =(Select TOP(@Top) IdActivo from AlertasActivo Where IdAlertasActivo > @Index)
	DECLARE @FechaUltimaLectura DateTime
	DECLARE @FechaInventario DateTime
	Declare @FechaAntenas DateTime
	Declare @FechaCreacion DateTime = (Select entryDate from assets where assetSysId = @assetSysId)

	---------------------------------------------------------------------------------------------------------------------------------
	SELECT  @FechaAntenas= max(ISNULL(tm.dateModified, @FechaCreacion)),  @FechaInventario = max(ISNULL(tf.DateRead, @FechaCreacion))
	from assets a
	inner join AssetsTraceMovements tm on tm.assetsSysId = a.assetSysId
	inner join tagRegistry tr on a.tagSysId = tr.tagSysId
	Left join TomaFisicaDetalle tf on tf.EPC = tr.tagID
	where a.assetSysId= @assetSysId

	IF(@FechaAntenas > @FechaInventario)	
	set @FechaUltimaLectura = @FechaAntenas
	ELSE
	set @FechaUltimaLectura = @FechaInventario

----------------------------------------------------------------------------------------------------------------
			Select TOP(@Top) aa.IdAlertasActivo, aa.IdActivo as assetSysId
			,a.Barcode as Barcode
			,a.shortDescription as Description
			,aa.IdAlertasActivo as assetAlertSysId
			,aa.IdTipoAlerta as alertTypeSysId
			,@FechaUltimaLectura as Fecha
		from AlertasActivo aa 
		inner join assets a on a.assetSysId = aa.IdActivo
		Where aa.IdAlertasActivo > @Index and aa.IdTipoAlerta = @IdAlerta
		
END
GO
/****** Object:  StoredProcedure [dbo].[RegistrarDetalleInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
CREATE procedure [dbo].[RegistrarDetalleInventario]
@ID uniqueidentifier,
@ID_Inventario uniqueidentifier,
@NumeroActivo nvarchar(100),
@Descripcion nvarchar(100),
@EPC nvarchar(100),
@Estado nvarchar(100),
@Excluido bit
as
begin
INSERT INTO Detalle_Inventario
                      (ID, ID_Inventario, NumeroActivo, Descripcion, EPC, Estado, Excluido)
VALUES     (@ID, @ID_Inventario, @NumeroActivo, @Descripcion, @EPC, @Estado,case when @Excluido= 1 then 'SI' else 'NO' end)
end



GO
/****** Object:  StoredProcedure [dbo].[RegistrarInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Modifico el SP para que soporte la columna que indica si la toma fue hecha por RFID o por CODEBAR
CREATE procedure [dbo].[RegistrarInventario]
@ID uniqueidentifier,
@Num int,
@Leidos int,
@Total int,
@Ok int,
@Faltantes int,
@Sobrantes int,
@Fecha DateTime,
@IDToma uniqueidentifier,
@Metodo nvarchar(50)
as
begin

INSERT INTO Inventario
                      (ID, Num, Leidos, Total, Ok, Faltantes, Sobrantes, Fecha, IDToma, Metodo)
VALUES     (@ID, @Num, @Leidos, @Total, @Ok, @Faltantes, @Sobrantes, @Fecha, @IDToma, @Metodo)
end

GO
/****** Object:  StoredProcedure [dbo].[registrarObservacion]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////////
create procedure [dbo].[registrarObservacion]
@ID uniqueidentifier,
@Nombre nVarchar(2500) 
as
begin
	insert into tipoObservaciones (ID, Nombre) values (@ID, @Nombre)
end



GO
/****** Object:  StoredProcedure [dbo].[RegistrarPreActivo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[RegistrarPreActivo]

@DescCorta varchar(256),
@EpcActivo varchar(256),
@IdEncargado uniqueidentifier,
@IdEstado  uniqueidentifier,
@Modelo varchar(256),
@Serie varchar(256),
@IdUbicacion uniqueidentifier,
@Metodo nvarchar(50),
@Marca varchar(100)
As
Begin
Declare
@officeSysIdTemp uniqueidentifier

	If not exists(select tempAssetsSysId from tempAssets where EPC =  @EpcActivo)
		Begin
		Begin Try

			INSERT INTO [tempAssets]
				([EPC]
				,[officeSysId]
				,[descCorta]
				,[serie]
				,[modelo]
				,[assetStatusSysId]
				,[employeeRelated]
				,[dateRegistro]
				,[Metodo]
				,Marca
				)
			VALUES
				(@EpcActivo,
				@IdUbicacion,
				@DescCorta,
				@Serie,
				@Modelo,
				@IdEstado,
				@IdEncargado,
				GETDATE(),
				@Metodo,
				@Marca)
				
			Select 'Listo';
			
		End Try
		Begin Catch
			Select 'Error';
		End Catch
	end
	Else
	begin
		Select 'Existe';
	end
End

GO
/****** Object:  StoredProcedure [dbo].[registrartag]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[registrartag]
@tagsysId uniqueidentifier,
@tagID varchar(100),
@tagTypeSysId uniqueidentifier,
@isAssigned bit,
@discontinued bit,
@entryUser uniqueidentifier = null,
@entryDate datetime = null,
@updateUser uniqueidentifier = null,
@updateDate datetime = null,
@rowGuid uniqueidentifier = null,
@reasignar float
as
begin
declare @exist integer
select @exist= count(*) from tagRegistry where tagID= @tagID

if @exist>0
begin
	if @reasignar=1
	begin
		update tagRegistry set tagTypeSysId= @tagTypeSysId where tagID= @tagID and isAssigned=0
	end
end
else
begin 
	INSERT INTO tagRegistry
                      (tagSysId, tagID, tagTypeSysId, isAssigned, discontinued, entryUser, entryDate, updateUser, updateDate, rowGuid)
VALUES     (@tagSysId, @tagID, @tagTypeSysId, @isAssigned, @discontinued, @entryUser, @entryDate, @updateUser, @updateDate, @rowGuid)
end



end

GO
/****** Object:  StoredProcedure [dbo].[RegistrarTipoTomaInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
--delete from TomasdelInventario
--delete from inventario
--delete from Detalle_Inventario

--select * from TomasdelInventario
--select * from inventario
--select * from Detalle_Inventario
--//////////////////////////////////////////////////////////////
create procedure [dbo].[RegistrarTipoTomaInventario]
@ID uniqueidentifier,
@Nombre nvarchar(100),
@Descripcion nvarchar(500)
as
begin
	insert into TiposInventario
	(ID, Nombre, Descripcion)
	values
	(@ID, @Nombre, @Descripcion)
end



GO
/****** Object:  StoredProcedure [dbo].[Registrartomadeinventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////
--PROCEDIMIENTOS DE INSERT
--//////////////////////////////////////////////////////////////
CREATE procedure [dbo].[Registrartomadeinventario]
@ID uniqueidentifier,
@fecha datetime,
@usuario uniqueidentifier,
@Oficina uniqueidentifier,
@ID_TipoInventario uniqueidentifier
as
begin
	INSERT INTO TomasdelInventario
                      (ID, fecha, usuario, Oficina, ID_TipoInventario)
VALUES     (@ID, GETDATE(), @usuario, @Oficina, @ID_TipoInventario)
end


GO
/****** Object:  StoredProcedure [dbo].[reiniciardb]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[reiniciardb]
as
begin
delete from Accesorio
delete from assets
delete from assetCategory where assetCategory.name not like 'Sin Clasificar'
delete from departments
delete from employees
delete from businessUnit
delete from officeses
delete from floors
delete from buildings
delete from companies
delete from permissions
end



GO
/****** Object:  StoredProcedure [dbo].[ReleaseTagID]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 22-jun-2012
-- Description:	ReleaseTagID
-- =============================================
CREATE PROCEDURE [dbo].[ReleaseTagID]
	-- Add the parameters for the stored procedure here
	 @tagSysId uniqueidentifier 
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE tagRegistry
		SET isAssigned = 0
	 WHERE tagSysId = @tagSysId
END



GO
/****** Object:  StoredProcedure [dbo].[ReporteTomasDeInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--//////////////////////////////////////////////////////////////////
create procedure [dbo].[ReporteTomasDeInventario]
as
begin
SELECT     Detalle_Inventario.Descripcion, Detalle_Inventario.NumeroActivo, Detalle_Inventario.Estado, Detalle_Inventario.Excluido, Inventario.Num, Inventario.Leidos, Inventario.Total, Inventario.Ok, 
                      Inventario.Faltantes, Inventario.Sobrantes, TomasdelInventario.fecha, users.username, officeses.name + '/' + officeses.description AS Oficina
FROM         TiposInventario INNER JOIN
                      TomasdelInventario ON TiposInventario.ID = TomasdelInventario.ID_TipoInventario INNER JOIN
                      Inventario ON TomasdelInventario.ID = Inventario.IDToma INNER JOIN
                      Detalle_Inventario ON Inventario.ID = Detalle_Inventario.ID_Inventario INNER JOIN
                      users ON TomasdelInventario.usuario = users.userSysId INNER JOIN
                      officeses ON TomasdelInventario.Oficina = officeses.officeSysId
end



GO
/****** Object:  StoredProcedure [dbo].[ResetUserPassword]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 26-jul-2012
-- Description:	ResetUserPassword
-- =============================================
CREATE PROCEDURE [dbo].[ResetUserPassword]
	-- Add the parameters for the stored procedure here
	 @userSysId uniqueidentifier
	,@password varchar(100)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE users
	SET [password] = @password
	WHERE userSysId = @userSysId
	 
	 
END



GO
/****** Object:  StoredProcedure [dbo].[ResgistrarRol]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ResgistrarRol]
@IdRol uniqueidentifier,
@Nombre varchar(250),
@Descripcion varchar(2500),
@ESTA_BLOQUEADO bit
as
begin
INSERT INTO RolesUsuario
                      (idRol, Nombre, descripcion, ESTA_BLOQUEADO)
VALUES     (@idRol, @Nombre, @descripcion, @ESTA_BLOQUEADO)
end;



GO
/****** Object:  StoredProcedure [dbo].[SetInventoryStatus]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 17-jul-2012
-- Description:	SetInventoryStatus
-- =============================================
create PROCEDURE [dbo].[SetInventoryStatus]
	-- Add the parameters for the stored procedure here
      @status int
	 ,@inventorySysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE inventory
	SET [status] = @status
	WHERE inventorySysId = @inventorySysId;
END



GO
/****** Object:  StoredProcedure [dbo].[SetLastActivityDate]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	SetLastActivityDate
-- =============================================
Create PROCEDURE [dbo].[SetLastActivityDate]
	-- Add the parameters for the stored procedure here			
            @username varchar(255) 
           ,@applicationName varchar(255)            
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- Insert statements for procedure here
	  UPDATE [users]
	  SET [lastActivityDate] = GETDATE()      
	  WHERE  [username] = @username AND
          [applicationName]  = @applicationName
    
END



GO
/****** Object:  StoredProcedure [dbo].[SetLastActivityDateBySysId]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	SetLastActivityDate
-- =============================================
Create PROCEDURE [dbo].[SetLastActivityDateBySysId]
	-- Add the parameters for the stored procedure here			
            @userSysId uniqueidentifier
           
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- Insert statements for procedure here
	  UPDATE [users]
	  SET [lastActivityDate] = GETDATE()      
	  WHERE  [userSysId] = @userSysId 
    
END



GO
/****** Object:  StoredProcedure [dbo].[SetLastLoginDate]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	SetLastLoginDate
-- =============================================
CREATE PROCEDURE [dbo].[SetLastLoginDate]
	-- Add the parameters for the stored procedure here			
            @username varchar(255) 
           ,@applicationName varchar(255) 
    
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	  UPDATE [users]
	  SET [lastLoginDate] = GETDATE()      
	  WHERE  [username] = @username AND
          [applicationName]  = @applicationName
      
	 
END



GO
/****** Object:  StoredProcedure [dbo].[SP_]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_]
AS
BEGIN
	SELECT TOP 1 
		 A.assetSysId		AS IdActivo
		,A.shortDescription	AS NombreActivo
		,E.employeeSysId	AS IdEmpleado		
		,'============================'
		,*
	FROM
		[employees] E
		
		INNER JOIN [assets] A
		ON E.employeeSysId = A.employeeRelated
		 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Actualizar_Activos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Actualizar_Activos]
	@AssetsUpdate dbo.Actualizar_Activo READONLY
AS 
BEGIN

	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRANSACTION

	--declare @tagID varchar(100)
	--DECLARE cursor_Assets CURSOR FOR
	--SELECT tagsysId, Barcode
	--FROM @AssetsUpdate
	--OPEN cursor_Assets 
	--FETCH NEXT FROM cursor_Assets INTO
	--@tagID
	--WHILE @@FETCH_STATUS = 0 
	--BEGIN 
		
	--	exec IngresarTag @tagID			
		
	--	FETCH NEXT FROM cursor_Assets INTO
	--		@tagID
	--End
	--CLOSE cursor_Assets;  
	--DEALLOCATE cursor_Assets;

	
	MERGE INTO assets A USING (SELECT 
	AU.Alias,
	AU.longDescription,
	---r.tagSysId,
	isnull((select top 1 tagSysId from tagRegistry where tagID= AU.tagSysId),'00000000-0000-0000-0000-000000000000') as tagSysId,
	AU.assetSysId,
	AU.officeSysId,
	AU.floorSysId,
	AU.buildingSysId,
	AU.companySysId,
	AU.brand,
	AU.modelNo,
	AU.serialNo,
	AU.Barcode,
	AU.updateUser,
	AU.parentAssetSysId,
	AU.assetStatusSysId,
	AU.employeeRelated
	FROM @AssetsUpdate AU )AIU 
	 ON (A.assetSysId = AIU.assetSysId)
	WHEN MATCHED THEN
		UPDATE 		
			set 
			Alias = AIU.Alias, 
			shortDescription = AIU.longDescription,  
		    longDescription = AIU.longDescription,  
			tagSysId = AIU.tagSysId, 
			officeSysId = AIU.officeSysId, 
			floorSysId = AIU.floorSysId, 
			buildingSysId = AIU.buildingSysId, 
			companySysId = AIU.companySysId, 
			brand = AIU.brand, 
			modelNo = AIU.modelNo,
			serialNo = AIU.serialNo,
			Barcode = AIU.Barcode,
			updateUser = AIU.updateUser,
			updateDate = GETDATE(),
			parentAssetSyId = AIU.parentAssetSysId,
			assetStatusSysId = AIU.assetStatusSysId,
			employeeRelated = AIU.employeeRelated;

			
	COMMIT TRANSACTION			 
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_Actualizar_LoteTags]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--si funciona fue creado por Byron sino la bronca es suya

CREATE PROCEDURE [dbo].[Sp_Actualizar_LoteTags]
	@LoteTag [dbo].[LoteEPCTAGTemp] READONLY
AS 
BEGIN
	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRANSACTION
	
	MERGE INTO loteEPCTag LET USING (SELECT 
	LETT._estagrabado,
	LETT._estaAsociado,
	LETT._estaImpreso,
	LETT._numerotag
	FROM @LoteTag LETT ) LETU on (LET.numerotag = LETU._numerotag)
	WHEN MATCHED THEN
		UPDATE 		
			set 
			EstaGrabado = case when LETU._estaGrabado = '0'  then EstaGrabado  else LETU._estaGrabado  end, 
			EstaAsociado =case when LETU._estaAsociado = '0'  then EstaAsociado  else LETU._estaAsociado  end,  
		    EstaImpreso = case when LETU._estaImpreso = '0'  then EstaImpreso  else LETU._estaImpreso  end ;
			
	COMMIT TRANSACTION			 
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Actualizar_Tags_Clasificados]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Actualizar_Tags_Clasificados]
	@tagsClasificados dbo.tagsClasificados READONLY
AS 
BEGIN
	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRANSACTION
	
	MERGE INTO tagRegistry R USING (SELECT 
	TU.tagSysId,
	t.tagTypeSysId,
	TU.tagID
	FROM @tagsClasificados TU INNER JOIN (SELECT tagTypeSysId FROM tagTypes) t ON TU.tagTypeSysId = t.tagTypeSysId ) AIU  ON 
	(R.tagSysId = AIU.tagSysId)
	WHEN MATCHED THEN
		UPDATE 		
			set 			 
			tagSysId = AIU.tagSysId, 
			tagID = AIU.tagID, 
			tagTypeSysId = AIU.tagTypeSysId, 			
			updateDate = GETDATE(); 

	COMMIT TRANSACTION			 
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarEstadoReader]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_ActualizarEstadoReader]	
(
@ReaderEs TypeReaderEstado readonly
) 
AS
UPDATE RED
SET

EstadoReader = ReaEst.EstadoReader,
EstadoAntena = ReaEst.EstadoAntena,
HoraUltimoRegistro = GETDATE()

FROM @ReaderEs AS ReaEst
INNER JOIN ReaderEstado AS RED 
ON ReaEst.Ip = RED.IP 
AND ReaEst.Antena = RED.Antena
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarSector]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ActualizarSector]
	@ActualizarTag dbo.sectorActualizado READONLY
AS 
BEGIN
	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRANSACTION

	declare @tagID varchar(100)
	DECLARE cursor_Assets CURSOR FOR
	SELECT tagId
	FROM @ActualizarTag
	OPEN cursor_Assets 
	FETCH NEXT FROM cursor_Assets INTO
	@tagID
	WHILE @@FETCH_STATUS = 0 
	BEGIN 
		exec IngresarTagSector @tagID
		FETCH NEXT FROM cursor_Assets INTO
		@tagID
	End
	CLOSE cursor_Assets;  
	DEALLOCATE cursor_Assets;
	
	MERGE INTO officeses A USING (SELECT 
	AU.officeSysId,
	AU.oficinaNombre,
	r.tagSysId	
	FROM @ActualizarTag AU INNER JOIN (SELECT tagSysId, tagID FROM tagRegistry) r ON AU.tagId = r.tagID ) AIU  ON 
	(A.officeSysId = AIU.officeSysId)
	WHEN MATCHED THEN
		UPDATE 		
			set 
			tagSysId = AIU.tagSysId, 
			officeSysId = AIU.officeSysId, 
			name = AIU.oficinaNombre, 
			updateDate = GETDATE(); 

	COMMIT TRANSACTION			 
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_AjustarDetalleInventarioAOficina]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_AjustarDetalleInventarioAOficina]
@PlacaActivo VARCHAR(200), --100239
@IDactivo UNIQUEIDENTIFIER, --5bda2283-4cde-46be-9600-ac00ff22f010
@IDToma UNIQUEIDENTIFIER --615b3dc4-1665-4f3f-ad7e-c2ea985171c2
,@Estado VARCHAR(200)
AS
BEGIN
	DECLARE @ID_Inventario UNIQUEIDENTIFIER
	DECLARE @ID_Oficina UNIQUEIDENTIFIER
	DECLARE @ID_Floor UNIQUEIDENTIFIER
	DECLARE @ID_Building UNIQUEIDENTIFIER
	DECLARE @ID_Company UNIQUEIDENTIFIER
	DECLARE @Ajustado SMALLINT
	
	SET @ID_Inventario = (SELECT ID 
							FROM Inventario 
							--WHERE IDToma = '4994E4EF-799B-4D63-A15E-54575B2B4EE7')
							WHERE IDToma = @IDToma)
	
	SET @ID_Oficina = (SELECT Oficina 
							FROM TomasdelInventario 
							--WHERE ID = '4994E4EF-799B-4D63-A15E-54575B2B4EE7')
							WHERE ID = @IDToma)
	SET @ID_Floor = (SELECT floorSysId 
							FROM officeses
							WHERE officeSysId = @ID_Oficina)
	SET @ID_Building = (SELECT buildingSysId 
							FROM officeses
							WHERE officeSysId = @ID_Oficina)
	SET @ID_Company = (SELECT companySysId 
							FROM officeses
							WHERE officeSysId = @ID_Oficina)
							
	SET @Ajustado = 1
	--SELECT * FROM assets
	--WHERE assetSysId = '8cc57b70-deac-46a2-a5e2-00406ffd90d7' 					
	UPDATE assets
	SET officeSysId = @ID_Oficina,
		floorSysId = @ID_Floor,
		buildingSysId = @ID_Building,
		companySysId = @ID_Company
	WHERE Placa = @PlacaActivo
	
	UPDATE Detalle_Inventario
	SET Ajustado = @Ajustado
	WHERE ID = @IDActivo
	
	--IF @Estado = 'Faltante'
	--	BEGIN
	--		UPDATE Detalle_Inventario
	--		SET Estado = ''
	--		WHERE ID = @IDActivo
	--	END
	
END

--[Sp_AjustarDetalleInventarioAOficina] 'F32A76B2-ADF0-44D4-B1B1-DC10EA843336', '4994E4EF-799B-4D63-A15E-54575B2B4EE7'

--select top 10 * from officeses
GO
/****** Object:  StoredProcedure [dbo].[SP_AsociacionTagsMasivo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AsociacionTagsMasivo]
AS
BEGIN
	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRANSACTION
	SET NOCOUNT ON;

			DECLARE @NumeroTag varchar(100)
			DECLARE @Epc varchar(100)
			Declare @Lote varchar(100)
			DECLARE @PLACA VARCHAR (100)
			DECLARE @CONSECUTIVO VARCHAR(100)

			DECLARE Cursor_AsociacionTags CURSOR FOR 
			SELECT a.Epc,
				   a.Lote,
				   a.NumeroTag,
				   a.Placa,
				   a.Consecutivo
			FROM LoteEPCTAG a
			WHERE a.CategoriaTag NOT IN ('Ubicacion','Persona') AND a.EstaAsociado = 0
			OPEN Cursor_AsociacionTags
			FETCH NEXT FROM Cursor_AsociacionTags INTO
			@Epc,
			@Lote,
			@NumeroTag,
			@PLACA,
			@CONSECUTIVO
			WHILE @@FETCH_STATUS = 0
			BEGIN		
				IF EXISTS (SELECT assetSysId FROM assets WHERE Barcode = @CONSECUTIVO)
					BEGIN
					IF NOT EXISTS(SELECT tagSysId FROM tagRegistry WHERE tagID = @Epc)
						BEGIN
						Exec SP_IngresarTag @Epc
							IF EXISTS(SELECT tagSysId FROM tagRegistry WHERE tagID = @Epc)
							BEGIN
								DECLARE @TagSysId Uniqueidentifier = (SELECT tagSysId FROM tagRegistry WHERE tagID = @Epc)
								Update assets set tagSysId =  @TagSysId Where Barcode = @CONSECUTIVO
								Update LoteEPCTAG set EstaAsociado = 1 
								where Consecutivo = @CONSECUTIVO 
								and Lote = @Lote 
								and EPC = @Epc
							END
						END
				END	
			
				FETCH NEXT FROM Cursor_AsociacionTags INTO
				@Epc,
				@Lote,
				@NumeroTag,
				@PLACA,
				@CONSECUTIVO
			END
			CLOSE Cursor_AsociacionTags
			DEALLOCATE Cursor_AsociacionTags;
	
	COMMIT TRANSACTION			 
    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()  AS 'RESULTADO'
					
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Autorizar_Activo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_Autorizar_Activo](
@Epc varchar(50)
)
AS
EXEC [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].Sp_Autorizar_Activo @Epc 
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckEPCPermission]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CheckEPCPermission]
    @EPC varchar(250)
AS 
BEGIN

	SELECT ID, EPC, FechaHora, EPCPadre, IP, TipoTag, Encontrado, Procesado
	FROM tblLecturasEPCReader
	WHERE Encontrado = 1 and Procesado = 0 and EPC = @EPC and EPCPadre != ''
    --DECLARE @EPCBuscar TABLE (ID int,
    --                          EPCPadre varchar(200), 
    --                          FechaHora DATETIME)
    --INSERT @EPCBuscar(ID,
    --                  EPCPadre, 
    --                  FechaHora)
    --SELECT ID = TER.ID,
    --       EPCPadre = TER.EPCPadre, 
    --       FechaHora = TER.FechaHora
    --FROM [tblLecturasEPCReader] TER
    --WHERE TipoTag = 'Activo' AND ABS( DATEDIFF(second, GETDATE(), TER.FechaHora) ) <= 3 AND Encontrado = 0

    --DECLARE @EPCPersona TABLE (ID int,
    --                           EPCPadre varchar(200), 
    --                           FechaHora DATETIME)
    --INSERT @EPCPersona(ID,
    --                   EPCPadre, 
    --                   FechaHora)
    --SELECT ID = TER.ID,
    --       EPCPadre = TER.EPCPadre, 
    --       FechaHora = TER.FechaHora
    ----select TER.ID, TER.EPC, TER.EPCPadre, TER.FechaHora, TER.IP, TER.TipoTag
    --from [tblLecturasEPCReader] TER
    ----INNER JOIN [tblLecturasEPCReader] ILER ON ILER.EPCPadre = TER.EPC 
    ----WHERE TER.FechaHora <= CAST(@FechaHora as varchar(100))
    --WHERE TER.EPC IN (SELECT EPCPadre FROM @EPCBuscar) AND ABS( DATEDIFF(second, GETDATE(), TER.FechaHora) ) <= 3 AND Encontrado = 0

    --UPDATE [tblLecturasEPCReader]
    --SET [tblLecturasEPCReader].Encontrado = 1
    --FROM @EPCBuscar EB
    --WHERE [tblLecturasEPCReader].ID = EB.ID

    --UPDATE [tblLecturasEPCReader]
    --SET [tblLecturasEPCReader].Encontrado = 1
    --FROM @EPCPersona EB
    --WHERE [tblLecturasEPCReader].ID = EB.ID

    --SELECT * 
    --FROM @EPCPersona
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CleanAssetSyncOut]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CleanAssetSyncOut]
AS
BEGIN
    DELETE FROM asignarActivoAccesoSync
    WHERE Syncronized = 'Y'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CleanLecturasEPCReader]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CleanLecturasEPCReader]
AS
BEGIN
    DELETE FROM tblLecturasEPCReader
    WHERE ABS( DATEDIFF(SECOND,GETDATE(), FechaHora) ) >= 50
END

--exec SP_CleanLecturasEPCReader
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultaEPC]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ConsultaEPC] 
	-- Add the parameters for the stored procedure here
    @codigoBarras varchar(200)
AS
BEGIN
    SELECT TagEPC
    FROM tblTagsToAssign
    WHERE Barcode = @codigoBarras
End
GO
/****** Object:  StoredProcedure [dbo].[SP_Create_Permission_Asset]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Create_Permission_Asset]
	 @PAssetItemNumber	VARCHAR(100)
	,@PDateStart		DATETIME
	,@PDateEnd			DATETIME

 
	
AS
BEGIN

   
	----========================================>
	--	Inactive permissions previous of asset		   
	----========================================>
	DECLARE @PUserName VARCHAR(255)
	SET @PUserName = 'Admin'

	EXEC SP_Inactive_Permission_Previous  @PAssetItemNumber


	DECLARE
		 @VarUserSysIdCreatorFK UNIQUEIDENTIFIER		
		,@VarAssetSysIdFK		UNIQUEIDENTIFIER		

	
	--Se agrega el día completo para que el permiso esté disponible todo el último día
	SET @PDateEnd = DATEADD(HOUR, 23, @PDateEnd)
	SET @PDateEnd = DATEADD(MINUTE, 59, @PDateEnd)
	SET @PDateEnd = DATEADD(SECOND, 59, @PDateEnd)

	PRINT 'PERMISSION´S DATE: '+ CONVERT(VARCHAR, @PDateStart) + ' TO ' + CONVERT(VARCHAR, @PDateEnd)


	--========================================>
				--Get user Sysid
	--========================================>
	SELECT 
		@VarUserSysIdCreatorFK = U.userSysId 
	FROM 
		users U
	WHERE
		U.username = @PUserName

	PRINT 'USER ID'
	PRINT CONVERT(nvarchar(50), @VarUserSysIdCreatorFK)
	
	--========================================>
				--Get asset Sysid
	--========================================>
	SELECT TOP 1
		@VarAssetSysIdFK = A.assetSysId
	FROM 
		assets A
	WHERE
		a.assetItemNumber = @PAssetItemNumber

	PRINT 'ASSET ID'
	PRINT CONVERT(nvarchar(50), @VarAssetSysIdFK)

	----========================================>
	--			   Insert
	----========================================>
	--Declare @VarAssetSysIdFK AS uniqueidentifier
	--set @VarAssetSysIdFK = (Select assetSysId from assets where assetItemNumber ='SN026587')
	--Declare @VarUserSysIdCreatorFK AS uniqueidentifier
	set @VarUserSysIdCreatorFK = (Select userSysId from users where username = 'Admin')
	--Declare @PDateStart datetime
	--Declare @PDateEnd datetime
	--set @PDateStart='2019-12-23'
	--set @PDateEnd='2019-12-24'
--	DECLARE @uuid VARCHAR(50)
--SET @uuid = '3A8E10C2-8FB5-4309-9752-AE2A3099371C'

Print @VarUserSysIdCreatorFK
Print @VarAssetSysIdFK
Print @PDateStart
Print @PDateEnd
	INSERT INTO assetPermission
	(		
		 authorizationAssetPermission
		,userSysIdCreatorFK
		,assetSysIdFK
		,userSysIdFKUnactivePermission
		,dateStartPermission
		,dateEndPermission
		,isPermissionActive
		,isUpdateByUser
	)
	VALUES 
	(
		 NEWID()
		,@VarUserSysIdCreatorFK
		,@VarAssetSysIdFK
		,@VarUserSysIdCreatorFK
		,@PDateStart
		,@PDateEnd
		,1
		,Null	
	)
	PRINT 'INSERT PERMISSION'						
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateNewZone]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CreateNewZone]
    @IP varchar(250), 
    @NumeroAntena varchar(250), 
    @OfficeSysId varchar(250), 
    @NombreZona varchar(250), 
    @Semaforo bit, 
    @Acceso bit, 
    @Actualizable bit,
    @EnciendeSemaforo bit, 
    @PuertoRojo int,
    @PuertoVerde int
AS
    BEGIN

        INSERT INTO [dbo].[Zonas]
               ([IP]
               ,[NumeroAntena]
               ,[OficinaID]
               ,[NombreZona]
               ,[SEMAFORO]
               ,[ACCESO]
               ,[Actualizable]
               ,[EnciendeSemaforo]
               ,[PuertoRojo]
               ,[PuertoVerde]
               ,[PuertoGpio])
         VALUES
               (@IP
               ,@NumeroAntena
               ,@OfficeSysId
               ,@NombreZona
               ,@Semaforo
               ,@Acceso
               ,@Actualizable
               ,@EnciendeSemaforo
               ,@PuertoRojo
               ,@PuertoVerde
               ,5084)

    END
GO
/****** Object:  StoredProcedure [dbo].[SP_Edit_DeletePermisoActivo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Edit_DeletePermisoActivo]
	@numeroitem varchar(100)
AS
BEGIN
	Declare @AssetID uniqueidentifier
	Declare @PDateStart	Varchar(100)
	Declare @PDateEnd	Varchar(100)
	Declare @NumeroActivo Varchar(100)
	set @AssetID = (Select assetSysId from assets where assetItemNumber = @numeroitem)
	

	Select convert(varchar,dateStartPermission, 23)As FechaInicial, convert(varchar,dateEndPermission,23) AS FechaFinal from assetPermission 
	where assetSysIdFk = @AssetID AND isPermissionActive = '1'

	
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllAssetCategories]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetAllAssetCategories]

	
AS
BEGIN

	 SELECT [assetCategorySysId]
      ,[name]
      ,[description]	 
  FROM [assetCategory]


END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllAssetsInactive]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_GetAllAssetsInactive] --'123456' -- PLACA DE EJEMPLO
@_Criterio VARCHAR(256)
AS
BEGIN

	-------------------------------------
	--	Reporte de bajas de activos 
	--	según Procomer
	-------------------------------------
	SELECT 
			--A.[assetSysId]
   --        ,A.[assetItemNumber]
   --        ,A.[assetCategorySysId]
   --        ,A.assetStatusSysId
   --        ,A.[companySysId]
   --        ,A.[managementSysID]
   --        ,A.[departmentSysId]
   --        ,A.[businessUnitSysId]
   --        ,A.[buildingSysId]
   --        ,A.[floorSysId]
   --        ,A.[officeSysId]
   --        ,A.employeeRelated
   --        ,A.[tagSysId]
   --        ,A.[lastEmployeeRelated]
   --        ,A.[brand]
   --        ,A.[modelNo]
   --        ,A.[serialNo]
   --        ,A.[skuNo]
   --        ,A.[PartNo]
   --        ,A.[isDepreciated]
   --        ,A.[isObsolete]
   --        ,A.[color]
   --        ,A.[cost]
   --        ,A.[size]
   --        ,A.[shortDescription]
   --        ,A.[longDescription]
   --        ,A.[accessoriesIncluded]
   --        ,A.[accessoriesQuantity]
   --        ,A.[accessoryDescription1]
   --        ,A.[accessorySerial1]
   --        ,A.[accessoryModel1]
   --        ,A.[accessoryDescription2]
   --        ,A.[accessorySerial2]
   --        ,A.[accessoryModel2]
   --        ,A.[accessoryDescription3]
   --        ,A.[accessorySerial3]
   --        ,A.[accessoryModel3]
   --        ,A.[accessoryDescription4]
   --        ,A.[accessorySerial4]
   --        ,A.[accessoryModel4]
   --        ,A.[entryUser]
   --        ,A.[entryDate]
   --        ,A.[updateUser]
   --        ,A.[updateDate]
   --        ,A.[rowGuid]
   --        ,A.[BillNo]
   --        ,A.[DateAdquired]
   --        ,A.[ProviderSysId]
   --        ,A.[GarantyTerms]
   --        ,A.[expirationDate]
   --        ,A.[unidNumber]
   --        ,A.[NUMB_APR]
   --        ,A.[Alias]
   --        ,A.[Origen]
   --        ,A.[ObservacionesAdicionales]
   --        ,A.[assetSubcategory]
   --        ,A.[Barcode]
   --        ,A.[proveedor]
   --        ,A.[TipoRegistro]
   --        ,A.[Depreciado]
   --        ,A.[ValorResidual]
   --        ,A.[respaldodescrip]
   --        ,A.[Placa]
   --        ,A.[Adquisicion]
   --        ,A.[ShelfSysId]
   --        ,A.[costDollars]
   --        ,A.[paidTaxes]
   --        ,A.[duaNumber]
   --        ,A.[residualValueDollars]
   --        ,A.[ProcomerFixedAssetAccount]
   --        ,A.[TaxesFixedAssetAccount]
   --        ,A.[AccountingAccountDepreciation]
   --        ,A.[InternValueBooks]
   --        ,A.[ProcomerValueBooks]
   --        ,A.[CapitalizationDate]
   --        ,A.[FTZInvestment]
   --        ,A.[SAPNumber]
   --        ,A.[CostCenter]
   --        ,A.[AssetClass]
   --        ,A.[IdDescripcionLarga]
   --        ,A.[IdDescripcionCorta]
			A.*
			--, O.name, 
			--, C.name
	  
	FROM 
		assets			AS A
		
		--INNER JOIN assetStatus	AS ASTS
		--ON ASTS.assetStatusSysId = A.assetStatusSysId
		
		--INNER JOIN employees AS E
		--ON E.employeeSysId = A.employeeRelated
		
		--INNER JOIN officeses AS O
		--ON O.officeSysId = a.officeSysId
	   
		--INNER JOIN assetCategory AS C
		--ON C.assetCategorySysId = a.assetCategorySysId
	   
	WHERE  
		--a.officeSysId = o.officeSysId AND
		--a.assetCategorySysId = c.assetCategorySysId AND
		  (assetItemNumber			LIKE '%'+@_Criterio+'%'
			  OR Barcode			LIKE '%'+@_Criterio+'%'
			  OR SAPNumber			LIKE '%'+@_Criterio+'%'
			  OR brand				LIKE '%'+@_Criterio+'%'
			  OR modelNo			LIKE '%'+@_Criterio+'%'
			  OR serialNo			= @_Criterio 
			  OR PartNo				LIKE '%'+@_Criterio+'%'
			  OR shortDescription	LIKE '%'+@_Criterio+'%'
			  OR a.NUMB_APR			LIKE '%'+@_Criterio+'%'
			 )
			 AND
			 a.assetStatusSysId = '9B7357B8-9F61-49AE-8730-22331E93681B' --Dado de baja
			 --'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
			 
	ORDER BY A.shortDescription
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllAssetsInactiveFecha]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GetAllAssetsInactiveFecha] --'123456' -- PLACA DE EJEMPLO
@_FechaInicio Datetime,
@_FechaFin Datetime--VARCHAR(256)

AS
BEGIN

--SP_GetAllAssetsInactiveFecha  '2018-04-01','2018-06-07'

	-------------------------------------
	--	Reporte de bajas de activos 
	--	según Procomer
	-------------------------------------
	SELECT 
			A.*
	FROM 
		assets	AS A  
	WHERE  
		--a.officeSysId = o.officeSysId AND
		--a.assetCategorySysId = c.assetCategorySysId AND
		a.assetStatusSysId = '9B7357B8-9F61-49AE-8730-22331E93681B'  --Dado de baja
		--'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
		AND A.updateDate BETWEEN @_FechaInicio AND @_FechaFin
			 
	ORDER BY A.shortDescription
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllAssetsInactiveUbicacion]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GetAllAssetsInactiveUbicacion] --'1' , 'INFOCOOP', '', '', ''

--@dato varchar(256),
@company varchar(256) = '00000000-0000-0000-0000-000000000000', 
@building varchar(256) = '00000000-0000-0000-0000-000000000000', 
@floor varchar(256) = '00000000-0000-0000-0000-000000000000', 
@office varchar(256) = '00000000-0000-0000-0000-000000000000'

as

begin
    SELECT A.assetSysId, 
    --AST.name as Status, 
    --ASTC.name as Category, 
    --A.assetItemNumber, 
    --A.SAPNumber, 
    --A.Barcode, 
    --A.shortDescription, 
    --A.longDescription, 
    --A.brand, 
    --A.modelNo, 
    --A.serialNo,
    --C.name as BusinessName, 
    --B.name as Country, 
    --F.name as Building, 
    --O.name as Sector
		A.*
    FROM assets A
    INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
    INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
    left JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
    left JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
    left JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
    left JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
    WHERE C.companySysId = COALESCE(@company,'00000000-0000-0000-0000-000000000000')  and
          B.buildingSysId = COALESCE(@building, '00000000-0000-0000-0000-000000000000') and
          F.floorSysId = COALESCE (@floor, '00000000-0000-0000-0000-000000000000') and
          O.officeSysId = COALESCE(@office, '00000000-0000-0000-0000-000000000000')
		  AND A.assetStatusSysId = '9B7357B8-9F61-49AE-8730-22331E93681B' --Dado de baja
		  --'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
	end

	-- a.assetStatusSysId = 'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllPendingEPC]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetAllPendingEPC]
AS
BEGIN
	DECLARE @Temporal AS TABLE(	[ID] [int] NOT NULL,
								[EPC] [varchar](200) NOT NULL,
								[FechaHora] [datetime] NOT NULL,
								[EPCPadre] [varchar](200) NOT NULL,
								[IP] [varchar](200) NOT NULL,
								[TipoTag] [varchar](200) NOT NULL,
								[Encontrado] [bit] NOT NULL,
								[Procesado] [bit] NOT NULL)
	INSERT INTO @Temporal(ID, 
						  EPC, 
						  FechaHora, 
						  EPCPadre, 
						  IP, 
						  TipoTag, 
						  Encontrado, 
						  Procesado)
	SELECT	ID, 
			EPC, 
			FechaHora, 
			EPCPadre, 
			IP, 
			TipoTag, 
			Encontrado, 
			Procesado
	FROM tblLecturasEPCReader
	WHERE Encontrado = 0 and Procesado = 0 and EPC != ''
	and ABS( DATEDIFF(second, GETDATE(), FechaHora) ) >= 3



		
	update tblLecturasEPCReader
	set Procesado = 1
	WHERE Encontrado = 0 and Procesado = 0 and EPC != ''
	and ABS( DATEDIFF(second, GETDATE(), FechaHora) )>= 3

	SELECT	ID, 
		EPC, 
		FechaHora, 
		EPCPadre, 
		IP, 
		TipoTag, 
		Encontrado, 
		Procesado
	FROM @Temporal
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllTagForLot]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_GetAllTagForLot]
	   @Lote varchar(100)
	   as
	   begin
		select EPC,NumeroTag as 'Numero de Tag',Lote,Consecutivo,Placa,EstaGrabado as 'Está Grabado'
		,EstaAsociado as 'Está Asociado',EstaImpreso as 'Está Impreso',CategoriaTag as 'Categoria de Tag',TipoTag as 'Tipo tag'
		from LoteEPCTAG 
		where Lote = @Lote
	   end



GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllTagTypes]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetAllTagTypes]
	-- Add the parameters for the stored procedure here
	
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [tagTypeSysId]
		   ,[code]
		   ,[name]
		   ,[description]
           ,'Sin Asignar' as category
	  FROM [tagTypes]
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAssetByEpc]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetAssetByEpc]

	 @EPC VARCHAR(40) 
AS
BEGIN
	SELECT a.assetSysId AS assetSysId
	, t.tagId AS tagId
	, a.Barcode AS Barcode
	, t.tagNumber AS NumeroTag
	,a.shortDescription AS Description  
	FROM assets a
	INNER JOIN tagRegistry t on t.tagSysId = a.tagSysId
	where t.tagID = @EPC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployeedByView]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetEmployeedByView]

	@indexinicio bigint,
	@indexfinal bigint

AS
BEGIN
	SET NOCOUNT ON;

    SELECT employeeSysId, name, lastName, id, companyIdExtern
	FROM employees
	WHERE EmployeesIndex BETWEEN @indexinicio and @indexfinal

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetUsuarioCorreo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author, Byron Solano>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetUsuarioCorreo]
	
	@Email varchar(128)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT username, password 
	FROM users where email = @Email

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GS1UltimoGenerado]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GS1UltimoGenerado]

	 @ultimo int,
	 @Cate varchar(255)	
	 
AS
BEGIN
	begin Try	   
		if not exists(select* from ultimoNumeroTagGS1 where Categoria = @Cate)
		begin 
			insert into ultimoNumeroTagGS1(Categoria, UltimoGenerado)
			values(@Cate,@ultimo)	
			
		end 
		else
		begin 
			update ultimoNumeroTagGS1
			set UltimoGenerado = @ultimo
			where Categoria = @Cate
			
		end 
	End Try
	begin Catch	
		THROW  select ERROR_NUMBER(), ERROR_MESSAGE(), 1; 
	end Catch
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GuardarLoteTag]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[SP_GuardarLoteTag]
	@LoteTag dbo.LoteEPCTAGTemp READONLY,
	@CantidadGenerada int,
	@Nombre varchar(100)
AS 
SET NOCOUNT ON

	update ultimoNumeroTagGS1
	set UltimoGenerado = UltimoGenerado+@CantidadGenerada
	where Nombre = @Nombre

	INSERT INTO LoteEPCTAG(
		EPC,
		NumeroTag,
		Lote,
		Consecutivo ,
		Placa, 
		EstaGrabado,
		EstaAsociado, 
		EstaImpreso,
		CategoriaTag ,
		TipoTag 
	)
	Select
		a._epc,
		a._numeroTag,
		a._lote,
		a._consecutivo,
		a._placa,
		a._estaGrabado,
		a._estaAsociado,
		a._estaImpreso,
		a._categoriaTag,
		a._tipoTag
		
		from @LoteTag a


		select 'Exitoso' as Respuesta
GO
/****** Object:  StoredProcedure [dbo].[SP_Inactive_Permission_Previous]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Inactive_Permission_Previous]	
	@PAssetItemNumber	VARCHAR(100)
AS
BEGIN	

	DECLARE
		 @VarUserSysIdCreatorFK UNIQUEIDENTIFIER		
		,@VarAssetSysIdFK		UNIQUEIDENTIFIER	

	--========================================>
				--Get user Sysid
	--========================================>

	
	SELECT TOP 1
		@VarUserSysIdCreatorFK = U.userSysId 
	FROM 
		users U
	WHERE
		U.username = 'Admin'

	PRINT 'USER ID'
	PRINT CONVERT(nvarchar(50), @VarUserSysIdCreatorFK)
	
	--========================================>
				--Get asset Sysid
	--========================================>
	SELECT TOP 1
		@VarAssetSysIdFK = A.assetSysId
	FROM 
		assets A
	WHERE
		a.assetItemNumber = @PAssetItemNumber

	PRINT 'ASSET ID'
	PRINT CONVERT(nvarchar(50), @VarAssetSysIdFK)


	--==========================================================>
	--Uncomment to see query to Unactive 
	--==========================================================>
	--SELECT 
	--	*
	--FROM 
	--	assetPermission
	--WHERE
	--	assetSysIdFK = @VarAssetSysIdFK 
	--	AND 
	--	isPermissionActive = 1

	UPDATE assetPermission
	SET 
		 userSysIdFKUnactivePermission = @VarUserSysIdCreatorFK	
		,dateUpdate = GETDATE()
		,isPermissionActive = 0 		
	WHERE
		assetSysIdFK = @VarAssetSysIdFK 
		AND 
		isPermissionActive = 1
	PRINT 'Successfull'
END 
GO
/****** Object:  StoredProcedure [dbo].[Sp_InfoZonas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_InfoZonas]
 as
 SELECT distinct
	TZ.IP as 'IP',
	TZ.SEMAFORO AS 'SEMAFORO',
	TZ.ACCESO AS 'ACCESO' ,
	TZ.EnciendeSemaforo,
	TZ.PuertoRojo AS 'PuertoRojo',
	TZ.PuertoVerde AS 'PuertoVerde',
	TZ.PuertoGpio AS 'PuertoGPIO'
FROM [dbo].[Zonas] TZ


-- PuertoRojo 
-- PuertoVerde
GO
/****** Object:  StoredProcedure [dbo].[SP_IngresarTag]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_IngresarTag] 
@tagID varchar(100)
as
begin

	IF NOT EXISTS(
	 SELECT tagID FROM tagRegistry
	 where tagID = @tagID
	)
	Begin
		declare
		@entryUser uniqueidentifier =  '3A8E10C2-8FB5-4309-9752-AE2A3099371C',		
		@updateUser uniqueidentifier = '3A8E10C2-8FB5-4309-9752-AE2A3099371C'
		

		

		INSERT INTO tagRegistry
				(   tagSysId, 
					tagID, 
					tagTypeSysId, 
					isAssigned, 
					discontinued, entryUser, 
					entryDate, 
					updateUser, 
					updateDate, 
					rowGuid)
		VALUES     
			   (	NEWID(), 
					@tagID, 
					'AC2DB392-8E1C-476D-A95A-787FCAEE77D6', 
					'0', 
					'0', 
					@entryUser, 
					GETDATE(), 
					@updateUser,
					GETDATE(), 
					null)
	End
END
--PROCEDURE [dbo].[AsociarNumeroTagEPC]

--	 @NTag varchar(255),
--	 @EPC varchar(255)	 
--AS
--BEGIN
--	begin Try	   
--		if not exists(select * from TagEPC where NumeroTag = @NTag)
--		begin 
--			insert into TagEPC(NumeroTag,EPC,FechaHora)
--			values(@NTag,@EPC, GETDATE())	
--			exec [SP_IngresarTag] @EPC
--		end 
--		else
--		begin 
--			update TagEPC
--			set EPC = @EPC
--			where  NumeroTag = @NTag
--			exec [SP_IngresarTag] @EPC
--		end 
--	End Try
--	begin Catch	
--		THROW  select ERROR_NUMBER(), ERROR_MESSAGE(), 1; 
--	end Catch
--END


GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Permiso_Consumido]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insertar_Permiso_Consumido]
	 @PEPC						VARCHAR(100)
	,@PIsAutorizatePermission	BIT
AS
BEGIN
DECLARE 
	 @VarTagSysId			UNIQUEIDENTIFIER		
	,@VarAssetSysId			UNIQUEIDENTIFIER	
	,@VarEmployeedRelatedFK	UNIQUEIDENTIFIER	
		
	SET @VarTagSysId	= '00000000-0000-0000-0000-000000000000'	
	SET @VarAssetSysId	= '00000000-0000-0000-0000-000000000000'	
	SET @VarEmployeedRelatedFK = '00000000-0000-0000-0000-000000000000'	
	
	
	-->===================================================<
	--				1.GET TagSysId BY EPC
	-->===================================================<
	SELECT 
		@VarTagSysId = T.tagSysId 
	FROM 
		[dbo].[tagRegistry] T 
	WHERE 
		T.tagId = @PEPC
		--AND
		--T.isAssigned = 1
			
	IF (@VarTagSysId = '00000000-0000-0000-0000-000000000000')
	BEGIN
		PRINT 'No se encontró un tag asociado a dicho EPC'
	END
	ELSE--[Si se encontró el TAG]
	BEGIN				
		PRINT 'TAG Obtenido: ' + CONVERT(NVARCHAR(100), @VarTagSysId)						
		-->===================================================<
		--				2.GET ASSET BY IdTAG
		-->===================================================<
		SELECT 
			 @VarAssetSysId = A.assetSysId 
			,@VarEmployeedRelatedFK = A.employeeRelated
		FROM assets A
		
		WHERE
			A.tagSysId = @VarTagSysId


		IF (@VarAssetSysId = '00000000-0000-0000-0000-000000000000')
		BEGIN
			PRINT 'No se encontró un asset con este tag asociado'
		END
		ELSE 				
		BEGIN		
		
			PRINT 'asset Obtenido: ' + CONVERT(NVARCHAR(100), @VarAssetSysId)	
					
			INSERT INTO [dbo].[BitacoraPermisosConsumidosAsset]
			(	 [idBitacoraPermisosConsumidoAsset]
				,[assetSysIdFK]
				,[employeedRelatedFK]
				,[isAutorizatePermission]				
			)
			VALUES
			(    NEWID()
				,@VarAssetSysId
				,@VarEmployeedRelatedFK
				,@PIsAutorizatePermission					 
			)
			PRINT '!Registro correcto!'
		END
	END	

END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarActivos_Aceptados]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_InsertarActivos_Aceptados] 
	-- Add the parameters for the stored procedure here
    @ActivosConciliacion dbo.ActivosConciliacion READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO dbo.Activos_Aceptados O USING @ActivosConciliacion OT ON
            (O.FechaHoraRegistro = OT.FechaHoraRegistro)            
            WHEN NOT MATCHED THEN 
            INSERT (CodeBar, 
                    IdEdificio,
					IdPiso,
					IdOficina,
					IdCategoria,
					Descripcion,
					DescripcionLarga,
					Serial,
					FechaHoraRegistro)
            VALUES (OT.CodeBar, 
                    OT.IdEdificio,
					OT.IdPiso, 
                    OT.IdOficina,
					OT.IdCategoria, 
                    OT.Descripcion,
					OT.DescripcionLarga,
					OT.Serial, 
                    OT.FechaHoraRegistro);
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
            SELECT ERROR_MESSAGE()+ '-' + 
	                       CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	                       ERROR_PROCEDURE()  AS 'RESULTADO'
					
					if @@TRANCOUNT > 0
					Begin
						Rollback
						select @@Error * -1
	     			End
    END CATCH

End
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarActivos_Actualizados]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_InsertarActivos_Actualizados] 
	-- Add the parameters for the stored procedure here
    @ActivosConciliacion dbo.ActivosConciliacion READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO dbo.Activos_Actualizados O USING @ActivosConciliacion OT ON
            (O.FechaHoraRegistro = OT.FechaHoraRegistro)            
            WHEN NOT MATCHED THEN 
            INSERT (CodeBar, 
                    IdEdificio,
					IdPiso,
					IdOficina,
					IdCategoria,
					Descripcion,
					DescripcionLarga,
					Serial,
					FechaHoraRegistro)
            VALUES (OT.CodeBar, 
                    OT.IdEdificio,
					OT.IdPiso, 
                    OT.IdOficina,
					OT.IdCategoria, 
                    OT.Descripcion,
					OT.DescripcionLarga,
					OT.Serial, 
                    OT.FechaHoraRegistro);
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
            SELECT ERROR_MESSAGE()+ '-' + 
	                       CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	                       ERROR_PROCEDURE()  AS 'RESULTADO'
					
					if @@TRANCOUNT > 0
					Begin
						Rollback
						select @@Error * -1
	     			End
    END CATCH

End
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarActivos_Ingresados]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_InsertarActivos_Ingresados] 
	-- Add the parameters for the stored procedure here
    @ActivosConciliacion dbo.ActivosConciliacion READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SET XACT_ABORT ON;
    -- Insert statements for procedure here
    BEGIN TRY
        SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
        BEGIN TRANSACTION
            MERGE INTO dbo.Activos_Ingresados O USING @ActivosConciliacion OT ON
            (O.FechaHoraRegistro = OT.FechaHoraRegistro)            
            WHEN NOT MATCHED THEN 
            INSERT (CodeBar, 
                    IdEdificio,
					IdPiso,
					IdOficina,
					IdCategoria,
					Descripcion,
					DescripcionLarga,
					Serial,
					FechaHoraRegistro)
            VALUES (OT.CodeBar, 
                    OT.IdEdificio,
					OT.IdPiso, 
                    OT.IdOficina,
					OT.IdCategoria, 
                    OT.Descripcion,
					OT.DescripcionLarga,
					OT.Serial, 
                    OT.FechaHoraRegistro);
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
            SELECT ERROR_MESSAGE()+ '-' + 
	                       CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	                       ERROR_PROCEDURE()  AS 'RESULTADO'
					
					if @@TRANCOUNT > 0
					Begin
						Rollback
						select @@Error * -1
	     			End
    END CATCH

End
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarActivos_Toma]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_InsertarActivos_Toma] 
	-- Add the parameters for the stored procedure here
    @ActivosConciliacionAceptados dbo.ActivosConciliacion READONLY,
	@ActivosConciliacionActualizados dbo.ActivosConciliacion READONLY,
	@ActivosConciliacionIngresados dbo.ActivosConciliacion READONLY
AS
Begin 
	exec SP_InsertarActivos_Aceptados @ActivosConciliacionAceptados
	exec SP_InsertarActivos_Actualizados @ActivosConciliacionActualizados
	exec SP_InsertarActivos_Ingresados @ActivosConciliacionIngresados

End
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarTag]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_InsertarTag]
@TablaTemporal epcGS1 READONLY

AS

SET NOCOUNT ON 
BEGIN
	INSERT INTO epcTestGs1 (
							epc, 
							epcLote, 
							numeroTag,
							categoria,
							consecutivoTag
							) 
	SELECT 
			epc, 
			epcLote, 
			numeroTag,
			Categoria,
			Consecutivo
	FROM @TablaTemporal

	update epcTestGs1 set Grabado = '0' where Grabado is null
END 


GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEPCToTblTagsToAssign]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertEPCToTblTagsToAssign] 
	-- Add the parameters for the stored procedure here
	@Barcode varchar(100), 
	@EPC varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF EXISTS(
        SELECT Barcode, TagEPC
        FROM tblTagsToAssign
        WHERE Barcode = @Barcode
    )
    BEGIN
        DELETE
        FROM tblTagsToAssign
        WHERE Barcode = @Barcode 
    END
	-- si el tag ya existe entonces elimine el registro y vuelva a insertarlo 
    --tblTagsToAssign

    INSERT INTO [dbo].[tblTagsToAssign]
           ([Barcode]
           ,[TagEPC])
     VALUES
           (@Barcode
           ,'00'+@EPC)

    SELECT Barcode
    FROM tblTagsToAssign
    WHERE Barcode = @Barcode and TagEPC = '00'+@EPC

END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertLecturasBorrar]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_InsertLecturasBorrar]
@Id_Empresa VARCHAR(200),
@IP VARCHAR(200),
@ID_Antena INT,
@EPC VARCHAR(200)
AS
BEGIN
	INSERT INTO LecturasBorrar(EPC,Ip,Antena)
	VALUES(@EPC,@IP,@ID_Antena)
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ListarDetalleInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_ListarDetalleInventario]
@IDToma uniqueidentifier
AS
BEGIN
	DECLARE @ID_Inventario uniqueidentifier
	
	SET @ID_Inventario = (SELECT ID 
							FROM Inventario 
							WHERE IDToma = @IDToma)
	SELECT d.ID, 
    d.ID_Inventario, 
    d.NumeroActivo, 
    d.Descripcion, 
    d.EPC, 
    d.Estado, 
    d.Excluido, 
    t.Nombre,
    d.Ajustado FROM 
    Detalle_Inventario d
    INNER JOIN (SELECT ID, Nombre FROM tipoObservaciones) t ON t.ID = d.Observaciones
	WHERE

	ID_Inventario = @ID_Inventario 
    ORDER BY d.Estado
END

--select * from Detalle_Inventario
GO
/****** Object:  StoredProcedure [dbo].[Sp_MatchAntenaOficina]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_MatchAntenaOficina]
@Id_Empresa VARCHAR(200),
@IP VARCHAR(200),
@ID_Antena INT,
@EPC VARCHAR(200)
AS
BEGIN
	DECLARE @Oficina UNIQUEIDENTIFIER
	DECLARE @IdActivo UNIQUEIDENTIFIER
	DECLARE @EPCAssets UNIQUEIDENTIFIER


	insert into LecturasBorrar(EPC,Ip,Antena)
	values(@EPC,@IP,@ID_Antena)
	
	SET @Oficina = (SELECT OficinaID FROM Zonas --Tabla con datos de la IP y IDAntena
					WHERE NumeroAntena = @ID_Antena AND IP = @IP)
	PRINT 'Oficina ' 
	PRINT @Oficina	
	
	SET @IdActivo = (SELECT assetSysId FROM assets as a 
						INNER JOIN tagRegistry as t
						ON a.tagSysId = t.[tagSysId]
						WHERE t.tagID = @EPC 
						)
	PRINT  '@IdActivo' 	
	PRINT  @IdActivo
	
	--Datos para tracking del activo si no se realiza el update
	DECLARE @AssetStatusSysId UNIQUEIDENTIFIER 
    DECLARE @StatusDetail VARCHAR(100)
	DECLARE @EmployeeSysId UNIQUEIDENTIFIER
	SET @AssetStatusSysId = (SELECT a.assetStatusSysId FROM assets AS a WHERE a.assetSysId = @IdActivo) 
	SET @StatusDetail = (SELECT a.accessoryDescription1 FROM assets AS a WHERE a.assetSysId = @IdActivo)	
	SET @EmployeeSysId = (SELECT a.employeeRelated FROM assets AS a WHERE a.assetSysId = @IdActivo)
	
					
	DECLARE @LastofficeSysIdTracking UNIQUEIDENTIFIER
		SELECT  @LastofficeSysIdTracking = officeSysId 
		FROM AssetsTraceMovements AS at 
		WHERE at.assetsSysId = @IdActivo
	order by dateModified

	
					if(@LastofficeSysIdTracking  <> @Oficina OR @LastofficeSysIdTracking  IS NULL)
					begin 
					PRINT 'Entra al if donde  = @officeSysIdToCompare  <> @Oficina'
						DECLARE @ID_Floor UNIQUEIDENTIFIER
						DECLARE @ID_Building UNIQUEIDENTIFIER
						DECLARE @ID_Company UNIQUEIDENTIFIER
						SET @ID_Floor = (SELECT floorSysId 
										FROM officeses
										WHERE officeSysId = @Oficina)
						SET @ID_Building = (SELECT buildingSysId 
												FROM officeses
												WHERE officeSysId = @Oficina)
						SET @ID_Company = (SELECT companySysId 
												FROM officeses
												WHERE officeSysId = @Oficina)
															
								DECLARE @esActualizable BIT
								SET @esActualizable = (SELECT z.Actualizable
														FROM Zonas AS z
														WHERE z.IP = @IP AND z.NumeroAntena = @ID_Antena )

								IF(@esActualizable = 1)
								BEGIN	
									UPDATE assets
									SET officeSysId = @Oficina,
										floorSysId = @ID_Floor,
										buildingSysId = @ID_Building,
										companySysId = @ID_Company
									WHERE assetSysId = @IdActivo
								END
								
							
									INSERT INTO [dbo].[AssetsTraceMovements]
									(		assetsSysId
										   ,officeSysId
										   ,dateModified
										   ,companySysId
										   ,buildingSysId
										   ,floorSysId
										   ,employeeRelated
										   ,assetStatusSysId
										   ,statusDetail
									 )
									 VALUES
									 (	@IdActivo
										   ,@Oficina
										   ,GETDATE()
										   ,@ID_Company
										   ,@ID_Building
										   ,@ID_Floor
										   ,@EmployeeSysId
										   ,@AssetStatusSysId
										   ,@StatusDetail
									 )
									 
														
					END

    DECLARE @NombreZona varchar(250)
	SELECT @NombreZona = NombreZona 
    FROM Zonas --Crear tabla con datos de la IP y IDAntena
	WHERE OficinaID = @Oficina

    DECLARE @tagSysId varchar(250) = ''
    SELECT @tagSysId = tagSysId
    FROM tagRegistry 
    WHERE tagID = @EPC

    DECLARE @AssetNumber varchar(200) = ''
    IF @tagSysId <> ''
    BEGIN
        SELECT @AssetNumber = SAPNumber 
        FROM assets 
        where tagSysId = @tagSysId
    END

    SELECT CASE WHEN @AssetNumber = '' THEN 'N::' + @NombreZona  
                ELSE 'Y:' + @AssetNumber + ':'  + @NombreZona  
           END as NombreZona
END
GO
/****** Object:  StoredProcedure [dbo].[SP_newAsset]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_newAsset]
	@type_newAsset dbo.type_newAsset READONLY
AS 
SET NOCOUNT ON

	INSERT INTO assetNewSynchronized(
		assetSyncronizedId,
		assetId,
		numero ,
		placa ,
		longDescription, 
		companySysId ,
		buildingSysId, 
		floorSysId ,
		officeSysId ,
		encargado ,
		brand ,
		modelNo, 
		serial,
		tagId,
		Compania,
		edificio,
		Piso,
		Oficina,
		fechaSincronizacion,
		assetParentSysId
	)
	Select 
		NEWID(),
		a.assetId,
		a.numero,
		a.placa ,
		a.longDescription,
		a.companySysId ,
		a.buildingSysId ,
		a.floorSysId ,
		a.officeSysId ,
		a.encargado ,
		a.brand ,
		a.modelNo,
		a.serial ,
		a.tagId,
		a.compania,
		a.edificio,
		a.piso,
		a.oficina,
		GETDATE(),
		a.parentAssetSysId
		from @type_newAsset a
		WHERE NOT EXISTS (Select e.placa from assetNewSynchronized e where e.placa = a.placa)

		--exec SP_InsertarActivosNuevos
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_ACTIVOS]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_ACTIVOS]
AS 

SELECT A.assetSysId AS IdActivo, 
       E.name + ' ' + E.lastName AS Alias, 
	   A.longDescription AS Descripcion, 
	   D.name AS Departamento,
	   O.name AS Oficina,
	   F.name AS Piso,
	   B.name AS Edificio,  
	   C.name AS Compania, 
	   TR.tagID AS Tag, 
	   A.assetItemNumber AS Numero, 
	   A.Barcode AS CodeBar, 
	   O.officeSysId AS IdOficina, 
	   A.ShelfSysId AS IdEstante, 
	   A.assetCategorySysId AS IdCategoria,
	   A.floorSysId AS IdPiso,
	   A.buildingSysId as IdEdificio,
	   A.companySysId as IdCompania,
	   A.brand AS Marca, 
	   A.modelNo AS Modelo,
	   A.serialNo AS Serial, 
	   A.parentAssetSyId As parentAssetSysId
FROM assets A
INNER JOIN (SELECT deptSysId, name from departments) D ON 
	D.deptSysId = A.departmentSysId
INNER JOIN (SELECT companySysId, name from companies) C ON 
	C.companySysId = A.companySysId
INNER JOIN (SELECT companySysId, buildingSysId, name from buildings) B ON 
	B.buildingSysId = A.buildingSysId
INNER JOIN (SELECT companySysId, buildingSysId, floorSysId, name from floors) F ON 
	F.floorSysId = A.floorSysId
INNER JOIN (SELECT companySysId, buildingSysId, floorSysId, officeSysId, name from officeses) O ON 
	O.officeSysId = A.officeSysId
INNER JOIN (SELECT employeeSysId, name, lastName FROM employees) E ON 
	E.employeeSysId = A.employeeRelated
INNER JOIN (SELECT tagSysID, tagID from tagRegistry) TR ON TR.tagSysId = A.tagSysId

--where A.assetStatusSysId <> 'E3272DF7-E913-4E2E-BF94-FF8A973F0A16'
GO
/****** Object:  StoredProcedure [dbo].[SP_Obtener_Activos_Por_Empleado]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Obtener_Activos_Por_Empleado]
	 @PTextoABuscar  VARCHAR(200)
	,@PSoloAsociados BIT
	,@PPorCategoria   BIT
	,@PIdAssetCategory UNIQUEIDENTIFIER	
AS
BEGIN
	--[Muestra todos los activos]
	IF(@PSoloAsociados = 0 AND @PPorCategoria = 0)
	BEGIN
		SELECT 
			 A.[assetSysId]			AS IdActivo
			,A.[shortDescription]	AS NombreActivo
			,A.[Placa]				AS Placa
			,A.[serialNo]			AS Serie
			,A.[modelNo]			AS Modelo
			,E.[employeeSysId]		AS IdEmpleado		
			,CASE E.[employeeSysId]
			 WHEN '00000000-0000-0000-0000-000000000000' 
				THEN 'Sin asociar a empleado'
			 ELSE		 
				E.[name]
			 END					AS NombreEmpleado
			--,D.[name]				AS Departamento
			,O.description			AS Oficina
			,AC.[name]				AS CategoriaActivo
			--,'============================'
			--,*
		FROM
			[employees] E
		
			INNER JOIN [assets] A
			ON E.[employeeSysId] = A.[employeeRelated]

			--INNER JOIN [departments] D
			--ON E.[deptSysId] = D.[deptSysId]

			INNER JOIN [officeses] O
			ON A.officeSysId = O.officeSysId

			INNER JOIN [dbo].[assetCategory] AC
			ON A.[assetCategorySysId] = AC.[assetCategorySysId]
		WHERE
			A.[shortDescription]	LIKE '%' + @PTextoABuscar + '%' 
			OR
			E.[name]				LIKE '%' + @PTextoABuscar + '%'
			OR 
			A.[Placa]				LIKE '%' + @PTextoABuscar + '%'
			OR
			A.[serialNo]			LIKE '%' + @PTextoABuscar + '%'
			OR
			A.[modelNo]				LIKE '%' + @PTextoABuscar + '%'

		ORDER BY 
			A.[shortDescription] ASC
	END
	--[Muestra todos los activos || Por categoría ]
	ELSE IF(@PSoloAsociados = 0 AND @PPorCategoria = 1)
	BEGIN
		SELECT 
			 A.[assetSysId]			AS IdActivo
			,A.[shortDescription]	AS NombreActivo
			,A.[Placa]				AS Placa
			,A.[serialNo]			AS Serie
			,A.[modelNo]			AS Modelo
			,E.[employeeSysId]		AS IdEmpleado		
			,CASE E.[employeeSysId]
			 WHEN '00000000-0000-0000-0000-000000000000' 
				THEN 'Sin asociar a empleado'
			 ELSE		 
				E.[name]
			 END					AS NombreEmpleado
			--,D.[name]				AS Departamento
			,O.description			AS Oficina
			,AC.[name]				AS CategoriaActivo
			--,'============================'
			--,*
		FROM
			[employees] E
		
			INNER JOIN [assets] A
			ON E.[employeeSysId] = A.[employeeRelated]

			--INNER JOIN [departments] D
			--ON E.[deptSysId] = D.[deptSysId]

			INNER JOIN [officeses] O
			ON A.officeSysId = O.officeSysId

			INNER JOIN [dbo].[assetCategory] AC
			ON A.[assetCategorySysId] = AC.[assetCategorySysId]

		WHERE
			AC.[assetCategorySysId] = @PIdAssetCategory
			AND
			(
				A.[shortDescription]	LIKE '%' + @PTextoABuscar + '%' 
				OR
				E.[name]				LIKE '%' + @PTextoABuscar + '%'
				OR 
				A.[Placa]				LIKE '%' + @PTextoABuscar + '%'
				OR
				A.[serialNo]			LIKE '%' + @PTextoABuscar + '%'
				OR
				A.[modelNo]				LIKE '%' + @PTextoABuscar + '%'			
			)
			 			
		ORDER BY 
			A.[shortDescription] ASC
	END

	--[Muestra solo activos asociados a un empleado]
	ELSE IF(@PSoloAsociados = 1 AND @PPorCategoria = 0) 	
	BEGIN
		SELECT 
			 A.[assetSysId]			AS IdActivo
			,A.[shortDescription]	AS NombreActivo
			,A.[Placa]				AS Placa
			,A.[serialNo]			AS Serie
			,A.[modelNo]			AS Modelo
			,E.[employeeSysId]		AS IdEmpleado		
			,CASE E.[employeeSysId]
			 WHEN '00000000-0000-0000-0000-000000000000' 
				THEN 'Sin asociar a empleado'
			 ELSE		 
				E.[name]
			 END					AS NombreEmpleado
			--,D.[name]				AS Departamento
			,O.description			AS Oficina
			,AC.[name]				AS CategoriaActivo
			--,'============================'
			--,*
		FROM
			[employees] E
		
			INNER JOIN [assets] A
			ON E.[employeeSysId] = A.[employeeRelated]

			--INNER JOIN [departments] D
			--ON E.[deptSysId] = D.[deptSysId]

			INNER JOIN [officeses] O
			ON A.officeSysId = O.officeSysId

			INNER JOIN [dbo].[assetCategory] AC
			ON A.[assetCategorySysId] = AC.[assetCategorySysId]
		
		WHERE
			E.[employeeSysId] <> '00000000-0000-0000-0000-000000000000' 
			AND
			(
				A.[shortDescription]	LIKE '%' + @PTextoABuscar + '%' 
				OR
				E.[name]				LIKE '%' + @PTextoABuscar + '%'
				OR 
				A.[Placa]				LIKE '%' + @PTextoABuscar + '%'
				OR
				A.[serialNo]			LIKE '%' + @PTextoABuscar + '%'
				OR
				A.[modelNo]				LIKE '%' + @PTextoABuscar + '%'		
			)
		ORDER BY 
			A.[shortDescription] ASC
	END	
	--[Muestra solo activos asociados a un empleado || Por Categoría]
	ELSE IF(@PSoloAsociados = 1 AND @PPorCategoria = 1)
	BEGIN
		SELECT 
			 A.[assetSysId]			AS IdActivo
			,A.[shortDescription]	AS NombreActivo
			,A.[Placa]				AS Placa
			,A.[serialNo]			AS Serie
			,A.[modelNo]			AS Modelo
			,E.[employeeSysId]		AS IdEmpleado		
			,CASE E.[employeeSysId]
			 WHEN '00000000-0000-0000-0000-000000000000' 
				THEN 'Sin asociar a empleado'
			 ELSE		 
				E.[name]
			 END					AS NombreEmpleado
			--,D.[name]				AS Departamento
			,O.description			AS Oficina
			,AC.[name]				AS CategoriaActivo
			--,'============================'
			--,*
		FROM
			[employees] E
		
			INNER JOIN [assets] A
			ON E.[employeeSysId] = A.[employeeRelated]

			--INNER JOIN [departments] D
			--ON E.[deptSysId] = D.[deptSysId]

			INNER JOIN [officeses] O
			ON A.officeSysId = O.officeSysId

			INNER JOIN [dbo].[assetCategory] AC
			ON A.[assetCategorySysId] = AC.[assetCategorySysId]

		WHERE
			AC.[assetCategorySysId] = @PIdAssetCategory
			AND 
			E.[employeeSysId] <> '00000000-0000-0000-0000-000000000000' 		
			AND
			(
				A.[shortDescription]	LIKE '%' + @PTextoABuscar + '%' 
				OR
				E.[name]				LIKE '%' + @PTextoABuscar + '%'
				OR 
				A.[Placa]				LIKE '%' + @PTextoABuscar + '%'
				OR
				A.[serialNo]			LIKE '%' + @PTextoABuscar + '%'
				OR
				A.[modelNo]				LIKE '%' + @PTextoABuscar + '%'		
			)
		ORDER BY 
			A.[shortDescription] ASC
	END	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Obtener_Categorias_Activo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Obtener_Categorias_Activo]
AS 
BEGIN
	SELECT 
		 AC.[assetCategorySysId]	AS IdCategoriaAsset
		,AC.[name]					AS NombreCategoria	
	FROM 
		assetCategory AC
	ORDER BY 
		AC.[name] ASC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_EDIFICIOS]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_EDIFICIOS]
AS 

SELECT b.buildingSysId as IdEdificio, b.name as NombreEdificio, b.companySysId as IdRazonSocial, b.name as NombreRazon
FROM buildings b
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_OFICINAS]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_OFICINAS]
AS 
--NombrePiso es el codigo externo de la ubicación
SELECT o.officeSysId as IdOficina, o.name as NombreOficina, o.floorSysId as IdPiso, o.companyIdExtern as NombrePiso, O.tagSysId as IdTag
FROM officeses o 

GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_PISOS]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_PISOS] 
AS 

SELECT f.floorSysId as IdPiso, f.name as NombrePiso, f.buildingSysId as IdEdificio, f.name as NombreEdificio
FROM floors f
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_RAZON_SOCIAL]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_RAZON_SOCIAL]
AS

SELECT c.companySysId as 'IdRazon', c.name as 'NombreRazon'   
FROM companies c where c.companySysId  in (Select companySysId from buildings)

GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TIPOS_INVENTARIO]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_TIPOS_INVENTARIO]
as

Select ID as idTipoToma, Nombre as nombreTipoToma, Descripcion as descripcionTipoToma 
from TiposInventario 
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TOMADETALLE]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_TOMADETALLE]
AS

Select 
IdTakeDetail, FK_TomaFisica,EPC, DateRead 
from TomaFisicaDetalle
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_TOMAINVENTARIO]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_OBTENER_TOMAINVENTARIO]

AS


Select IdToma
      ,TakeName
      ,TakeDescription
      ,TakeDate
      ,TakeStatus
from dbo.TomaFisica

GO
/****** Object:  StoredProcedure [dbo].[SP_Obtener_Ultimo_Permiso_Denegado_Por_EPC]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Obtener_Ultimo_Permiso_Denegado_Por_EPC]
	@PEPC						VARCHAR(100) = '003620140510175704374215'	
AS
BEGIN
DECLARE 
	 @VarTagSysId			UNIQUEIDENTIFIER		
	,@VarAssetSysId			UNIQUEIDENTIFIER	
	,@VarEmployeedRelatedFK	UNIQUEIDENTIFIER	

	SET @VarTagSysId	= '00000000-0000-0000-0000-000000000000'	
	SET @VarAssetSysId	= '00000000-0000-0000-0000-000000000000'	
	SET @VarEmployeedRelatedFK = '00000000-0000-0000-0000-000000000000'	

	-->===================================================<
	--				1.GET TagSysId BY EPC
	-->===================================================<
	SELECT 
		@VarTagSysId = T.tagSysId 
	FROM 
		[dbo].[tagRegistry] T 
	WHERE 
		T.tagId = @PEPC
		--AND
		--T.isAssigned = 1
			
	IF (@VarTagSysId = '00000000-0000-0000-0000-000000000000')
	BEGIN
		PRINT 'No se obtuvo el tagSysId'
		--Resultado sin datos

	END
	ELSE--[Si se encontró el TAG]
	BEGIN				
		PRINT 'TAG Obtenido: ' + CONVERT(NVARCHAR(100), @VarTagSysId)						
		-->===================================================<
		--				2.GET ASSET BY IdTAG
		-->===================================================<
		SELECT 
			 @VarAssetSysId = A.assetSysId 
			,@VarEmployeedRelatedFK = A.employeeRelated
		FROM assets A
		WHERE A.tagSysId = @VarTagSysId

		PRINT 'ACTIVO Obtenido: ' + CONVERT(NVARCHAR(100), @VarTagSysId)						


		IF (@VarAssetSysId = '00000000-0000-0000-0000-000000000000')
		BEGIN
			PRINT 'No se encontró un asset con este tag asociado'			
		END
		ELSE 									
		BEGIN
			SELECT TOP 1
			     BPCA.idBitacoraPermisosConsumidoAsset	AS IdBitacoraPermiso 
				,A.shortDescription						AS NombreActivo				
				,A.Placa								AS Placa
				,E.employeeSysId						AS EmployeeSysId
				,E.name									AS Nombre
				,E.lastName								AS Apellidos
				,CASE BPCA.isAutorizatePermission			
					WHEN 0 THEN 'No autorizado'
					ELSE 'Autorizado'	
					END									AS EstadoPermiso
				,BPCA.dateRegister						AS FechaLectura
				--,'======================' 
				--,* 
			FROM 
				[BitacoraPermisosConsumidosAsset] BPCA

				INNER JOIN [employees] E
				ON BPCA.employeedRelatedFK = E.[employeeSysId]

				INNER JOIN [dbo].[assets] A
				ON BPCA.[assetSysIdFK] = A.[assetSysId]
			WHERE 
				BPCA.assetSysIdFK = @VarAssetSysId
			  AND
				BPCA.isAutorizatePermission = 0
			
			ORDER BY 
				BPCA.dateRegister DESC 
		END			
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_USUARIOS]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[SP_OBTENER_USUARIOS]
AS
select u.userSysId as IdUsuario, u.username as NombreUsuario, u.password as Pass, u.email as email FROM users as u
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerActivoAlertasPorEPC]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ObtenerActivoAlertasPorEPC]
	@EPC Varchar(200),
	@Antena Varchar(20),
	@NumeroAntena Varchar(20)

AS
BEGIN
	SET NOCOUNT ON;
	Select aa.IdAlertasActivo, aa.IdActivo as assetSysId
			,a.Barcode as Barcode
			,tr.tagId as EPC
			,e.id as cedula
			,a.shortDescription as Description
			--,aa.IdAlertasActivo as assetAlertSysId
			,aa.IdTipoAlerta as alertTypeSysId	
			,ta.email1 as correo1
			,ta.email2 as correo2
			,ta.email3 as correo3
			,ta.CirculoPermitido as CirculoPermitido
		from AlertasActivo aa 
		inner join assets a on a.assetSysId = aa.IdActivo
		inner join tagRegistry tr on tr.tagSysId = a.tagSysId
		inner join employees e on  e.employeeSysId = a.employeeRelated
		inner join TiposAlertas ta on ta.IdTipoAlerta = aa.IdTipoAlerta
		where tr.tagID = @EPC
		
END

--Exec ObtnerActivosAlerta '800474453080000000000157'
GO
/****** Object:  StoredProcedure [dbo].[Sp_ObtenerActivosExcel]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Sp_ObtenerActivosExcel] 
AS 
	DECLARE @Errores						VARCHAR(MAX)  = ' '
			,@NumeroSAP						NVARCHAR(100)							
			,@NumeroActivo					VARCHAR(150)
			,@NumeroPlaca					NVARCHAR(50)
			,@IDCateogria					UNIQUEIDENTIFIER
			,@IDEstadoActivo				UNIQUEIDENTIFIER
			,@ImpuestoExonerado				NVARCHAR(50)
			,@IDLocalizacionFisicaA			UNIQUEIDENTIFIER
			,@IDLocalizacionFisicaB			UNIQUEIDENTIFIER
			,@IDLocalizacionFisicaC			UNIQUEIDENTIFIER
			,@IDLocalizacionFisicaD			UNIQUEIDENTIFIER
			,@IDEmpleado					UNIQUEIDENTIFIER
		    ,@MarcaActivo					VARCHAR(50)
			,@NumeroModeloActivo			VARCHAR(50)
			,@NumeroSerieActivo				VARCHAR(50)
			,@NumeroParteActivo				VARCHAR(50)
			,@Depreciado					VARCHAR(50) = ''
			,@CostoActivoColones			VARCHAR(50)
			,@CostoActivoDolares			VARCHAR(50)
			,@DescripcionCortaActivo		VARCHAR(200)
			,@DescripcionLargaActivo		VARCHAR(200)
			,@NumeroFacturaActivo			VARCHAR(250)
		    ,@FechaCompraActivo				NVARCHAR(50)
			,@ValorFinalVidaUtil			VARCHAR(20)
			,@NumeroDUA						VARCHAR(50)
			,@CuentaContableActivoFijoFGAR	VARCHAR(150)
			,@CuentaContableActivoFijoImpuestos VARCHAR(150)
			,@CuentaContableDepreciacion	VARCHAR(150)
			,@FechaCapitalizacion			NVARCHAR(50)
			,@InversionFTZ					VARCHAR(150)
			,@CentroCostos					VARCHAR(100)
			,@ClaseActivo					VARCHAR(100)
			,@SysIdUsuario					UNIQUEIDENTIFIER = dbo.getUserSysId('Admin')
		 
BEGIN
	BEGIN TRY
	
		--ELIMINA TODO lo que tiene la tabla temporal
		--para luego hacer un INSERT con nuevos datos
		--que seran AGREGADOS o MODIFICADOS en la tabla 'assets'
		TRUNCATE TABLE AssetsTempExcel
		EXEC [Sp_ObtenerActivosExcel_Temporal]
			
		--CURSOR para recorrer la tabla temporal
		DECLARE cursor1 CURSOR		
		FOR SELECT  SAPNumber								
					,assetItemNumber
					,barcode
					,assetCategorySysId
					,assetStatusSysId
					,paidTaxes
					,companySysId
					,buildingSysId
					,floorSysId
					,officeSysId
					,employeeRelated
					,brand
					,modelNo
					,serialNo
					,PartNo
					,Depreciado
					,cost
					,costDollars
					,shortDescription
					,longDescription
					,NUMB_APR
					,DateAdquired
					,ValorResidual
					,duaNumber
					,ProcomerFixedAssetAccount
					,TaxesFixedAssetAccount
					,AccountingAccountDepreciation
					,CapitalizationDate
					,FTZInvestment
					,CostCenter
					,AssetClass 
		FROM AssetsTempExcel
				  
		OPEN cursor1
		FETCH NEXT	FROM cursor1 
					INTO @NumeroSAP							
						,@NumeroActivo
						,@NumeroPlaca
						,@IDCateogria
						,@IDEstadoActivo
						,@ImpuestoExonerado
						,@IDLocalizacionFisicaA
						,@IDLocalizacionFisicaB
						,@IDLocalizacionFisicaC
						,@IDLocalizacionFisicaD	
						,@IDEmpleado
						,@MarcaActivo
						,@NumeroModeloActivo
						,@NumeroSerieActivo
						,@NumeroParteActivo
						,@Depreciado
						,@CostoActivoColones
						,@CostoActivoDolares
						,@DescripcionCortaActivo
						,@DescripcionLargaActivo
						,@NumeroFacturaActivo
						,@FechaCompraActivo
						,@ValorFinalVidaUtil
						,@NumeroDUA
						,@CuentaContableActivoFijoFGAR
						,@CuentaContableActivoFijoImpuestos
						,@CuentaContableDepreciacion
						,@FechaCapitalizacion
						,@InversionFTZ
						,@CentroCostos
						,@ClaseActivo
		WHILE @@FETCH_STATUS = 0
		BEGIN
			BEGIN TRY
			  
				--Si existe el activo, haga UPDATE, sino INSERT                       
				DECLARE @assetItemNumber VARCHAR(100) = (SELECT assetItemNumber
														FROM assets
														WHERE assetItemNumber = @NumeroActivo)
				
				PRINT ''
				PRINT 'NumeroActivo_Assets: ' + @assetItemNumber
				PRINT 'NumeroActivo_Excel: ' + @NumeroActivo
  
				IF(@assetItemNumber IS NOT NULL)
				BEGIN
					PRINT 'ON UPDATE'
					UPDATE  assets
					SET		[assetCategorySysId]	= @IDCateogria
							,[assetStatusSysId]		= @IDEstadoActivo
							,[companySysId]			= @IDLocalizacionFisicaA
							,[managementSysID]		= CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier)
							,[departmentSysId]		= CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier)
							,[businessUnitSysId]	= CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier)
							,[buildingSysId]		= @IDLocalizacionFisicaB
							,[floorSysId]			= @IDLocalizacionFisicaC
							,[officeSysId]			= @IDLocalizacionFisicaD
							,[employeeRelated]		= @IDEmpleado
							--,[tagSysId]			=  CAST('00000000-0000-0000-0000-000000000000' as uniqueidentifier)
							,[lastEmployeeRelated]	= @IDEmpleado
							,[brand]				= @MarcaActivo
							,[modelNo]				= @NumeroModeloActivo
							,[serialNo]				= @NumeroSerieActivo
							--,[skuNo]				= ' '
							,[PartNo]				= @NumeroParteActivo
							--,[isDepreciated]		= 0
							--,[isObsolete]			= 0
							--,[color]				= ' '
							,[cost]					= @CostoActivoColones
							--,[size]				= ' '
							,[shortDescription]		= @DescripcionCortaActivo
							,[longDescription]		= @DescripcionLargaActivo
							--,[accessoriesIncluded]	= 0
							--,[accessoriesQuantity]	= 0
							--,[accessoryDescription1]= ' '
							--,[accessorySerial1]	= ' '
							--,[accessoryModel1]	= ' '
							--,[accessoryDescription2]= ' '
							--,[accessorySerial2]	= ' '
							--,[accessoryModel2]	= ' '
							--,[accessoryDescription3]= ' '
							--,[accessorySerial3]	= ' '
							--,[accessoryModel3]	= ' '
							--,[accessoryDescription4]= ' '
							--,[accessorySerial4]	= ' '
							--,[accessoryModel4]	= ' '
							,[entryUser]			= @SysIdUsuario
							,[entryDate]			= getdate()
							,[updateUser]			= @SysIdUsuario
							,[updateDate]			= getdate()
							,[rowGuid]				= NEWID()
							--[BillNo]				= ' '
							,[DateAdquired]			= @FechaCompraActivo
							--[ProviderSysId]		= cast('00000000-0000-0000-0000-000000000000' as uniqueidentifier)
							--[GarantyTerms]		= ' '
							--[expirationDate]		= cast('6100-01-01 00:00:00.000' AS DATETIME),--fecha expiracion de activo
							--[unidNumber]			= 0
							,[NUMB_APR]				= @NumeroFacturaActivo
							--[Alias]				= ' '
							--[Origen]				= ' '
							--[ObservacionesAdicionales] = ' '
							--[assetSubcategory]	= ' '
							,[Barcode]				= @NumeroPlaca
							--[proveedor]			= ' '
							--[FechaObsolesencia]	= CAST(@DiasObsoletoInterna AS INT)
							,[TipoRegistro]			= 'Activos'
							,[Depreciado]			= @Depreciado
							,[ValorResidual]		= @ValorFinalVidaUtil
							--[respaldodescrip]		= ' '
							,[Placa]				= @NumeroPlaca
							--[Adquisicion]			= ' '
							--[ShelfSysId]			= cast('00000000-0000-0000-0000-000000000000' as uniqueidentifier)
							,[costDollars]			= @CostoActivoDolares
							,[paidTaxes]			= @ImpuestoExonerado
							,[duaNumber]			= @NumeroDUA
							--,[procomerLifeTime]	= COALESCE(@DiasObsoletoProcomer, '')
							--,[residualValueDollars]= 0
							,[ProcomerFixedAssetAccount] = @CuentaContableActivoFijoFGAR
							,[TaxesFixedAssetAccount] = @CuentaContableActivoFijoImpuestos
							,[AccountingAccountDepreciation] = @CuentaContableDepreciacion
							,[CapitalizationDate]	= @FechaCapitalizacion
							,[FTZInvestment]		= @InversionFTZ
							,[SAPNumber]			= @NumeroSAP
							,[CostCenter]			= @CentroCostos
							,[AssetClass]			= @ClaseActivo
					WHERE	assetItemNumber			= @NumeroActivo
				 
				END 
				ELSE 
				BEGIN
					PRINT 'ON INSERT'
					INSERT INTO assets
								([assetSysId]			  
								,[assetItemNumber]
								,[assetCategorySysId]
								,[assetStatusSysId]
								,[companySysId]
								,[managementSysID]
								,[departmentSysId]
								,[businessUnitSysId]
								,[buildingSysId]
								,[floorSysId]
								,[officeSysId]
								,[employeeRelated]
								,[tagSysId]
								,[lastEmployeeRelated]
								,[brand]
								,[modelNo]
								,[serialNo]
								,[skuNo]
								,[PartNo]
								,[isDepreciated]
								,[isObsolete]
								,[color]
								,[cost]
								,[size]
								,[shortDescription]
								,[longDescription]
								,[accessoriesIncluded]
								,[accessoriesQuantity]
								,[accessoryDescription1]
								,[accessorySerial1]
								,[accessoryModel1]
								,[accessoryDescription2]
								,[accessorySerial2]
								,[accessoryModel2]
								,[accessoryDescription3]
								,[accessorySerial3]
								,[accessoryModel3]
								,[accessoryDescription4]
								,[accessorySerial4]
								,[accessoryModel4]
								,[entryUser]
								,[entryDate]
								,[updateUser]
								,[updateDate]
								,[rowGuid]
								,[BillNo]
								,[DateAdquired]
								,[ProviderSysId]
								,[GarantyTerms]
								,[expirationDate]
								,[unidNumber]
								,[NUMB_APR]
								,[Alias]
								,[Origen]
								,[ObservacionesAdicionales]
								,[assetSubcategory]
								,[Barcode]
								,[proveedor]
								--,[FechaObsolesencia]
								,[TipoRegistro]
								,[Depreciado]
								,[ValorResidual]
								,[respaldodescrip]
								,[Placa]
								,[Adquisicion]
								,[ShelfSysId]	
								,[costDollars]
								,[paidTaxes]
								,[duaNumber]
								--,[procomerLifeTime]
								,[residualValueDollars]
								,[ProcomerFixedAssetAccount]
								,[TaxesFixedAssetAccount]
								,[AccountingAccountDepreciation]
								,[CapitalizationDate]
								,[FTZInvestment]
								,[SAPNumber]
								,[CostCenter]
								,[AssetClass])
					VALUES		(NEWID()			  
								,@NumeroActivo
								,@IDCateogria
								,@IDEstadoActivo
								,@IDLocalizacionFisicaA
								,CAST('00000000-0000-0000-0000-000000000000' AS UNIQUEIDENTIFIER)
								,CAST('00000000-0000-0000-0000-000000000000' AS UNIQUEIDENTIFIER)
								,CAST('00000000-0000-0000-0000-000000000000' AS UNIQUEIDENTIFIER)
								,@IDLocalizacionFisicaB
								,@IDLocalizacionFisicaC
								,@IDLocalizacionFisicaD	
								,@IDEmpleado
								,CAST('00000000-0000-0000-0000-000000000000' AS UNIQUEIDENTIFIER)
								,@IDEmpleado
								,@MarcaActivo
								,@NumeroModeloActivo
								,@NumeroSerieActivo
								,' '
								,@NumeroParteActivo
								,0
								,0
								,' '
								,@CostoActivoColones
								,' '
								,@DescripcionCortaActivo
								,@DescripcionLargaActivo
								,0
								,0
								,' '
								,' '
								,' '
								,' '
								,' '
								,' '
								,' '
								,' '
								,' '
								,' '
								,' '
								,' '
								,@SysIdUsuario
								,getdate()
								,@SysIdUsuario
								,getdate()
								,NEWID()
								,' '
								,@FechaCompraActivo
								,CAST('00000000-0000-0000-0000-000000000000' AS UNIQUEIDENTIFIER)
								,' '
								,cast('6100-01-01 00:00:00.000' AS DATETIME)--fecha expiracion de activo
								,0
								,@NumeroFacturaActivo
								,' '
								,' ' 
								,' '
								,' ' -- assetSubcategory
								,@NumeroPlaca
								,' ' 
								--,CAST(@DiasObsoletoInterna AS INT)
								,'Activos'
								,@Depreciado
								,@ValorFinalVidaUtil
								,' '
								,@NumeroPlaca
								,' '
								,CAST('00000000-0000-0000-0000-000000000000' AS UNIQUEIDENTIFIER)
								,@CostoActivoDolares
								,@ImpuestoExonerado
								,@NumeroDUA
								--,COALESCE(@DiasObsoletoProcomer, '')
								,0
								,@CuentaContableActivoFijoFGAR
								,@CuentaContableActivoFijoImpuestos
								,@CuentaContableDepreciacion
								,@FechaCapitalizacion
								,@InversionFTZ
								,@NumeroSAP
								,@CentroCostos
								,@ClaseActivo)
				END
						
			  FETCH NEXT	FROM cursor1 
							INTO @NumeroSAP							
								,@NumeroActivo
								,@NumeroPlaca
								,@IDCateogria
								,@IDEstadoActivo
								,@ImpuestoExonerado
								,@IDLocalizacionFisicaA
								,@IDLocalizacionFisicaB
								,@IDLocalizacionFisicaC
								,@IDLocalizacionFisicaD	
								,@IDEmpleado
								,@MarcaActivo
								,@NumeroModeloActivo
								,@NumeroSerieActivo
								,@NumeroParteActivo
								,@Depreciado
								,@CostoActivoColones
								,@CostoActivoDolares
								,@DescripcionCortaActivo
								,@DescripcionLargaActivo
								,@NumeroFacturaActivo
								,@FechaCompraActivo
								,@ValorFinalVidaUtil
								,@NumeroDUA
								,@CuentaContableActivoFijoFGAR
								,@CuentaContableActivoFijoImpuestos
								,@CuentaContableDepreciacion
								,@FechaCapitalizacion
								,@InversionFTZ
								,@CentroCostos
								,@ClaseActivo	
			END TRY
			BEGIN CATCH
				SELECT ERROR_MESSAGE()+ '-' + 
				CAST(ERROR_LINE() AS NVARCHAR(10)) + '-' + 
				ERROR_PROCEDURE()  AS 'RESULTADO';
			 
				INSERT INTO dbo.ErroresExcel(Error) 
				VALUES ('Existe un error en la linea del numero de activo '+(CONVERT(VARCHAR,@NumeroActivo)+' '+ CONVERT(VARCHAR, @DescripcionLargaActivo)))
				FETCH NEXT	FROM cursor1 
							INTO @NumeroSAP							
								,@NumeroActivo
								,@NumeroPlaca
								,@IDCateogria
								,@IDEstadoActivo
								,@ImpuestoExonerado
								,@IDLocalizacionFisicaA
								,@IDLocalizacionFisicaB
								,@IDLocalizacionFisicaC
								,@IDLocalizacionFisicaD	
								,@IDEmpleado
								,@MarcaActivo
								,@NumeroModeloActivo
								,@NumeroSerieActivo
								,@NumeroParteActivo
								,@Depreciado
								,@CostoActivoColones
								,@CostoActivoDolares
								,@DescripcionCortaActivo
								,@DescripcionLargaActivo
								,@NumeroFacturaActivo
								,@FechaCompraActivo
								,@ValorFinalVidaUtil
								,@NumeroDUA
								,@CuentaContableActivoFijoFGAR
								,@CuentaContableActivoFijoImpuestos
								,@CuentaContableDepreciacion
								,@FechaCapitalizacion
								,@InversionFTZ
								,@CentroCostos
								,@ClaseActivo 					 
			END CATCH    
	    END
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE()+ '-' + 
		CAST(ERROR_LINE() AS VARCHAR(10)) + '-' + 
		ERROR_PROCEDURE()  AS 'RESULTADO';
	END CATCH
	
	CLOSE cursor1
	DEALLOCATE cursor1	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerAlertaPorId]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_ObtenerAlertaPorId]
	--@IdAlerta int
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT IdTipoAlerta,Nombre ,TiempoMaximoNoLectura, Email1, Email2, Email3  from TiposAlertas
	--where IdTipoAlerta = @IdAlerta
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerEstadoAntenasZona]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerEstadoAntenasZona]
@Zona varchar(50)
AS 

SELECT 
ZO.IP,
ZO.NumeroAntena AS Antena, 
ZO.NombreZona AS Zona, 
RE.EstadoReader, 
RE.EstadoAntena, 
RE.HoraUltimoRegistro
FROM Zonas ZO  INNER JOIN ReaderEstado RE
ON RE.IP = ZO.IP AND RE.Antena = ZO.NumeroAntena
--WHERE ZO.NombreZona = @Zona
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerEstadoZonas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerEstadoZonas]
AS 

SELECT 
ZO.IP,
ZO.NumeroAntena AS Antena, 
ZO.NombreZona AS Zona, 
RE.EstadoReader, 
RE.EstadoAntena, 
RE.HoraUltimoRegistro
FROM Zonas ZO  INNER JOIN ReaderEstado RE
ON RE.IP = ZO.IP AND RE.Antena = ZO.NumeroAntena
GO
/****** Object:  StoredProcedure [dbo].[Sp_ObtenerIPReaders]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_ObtenerIPReaders]
AS
BEGIN
	SELECT DISTINCT IP FROM Zonas
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ObtenerMovimientosInventario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC  [dbo].[Sp_ObtenerMovimientosInventario] --'0003771', '2021-02-11 12:47:12.060', '2021-02-13 12:47:12.060'
	 @_Placa		VARCHAR(250)
	,@_FechaInicio	DATETIME
	,@_FechaFinal	DATETIME 
AS
BEGIN

	--Agregar el las horas al día de la fecha final para que tome en cuenta dicho día
	SET @_FechaFinal = DATEADD(HOUR, 23, @_FechaFinal)
	SET @_FechaFinal = DATEADD(MINUTE, 59, @_FechaFinal)
	SET @_FechaFinal = DATEADD(SECOND, 59, @_FechaFinal)
	
	
	

	DECLARE @_AssetSysId UNIQUEIDENTIFIER
	SET @_AssetSysId = (SELECT assetSysId FROM assets 
						WHERE Barcode = @_Placa
						)
	
	PRINT 'Placa ingresada: '	+ @_Placa 
	PRINT 'IdAssetSys: '		+ CONVERT(NVARCHAR(50), @_AssetSysId)
	PRINT 'Búsque del ' + CONVERT(VARCHAR, @_FechaInicio) + ' al ' + CONVERT(VARCHAR, @_FechaFinal)	 


	SELECT  mov.assetsSysId,
			mov.dateModified,
			a.Barcode AS Placa,
			a.shortDescription,
			c.name as companies,
			b.name as buildings,
			f.name as floors,
			o.name as offices,
			e.name as employee,
			s.name as assetStatus,
			mov.statusDetail
	FROM AssetsTraceMovements AS mov
	INNER JOIN assets AS a
	ON a.assetSysId = @_AssetSysId
	INNER JOIN officeses AS o
	ON o.officeSysId = mov.officeSysId
	INNER JOIN floors AS f
	ON f.floorSysId = mov.floorSysId
	INNER JOIN buildings AS b
	ON b.buildingSysId = mov.buildingSysId
	INNER JOIN companies AS c
	ON c.companySysId = mov.companySysId
	INNER JOIN employees AS e
	ON a.employeeRelated = e.employeeSysId
	INNER JOIN assetStatus as s
	ON a.assetStatusSysId = s.assetStatusSysId
	WHERE 
		mov.assetsSysId	= @_AssetSysId
		AND 
		mov.dateModified BETWEEN @_FechaInicio	AND @_FechaFinal
		
			
	ORDER BY mov.dateModified DESC

	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerPermisoActivoYEncargadoxEPC]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ObtenerPermisoActivoYEncargadoxEPC]

AS
 
Declare @Epc varchar(50);
Declare @IP varchar(50);
Declare @IdEmpresa int;
Declare @IdTag UNIQUEIDENTIFIER;
Declare @IdActivo UNIQUEIDENTIFIER;
Declare @Fecha Datetime;
Declare @Identificacion varchar(50);
create Table #TablaTemporal (EPC varchar(50),Nombre varchar(50))
create Table #EPC(respuesta varchar(30),IP varchar(30),IdEmpresa int);

set @Fecha=GETDATE();

insert into #EPC exec SP_ObtenerEPCActivo
set @Epc = (select respuesta from #EPC)
set @IP = (select IP from #EPC)
set @IdEmpresa = (select IdEmpresa from #EPC)

if((SELECT COUNT(*) FROM tagRegistry T1 WHERE T1.tagID=@Epc)>0)
BEGIN
	SET @IdTag=(SELECT T1.tagSysId FROM tagRegistry T1 WHERE T1.tagID=@Epc);	
	BEGIN
			SET @IdActivo=(SELECT T1.assetSysId FROM assets t1 where t1.tagSysId=@IdTag);
			IF Exists(SELECT T1.assetSysIdFk FROM assetPermission T1 WHERE T1.assetSysIdFK=@IdActivo 
				AND CONVERT(DATE,T1.dateStartPermission)<=CONVERT(DATE,@Fecha) 
				AND CONVERT(DATE,T1.dateEndPermission)>=CONVERT(DATE,@Fecha)
				AND T1.isPermissionActive = '1')
			BEGIN
				SET @Identificacion =(SELECT T2.id as Identificacion from assets T1
				inner join employees T2 on T2.employeeSysId = T1.EmployeeRelated
				where T1.assetSysId=@IdActivo)

				insert into #TablaTemporal exec [PROD_DIV_ACCESO3].[dbo].ObtenerEPCxIdentificacion @Identificacion
				
				alter table #TablaTemporal add NombreActivo varchar(150), Permiso varchar(1)

				update #TablaTemporal set Permiso = 'Y', NombreActivo=(SELECT T1.shortDescription + ' '+ T1.brand FROM assets T1 WHERE T1.assetSysId=@IdActivo)

				insert into [PROD_DIV_ACCESO3].[dbo].[Tbl_ActivosANotificar] 
				([EPCEncargado],
				[NombreEncargado],
				[NombreActivo],
				[Permiso],
				[FechaRegistro],
				[EstadoNotificacion],
				[EstadoSemaforo],
				[EPCActivo],
				[IP],
				[IdEmpresa]
				)
				Select 				
				e.EPC,
				e.Nombre,
				e.NombreActivo,
				e.Permiso,
				getdate(),
				'0',
				'0',
				@Epc,
				@IP,
				@IdEmpresa
				 from #TablaTemporal e
				 drop table #EPC
				 drop table #TablaTemporal
			END
			ELSE
			BEGIN
				SET @Identificacion =(SELECT T2.id as Identificacion from assets T1
				inner join employees T2 on T2.employeeSysId = T1.EmployeeRelated
				where T1.assetSysId=@IdActivo)

				insert into #TablaTemporal exec [PROD_DIV_ACCESO3].[dbo].ObtenerEPCxIdentificacion @Identificacion
				
				alter table #TablaTemporal add NombreActivo varchar(150), Permiso varchar(1)

				update #TablaTemporal set Permiso = 'N', NombreActivo=(SELECT T1.shortDescription + ' '+ T1.brand FROM assets T1 WHERE T1.assetSysId=@IdActivo)

				insert into [PROD_DIV_ACCESO3].[dbo].[Tbl_ActivosANotificar] 
				([EPCEncargado],
				[NombreEncargado],
				[NombreActivo],
				[Permiso],
				[FechaRegistro],
				[EstadoNotificacion],
				[EstadoSemaforo],
				[EPCActivo],
				[IP],
				[IdEmpresa]
				)
				Select 				
				e.EPC,
				e.Nombre,
				e.NombreActivo,
				e.Permiso,
				getdate(),
				'0',
				'0',
				@Epc,
				@IP,
				@IdEmpresa
				 from #TablaTemporal e
				 drop table #EPC
				 drop table #TablaTemporal
			END
		END
	END	
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerPermisosActivos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ObtenerPermisosActivos]
	(@Epc varchar(50))
AS
 

Declare @IdTag UNIQUEIDENTIFIER;
Declare @IdActivo UNIQUEIDENTIFIER;
Declare @Fecha Datetime;

set @Fecha=GETDATE();

if((SELECT COUNT(*) FROM tagRegistry T1 WHERE T1.tagID=@Epc)>0)
BEGIN
	SET @IdTag=(SELECT T1.tagSysId FROM tagRegistry T1 WHERE T1.tagID=@Epc);	
	BEGIN
			SET @IdActivo=(SELECT top 1 T1.assetSysId FROM assets t1 where t1.tagSysId=@IdTag);
			IF Exists(SELECT T1.assetSysIdFK FROM assetPermission T1 WHERE T1.assetSysIdFK=@IdActivo 
				AND CONVERT(DATE,T1.dateStartPermission)<=CONVERT(DATE,@Fecha) 
				AND CONVERT(DATE,T1.dateEndPermission)>=CONVERT(DATE,@Fecha)
				AND T1.isPermissionActive = '1')
			BEGIN
				SELECT 'Y'
			END
			ELSE
			BEGIN
				SELECT 'N'
			END
		END
	END	
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerPersonaPorEPCAcceso]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ObtenerPersonaPorEPCAcceso] 
	@IdPerfilEmpresa int,
	@EPC varchar(200)
AS
BEGIN

	SET NOCOUNT ON;
	
	
	exec [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].[Get_CirculosXEPC] @IdPerfilEmpresa,@EPC
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerTagGS1]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerTagGS1] 
@Lote varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT epc, epcLote, numeroTag FROM epcTestGs1 where epcLote = @Lote and Grabado <> '1'



END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerTagGS1Categ]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerTagGS1Categ] 
@Categ varchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	SELECT epc, consecutivoTag, numeroTag FROM epcTestGs1 where epc like '%'+@Categ+'%' and Grabado <> '1'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerTagsAndroid]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ObtenerTagsAndroid] 
	
AS
BEGIN
	SET NOCOUNT ON;

	SELECT tagSysId
		  ,tagID
		  ,tagTypeSysId
  From tagRegistry

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerUltimoGeneradoGS1]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ObtenerUltimoGeneradoGS1]
	 
	 @Cate varchar(100)	
	 
AS
BEGIN
	Select UltimoGenerado from ultimoNumeroTagGS1 where Categoria = @Cate
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerUltimoGeneradoXNombre]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[SP_ObtenerUltimoGeneradoXNombre]
	 
	 @Nombre varchar(100)	
	 
AS
BEGIN
	Select UltimoGenerado from ultimoNumeroTagGS1 where Nombre = @Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerZonasDisponibles]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ObtenerZonasDisponibles]

AS 

SELECT DISTINCT(ZO.NombreZona) AS Zona, ZO.IP
FROM Zonas ZO  INNER JOIN ReaderEstado RE
ON RE.IP = ZO.IP AND RE.Antena = ZO.NumeroAntena
ORDER BY ZO.IP 
GO
/****** Object:  StoredProcedure [dbo].[Sp_PermisoActivo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_PermisoActivo](
	@Num_Serie varchar(100),
	@FechaInicio Datetime,
	@FechaFinal Datetime,
	@Opcion Varchar(10)
)
AS
--EXEC [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].Sp_Autorizar_Activo @Epc 
EXEC [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].Sp_PermisoActivo @Num_Serie,@FechaInicio,@FechaFinal,@Opcion
GO
/****** Object:  StoredProcedure [dbo].[SP_Reporte_Baja_Activos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Reporte_Baja_Activos]
	 @PUsuarioActual	VARCHAR(200)
	,@PFechaInicio		DATETIME	
	,@PFechaFinal		DATETIME
	,@pIdassets uniqueidentifier
AS 
BEGIN
	-- SP_Reporte_Baja_Activos 'Sin referencia','12/1/2018 00:00:00','12/6/2018 00:00:00','72ef5b65-9f5f-477a-afda-cd05a49adce1'
	--SET DATE [Se realiza para que tome en cuenta el día de la fecha final]
	SET @PFechaFinal = DATEADD(HOUR, 23, @PFechaFinal)
	SET @PFechaFinal = DATEADD(MINUTE, 59, @PFechaFinal)
	SET @PFechaFinal = DATEADD(SECOND, 59, @PFechaFinal)
	
	PRINT '========[FECHAS FILTRO]================'
	PRINT 'De ' + CONVERT(VARCHAR, @PFechaInicio) + ' al ' + CONVERT(VARCHAR, @PFechaFinal)
	SELECT
		A.assetItemNumber		    AS Placa	
		,A.shortDescription			AS ShortDescription
		,AST.name					AS Status 
		,A.accessoryDescription1	AS StatusDescription
		,TE.NAME						AS LastEmployeeRelated
		,O.name						AS LastLocationD
		,A.updateDate				AS ReportDate			 	
		,'SISTEMA ACTIVE ID'	    AS CurrentUser
		,A.size                     AS BarcoreParent
		,A.size                     AS DescriptionParent
	
	FROM
		assets A
		INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
		INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
		INNER JOIN (SELECT EMPLOYEESysID,NAME FROM [dbo].[employees]) TE ON TE.EMPLOYEESysID = A.employeeRelated --A.lastEmployeeRelated
		LEFT JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
		LEFT JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
		LEFT JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
		LEFT JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
		LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId
	WHERE
	--	A.updateDate BETWEEN @PFechaInicio AND @PFechaFinal AND
		 A.assetSysId=@pIdassets
	ORDER BY 
		A.updateDate DESC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Reporte_consolidación_Pertenece]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_Reporte_consolidación_Pertenece]
@inicio datetime,
@fin	datetime,
@tipoIn	varchar(100),
@noPertenece varchar(100)
as
begin
	--Crear tabla temporal para cargar el detalle de las tomas	
	create table #temp_activos_Inventario
	(
	    id_detalle uniqueidentifier,
		numeroactivo varchar(8),
		descripcion varchar(500),
		Ubicacion varchar(200),
		Estado varchar(25),
		concepto varchar(450),
		comentario varchar(600)
	)
	
	create table #temp_activos_reporte
	(
		grupo int,
		Estado varchar(25),
		numeroactivo varchar(8),
		descripcion varchar(500),
		Ubicacion varchar(200),
		concepto varchar(450),
		comentario varchar(600),		
		ubicacion_real varchar(200)
	)
	
	--select * from Inventarios_Aprobados
	
	--Llenar tabla temporal
	--declare @inicio datetime,
	--		@fin datetime,
	--		@tipoIn varchar(600)
	--set @inicio = CONVERT(Datetime, '2011-09-28 18:01:00', 120)
	--	set @fin = GETDATE()
	--	set @tipoIn = '%'
		
	insert into #temp_activos_Inventario
	select di.ID ,di.NumeroActivo, di.Descripcion, ia.Oficina, di.Estado, tob.Nombre, di.CustomComentario
    from Inventarios_Aprobados ia, dbo.Detalle_Inventario di, tipoObservaciones tob
	where di.ID_Inventario=ia.ID_de_toma
	and di.Observaciones = tob.ID
	and ia.Tipo_de_Inventario like @tipoIn
	and ia.Fecha_de_Toma between @inicio and @fin
	and ia.Fecha_de_Toma = (select MAX(a.Fecha_de_Toma) from Inventarios_Aprobados a where a.Oficina=ia.Oficina)
	
	--llenar en tabla temporal de reporte los que son "Pertenece" (Estado='Encontrado')    
    insert into #temp_activos_reporte
    select 1,'Pertenece', numeroactivo, descripcion, Ubicacion, concepto, comentario, ''
    from #temp_activos_Inventario
    where Estado = 'Encontrado'
    
    --llenar la lista temporal del reporte con los activos que en están "faltantes" (Estado='Faltante')
    --declare @UbicacionAct varchar(600)
    insert into #temp_activos_reporte
    select 2,'Faltante', ti.numeroactivo, ti.descripcion, (select tr.Ubicacion from #temp_activos_Inventario tr where tr.numeroactivo=ti.numeroactivo and  tr.Estado='No Pertenece'), ti.concepto, ti.comentario, ti.Ubicacion
    from #temp_activos_Inventario ti
    where ti.Estado = 'Faltante'
    and (select tr.Ubicacion from #temp_activos_Inventario tr where tr.numeroactivo=ti.numeroactivo and  tr.Estado='No Pertenece') is not null
    
    
    --llenar la lista temporal con los activos no leidos
    insert into #temp_activos_reporte 
    select 3,'No Leido', A.assetItemNumber, A.shortDescription, 'No Aparece en Ninguna Toma', '', '', o.name
    from Assets A, officeses o
    where a.officeSysId = o.officeSysId
    and a.assetItemNumber not in (select ti.numeroactivo COLLATE DATABASE_DEFAULT from #temp_activos_Inventario ti where Estado not in ('Encontrado','Faltante'))  
	
	UNION
	select 3,'No Leido', A.assetItemNumber, A.shortDescription, 'No Aparece en Ninguna Toma', '', '', s.name
    from Assets A, shelf s
    where a.ShelfSysId = s.ShelfSysId
    and a.assetItemNumber not in (select ti.numeroactivo COLLATE DATABASE_DEFAULT from #temp_activos_Inventario ti where Estado not in ('Encontrado','Faltante'))   
    
	--llenar la tabla temporal con los activos que están en "No pertenecen"
    insert into #temp_activos_reporte
    select 4,'No Pertenece', ti.numeroactivo, ti.descripcion, ti.Ubicacion, ti.concepto, ti.comentario, o.name
    from #temp_activos_Inventario ti, assets a, officeses o
    where 
    ti.numeroactivo=a.assetItemNumber COLLATE DATABASE_DEFAULT
    and a.officeSysId=o.officeSysId
    and Estado = 'No Pertenece' 
    
    UNION

	select 4,'No Pertenece', ti.numeroactivo, ti.descripcion, ti.Ubicacion, ti.concepto, ti.comentario, s.name
    from #temp_activos_Inventario ti, assets a, shelf s
    where 
    ti.numeroactivo=a.assetItemNumber COLLATE DATABASE_DEFAULT
    and a.ShelfSysId=s.ShelfSysId
    and Estado = 'No Pertenece' 
    --select * from #temp_activos_reporte
    --select * from #temp_activos_reporte
    
    if @noPertenece = 'S'
    begin
		select * from #temp_activos_reporte where Estado = 'No Pertenece' order by grupo
    end else
    begin
		select * from #temp_activos_reporte order by grupo
    end
    
    
    drop table #temp_activos_Inventario
    drop table #temp_activos_reporte

end


GO
/****** Object:  StoredProcedure [dbo].[SP_Reporte_Permisos_Consumidos_Activo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Reporte_Permisos_Consumidos_Activo]
	 @PIdActivo			UNIQUEIDENTIFIER 
	,@PFechaInicio		DATETIME
	,@PFechaFinal		DATETIME
	,@PUsuarioActual	VARCHAR(255)
		 	
AS
BEGIN
	--==========================================
	--Tomar en cuenta el día de fecha fin
	--==========================================
	SET @PFechaFinal = DATEADD(HOUR,	23, @PFechaFinal)
	SET @PFechaFinal = DATEADD(MINUTE,	59, @PFechaFinal)
	SET @PFechaFinal = DATEADD(SECOND,	59, @PFechaFinal)

	--PRINT 'FECHA FINAL-->' + CONVERT(VARCHAR, @PFechaFinal)

	SELECT
		 BPCA.[idBitacoraPermisosConsumidoAsset]	AS IdBitacoraPermiso 
		,A.[assetSysId]								AS IdActivo		
		,A.[shortDescription]						AS NombreActivo				
		,A.[Placa]									AS Placa
		,E.[employeeSysId]							AS EmployeeSysId
		,E.[name]									AS Nombre
		,E.[lastName]								AS Apellidos
		,CASE BPCA.[isAutorizatePermission]			
		 WHEN 0 THEN 'No autorizado'
		 ELSE 'Autorizado'	
		 END										AS EstadoPermiso
		,BPCA.[dateRegister]						AS FechaLectura
		,@PUsuarioActual							AS UsuarioActual
		,ASE.Barcode AS BarcoreParent
		,ASE.shortDescription AS DescriptionParent
		--,'======================' 
		--,* 
	FROM 
		[BitacoraPermisosConsumidosAsset] BPCA

		INNER JOIN [employees] E
		ON BPCA.employeedRelatedFK = E.[employeeSysId]

		INNER JOIN [dbo].[assets] A
		ON BPCA.[assetSysIdFK] = A.[assetSysId]

		LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId

	WHERE
		A.[assetSysId] = @PIdActivo
		AND 
		BPCA.dateRegister BETWEEN @PFechaInicio AND @PFechaFinal
    ORDER BY dateRegister desc
END


GO
/****** Object:  StoredProcedure [dbo].[SP_ReporteActaDonacion]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ReporteActaDonacion]
(

@fechaInicio  Datetime,
@fechafin datetime,
@PUsuarioActual	VARCHAR(200)
)
as
begin
	SET @fechafin = DATEADD(HOUR, 23, @fechafin)
	SET @fechafin = DATEADD(MINUTE, 59, @fechafin)
	SET @fechafin = DATEADD(SECOND, 59, @fechafin)

 SELECT 
		 A.assetItemNumber		    AS Placa	
		,A.shortDescription			AS ShortDescription
		,AST.name					AS Status 
		,A.accessoryDescription1	AS StatusDescription
		,E.NAME						AS LastEmployeeRelated
		,O.name						AS LastLocationD
		,A.updateDate				AS ReportDate			 	
		,'SISTEMA ACTIVE ID'	    AS CurrentUser
		,A.size                     AS BarcoreParent
		,A.size                     AS DescriptionParent
       
	   FROM assets A
		INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
		INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
		INNER JOIN (SELECT EMPLOYEESysID,NAME FROM [dbo].[employees]) E ON E.employeeSysId = A.employeeRelated
		LEFT JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
		LEFT JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
		LEFT JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
		LEFT JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
		LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId
	WHERE
		a.assetStatusSysId = '87B7FB7B-AB44-4498-AD73-CD5ACD2357B4' -- Estado Donado
		--'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
		AND A.updateDate BETWEEN @fechaInicio AND @fechafin

end

--SELECT * FROM assetStatus
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteActivos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE procedure [dbo].[sp_ReporteActivos]
as
begin
SELECT Compania, Gerencia, departamento, UnidadDeNegocios, edificio, piso, 
       oficina, Descripcion1y2, Descripcion3, NumeroActivos, EPC, Empleado_Asignado
FROM         Vw_ReporteActivos

end

GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteActivosFechasBajas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ReporteActivosFechasBajas](

@fechaInicio  Datetime,
@fechafin datetime,
@PUsuarioActual	VARCHAR(200)
)
as
begin
	SET @fechafin = DATEADD(HOUR, 23, @fechafin)
	SET @fechafin = DATEADD(MINUTE, 59, @fechafin)
	SET @fechafin = DATEADD(SECOND, 59, @fechafin)

 SELECT 
		 A.assetItemNumber		    AS Placa	
		,A.shortDescription			AS ShortDescription
		,AST.name					AS Status 
		,A.accessoryDescription1	AS StatusDescription
		,E.NAME						AS LastEmployeeRelated
		,O.name						AS LastLocationD
		,A.updateDate				AS ReportDate			 	
		,'SISTEMA ACTIVE ID'	    AS CurrentUser
		,A.size                     AS BarcoreParent
		,A.size                     AS DescriptionParent
       
	   FROM assets A
		INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
		INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
		INNER JOIN (SELECT EMPLOYEESysID,NAME FROM [dbo].[employees]) E ON E.employeeSysId = A.employeeRelated
		LEFT JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
		LEFT JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
		LEFT JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
		LEFT JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
		LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId
	WHERE
		a.assetStatusSysId = '87B7FB7B-AB44-4498-AD73-CD5ACD2357B4' --Dado de baja
		--'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
		AND A.updateDate BETWEEN @fechaInicio AND @fechafin

end

--SELECT * FROM assetStatus
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteActivosGeneral]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROC [dbo].[sp_ReporteActivosGeneral] --'1' , 'INFOCOOP', 'TEC', '', ''

@status varchar(100),
@category varchar(100)
--@FechaIni varchar(256), 
--@FechaFin varchar(256),
--@dato varchar(256)

AS
BEGIN
    SELECT A.assetSysId 
		,AST.name AS Status 
		,ASTC.name AS Category 
		,A.assetItemNumber
		,A.companyIdExtern as SAPNumber 
		,A.Barcode
		,A.shortDescription 
		,A.longDescription 
		,A.brand 
		,A.modelNo 
		,A.serialNo
		,A.cost AS CostColons
		,A.costDollars CostDollars
		,C.name AS LocationA 
		,B.name AS LocationB
		,F.name AS LocationC 
		,O.name AS LocationD
		,E.name + ' ' + E.lastName AS EmployeeRelated 
		,TR.tagID AS EPC
		--
		,A.accessoryDescription1 AS StatusDescription
		,CASE WHEN A.paidTaxes = 1
			THEN 'Impuesto'
			ELSE 'Exonerado' 
			END AS Impuesto
		,A.PartNo
		,CASE WHEN A.Depreciado = 1
			THEN 'Sí'
			ELSE 'No'
			END AS Depreciado
		,A.NUMB_APR AS NumeroFactura
		,A.DateAdquired AS FechaCompra
		,ASTC.valorvidaUtil AS DiasObsoletoInterna
		,ASTC.vidaUtilProcomer AS DiasObsoletoProcomer
		,A.ValorResidual AS ValorFinalVidaUtil
		,A.duaNumber
		,A.ProcomerFixedAssetAccount AS CuentaContableActivoFijoFGAR
		,A.TaxesFixedAssetAccount AS CuentaContableActivoFijoImpuesto
		,A.AccountingAccountDepreciation AS CuentaContableDepreciacion
		,A.CapitalizationDate AS FechaCapitalizacion
		,A.FTZInvestment AS InversionFTZ
		,A.CostCenter AS CentroCostos
		,A.AssetClass AS ClaseActivo
		,ASE.Barcode AS BarcoreParent
		,ASE.shortDescription AS DescriptionParent
		--
    FROM assets A
		INNER JOIN	(SELECT assetStatusSysId, name 
					FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
		INNER JOIN	(SELECT assetCategorySysId, name, vidaUtilProcomer, valorvidaUtil 
					FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
		LEFT JOIN	(SELECT companySysId, name 
					FROM companies) C ON C.companySysId = A.companySysId
		LEFT JOIN	(SELECT buildingSysId, name 
					FROM buildings) B ON B.buildingSysId = A.buildingSysId
		LEFT JOIN	(SELECT floorSysId, name 
					FROM floors) F ON F.floorSysId = A.floorSysId
		LEFT JOIN	(SELECT officeSysId, name 
					FROM officeses) O ON O.officeSysId = A.officeSysId
		LEFT JOIN	(SELECT employeeSysId, employeeNo, name, lastName 
					FROM employees) E ON E.employeeSysId = A.employeeRelated
		LEFT JOIN	(SELECT tagSysId, tagID 
					FROM tagRegistry) TR ON TR.tagSysId = A.tagSysId
		LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId
    WHERE AST.name LIKE '%' + @status + '%' 
		AND ASTC.name LIKE '%' + @category +'%'
		
--Declare
--@Query nvarchar(MAX)

--	If @dato = '1'
--	Begin
--		Set @Query = 'SELECT act.assetItemNumber as NumActivo, act.shortDescription as descrip, edif.name as edificio, pis.name as piso,
--		              ofi.name as oficina, est.name as estado, cat.name as categoria, act.brand as marca, act.modelNo as modelo,
--					   tag.tagID as tag, act.cost as valor, emp.name as nomempl, emp.lastName as apellido, act.entryDate as fechaIngreso
--						FROM assetStatus est, assets act, buildings edif,
--						floors pis, officeses ofi, assetCategory cat, tagRegistry tag,
--						employees emp
--					    where 
--						edif.buildingSysId = act.buildingSysId
--						and  pis.buildingSysId = act.buildingSysId
--						and ofi.officeSysId = act.officeSysId
--						and est.assetStatusSysId = act.assetStatusSysId
--						and cat.assetCategorySysId = act.assetCategorySysId
--						and tag.tagSysId = act.tagSysId
--						and emp.employeeSysId = act.employeeRelated
--						and act.entryDate>='+''''+@FechaIni+'''
--						and act.entryDate<='+''''+@FechaFin+'''
--						and act.assetStatusSysId = ' + '''' + @estado + ''''						
--	End
--	else if @dato = '2'
--	Begin 
--		Set @Query = 'SELECT act.assetItemNumber as NumActivo, act.shortDescription as descrip, edif.name as edificio, pis.name as piso,
--		              ofi.name as oficina, est.name as estado, cat.name as categoria, act.brand as marca, act.modelNo as modelo,
--					   tag.tagID as tag, act.cost as valor, emp.name as nomempl, emp.lastName as apellido, act.entryDate as fechaIngreso
--						FROM assetStatus est, assets act, buildings edif,
--						floors pis, officeses ofi, assetCategory cat, tagRegistry tag,
--						employees emp
--					    where 
--						edif.buildingSysId = act.buildingSysId
--						and  pis.buildingSysId = act.buildingSysId
--						and ofi.officeSysId = act.officeSysId
--						and est.assetStatusSysId = act.assetStatusSysId
--						and cat.assetCategorySysId = act.assetCategorySysId
--						and tag.tagSysId = act.tagSysId
--						and emp.employeeSysId = act.employeeRelated
--						and act.entryDate>='+''''+@FechaIni+'''
--						and act.entryDate<='+''''+@FechaFin+'''
--						and act.assetCategorySysId = ' + '''' + @categoria + ''''
--	End
--	else if @dato = '3'
--	Begin
--		Set @Query ='SELECT act.assetItemNumber as NumActivo, act.shortDescription as descrip, edif.name as edificio, pis.name as piso,
--		              ofi.name as oficina, est.name as estado, cat.name as categoria, act.brand as marca, act.modelNo as modelo,
--					   tag.tagID as tag, act.cost as valor, emp.name as nomempl, emp.lastName as apellido, act.entryDate as fechaIngreso
--						FROM assetStatus est, assets act, buildings edif,
--						floors pis, officeses ofi, assetCategory cat, tagRegistry tag,
--						employees emp
--					    where 
--						edif.buildingSysId = act.buildingSysId
--						and  pis.buildingSysId = act.buildingSysId
--						and ofi.officeSysId = act.officeSysId
--						and est.assetStatusSysId = act.assetStatusSysId
--						and cat.assetCategorySysId = act.assetCategorySysId
--						and tag.tagSysId = act.tagSysId
--						and emp.employeeSysId = act.employeeRelated
--						and act.entryDate>='+''''+@FechaIni+'''
--						and act.entryDate<='+''''+@FechaFin+'''
--						and act.assetStatusSysId = @estado
--						and act.assetCategorySysId = ' + '''' + @categoria + ''''
--	End
--	else if @dato = '4'
--	Begin
--		Set @Query ='SELECT act.assetItemNumber as NumActivo, act.shortDescription as descrip, edif.name as edificio, pis.name as piso,
--		              ofi.name as oficina, est.name as estado, cat.name as categoria, act.brand as marca, act.modelNo as modelo,
--					   tag.tagID as tag, act.cost as valor, emp.name as nomempl, emp.lastName as apellido, act.entryDate as fechaIngreso
--						FROM assetStatus est, assets act, buildings edif,
--						floors pis, officeses ofi, assetCategory cat, tagRegistry tag,
--						employees emp
--					    where 
--						edif.buildingSysId = act.buildingSysId
--						and  pis.buildingSysId = act.buildingSysId
--						and ofi.officeSysId = act.officeSysId
--						and est.assetStatusSysId = act.assetStatusSysId
--						and cat.assetCategorySysId = act.assetCategorySysId
--						and tag.tagSysId = act.tagSysId
--						and emp.employeeSysId = act.employeeRelated'
--	End

--	EXEC sp_executesql @Query

END


--[sp_ReporteActivosGeneral] 'Activo', 'Mobiliario y Equipo de Oficina'

GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteActivosXUbicacion]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_ReporteActivosXUbicacion] --'1' , 'INFOCOOP', '', '', ''

--@dato varchar(256),
@company varchar(256) = '00000000-0000-0000-0000-000000000000', 
@building varchar(256) = '00000000-0000-0000-0000-000000000000', 
@floor varchar(256) = '00000000-0000-0000-0000-000000000000', 
@office varchar(256) = '00000000-0000-0000-0000-000000000000'

as
begin
	DECLARE @ReportTable TABLE( assetSysId uniqueidentifier, 
								Status varchar(200), 
								Category varchar(200), 
								assetItemNumber varchar(200), 
								SAPNumber varchar(200), 
								Barcode varchar(200), 
								shortDescription varchar(2000), 
								longDescription varchar(2000), 
								brand varchar(100), 
								modelNo varchar(100), 
								serialNo varchar(100), 
								IdBusinessName varchar(200),
								BusinessName varchar(200), 
								IdCountry varchar(200),
								Country varchar(200), 
								IdBuilding varchar(200),
								Building varchar(200), 
								IdSector varchar(200),
								Sector varchar(200),
								BarcoreParent varchar(200),
								shortDescriptionParent varchar(2000))

	INSERT @ReportTable(assetSysId,
						Status, 
						Category, 
						assetItemNumber, 
						SAPNumber, 
						Barcode, 
						shortDescription, 
						longDescription, 
						brand, 
						modelNo, 
						serialNo, 
						IdBusinessName,
						BusinessName, 
						IdCountry,
						Country, 
						IdBuilding,
						Building, 
						IdSector,
						Sector,
						BarcoreParent,
						shortDescriptionParent)
    SELECT A.assetSysId, 
    AST.name as Status, 
    ASTC.name as Category, 
    A.assetItemNumber, 
    A.SAPNumber, 
    A.Barcode, 
    A.shortDescription, 
    A.longDescription, 
    A.brand, 
    A.modelNo, 
    A.serialNo,
    C.companySysId,
    C.name as BusinessName, 
    B.buildingSysId,
    B.name as Country, 
    F.floorSysId,
    F.name as Building, 
    O.officeSysId,
    O.name as Sector,
	ASE.Barcode AS BarcoreParent,
	ASE.longDescription AS shortDescriptionParent
    FROM assets A
    INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
    INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
    left JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
    left JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
    left JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
    left JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
	LEFT JOIN assets ASE
	ON A.parentAssetSyId = ASE.assetSysId

	IF (@company <> '' and @building = '' and @floor = '' and @office = '')
    BEGIN
        SELECT *
        FROM @ReportTable RT
        WHERE RT.IdBusinessName = @company
        ORDER BY LEN(RT.Barcode), RT.Barcode
    END

    ELSE IF (@company <> '' and @building <> '' and @floor = '' and @office = '')
    BEGIN
        SELECT *
        FROM @ReportTable RT
        WHERE RT.IdBusinessName = @company and
              RT.IdCountry = @building
        ORDER BY LEN(RT.Barcode), RT.Barcode
    END

    ELSE IF (@company <> '' and @building <> '' and @floor <> '' and @office = '')
    BEGIN
        SELECT *
        FROM @ReportTable RT
        WHERE RT.IdBusinessName = @company and
              RT.IdCountry = @building and
              RT.IdBuilding = @floor
        ORDER BY LEN(RT.Barcode), RT.Barcode
    END

    ELSE IF (@company <> '' and @building <> '' and @floor <> '' and @office <> '')
    BEGIN
        SELECT *
        FROM @ReportTable RT
        WHERE RT.IdBusinessName = @company and
              RT.IdCountry = @building and
              RT.IdBuilding = @floor and
              RT.IdSector = @office -- care
        ORDER BY LEN(RT.Barcode), RT.Barcode
    END

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteActivosXUbicacionBajas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ReporteActivosXUbicacionBajas]
@company varchar(256) = '00000000-0000-0000-0000-000000000000', 
@building varchar(256) = '00000000-0000-0000-0000-000000000000', 
@floor varchar(256) = '00000000-0000-0000-0000-000000000000', 
@office varchar(256) = '00000000-0000-0000-0000-000000000000',
@PUsuarioActual	VARCHAR(200)
as
begin
 SELECT 
	 	 A.assetItemNumber		    AS Placa	
		,A.shortDescription			AS ShortDescription
		,AST.name					AS Status 
		,A.accessoryDescription1	AS StatusDescription
		,TE.NAME						AS LastEmployeeRelated
		,O.name						AS LastLocationD
		,A.updateDate				AS ReportDate			 	
		,'SISTEMA ACTIVE ID'	    AS CurrentUser
		,A.size                     AS BarcoreParent
		,A.size                     AS DescriptionParent
    FROM assets A
    INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
    INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
	INNER JOIN ( SELECT EMPLOYEESysID,NAME FROM [dbo].[employees]) TE ON TE.EMPLOYEESysID = A.employeeRelated --A.lastEmployeeRelated
    LEFT JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
    LEFT JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
    LEFT JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
    LEFT JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
	LEFT JOIN assets ASE
	ON A.parentAssetSyId = ASE.assetSysId
	WHERE ( C.companySysId = COALESCE(@company,'00000000-0000-0000-0000-000000000000')  and
          B.buildingSysId = COALESCE(@building, '00000000-0000-0000-0000-000000000000') and
          F.floorSysId = COALESCE (@floor, '00000000-0000-0000-0000-000000000000')
		  AND a.assetStatusSysId = '9B7357B8-9F61-49AE-8730-22331E93681B' --Dado de baja
		  --'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
		   and O.officeSysId = COALESCE(@office, '00000000-0000-0000-0000-000000000000') 
		  )
		  OR 
		  (C.companySysId = COALESCE(@company,'00000000-0000-0000-0000-000000000000')  and
          B.buildingSysId = COALESCE(@building, '00000000-0000-0000-0000-000000000000') and
          F.floorSysId = COALESCE (@floor, '00000000-0000-0000-0000-000000000000')
		  AND a.assetStatusSysId = '9B7357B8-9F61-49AE-8730-22331E93681B' --Dado de baja
		  --'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
		   )
			
		

end
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteActivosXUsuario]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_ReporteActivosXUsuario]

@IdEmpleado varchar(256)


as
begin
    SELECT A.assetSysId, 
    AST.name as Status, 
    ASTC.name as Category, 
    A.assetItemNumber, 
    A.SAPNumber, 
    A.Barcode, 
    A.shortDescription, 
    A.longDescription, 
    A.brand, 
    A.modelNo, 
    A.serialNo,
    C.name as BusinessName, 
    B.name as Country, 
    F.name as Building, 
    O.name as Sector
	,ASE.Barcode AS BarcoreParent
	,ASE.shortDescription AS DescriptionParent
    FROM assets A
    INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
    INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
    INNER JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
    INNER JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
    INNER JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
    INNER JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
    INNER JOIN (SELECT employeeSysId, employeeNo, name, lastName FROM employees) E ON E.employeeSysId = A.employeeRelated
	LEFT JOIN assets ASE
	ON A.parentAssetSyId = ASE.assetSysId
    WHERE E.employeeSysId = @IdEmpleado
		--SELECT Compania, Gerencia, departamento, UnidadDeNegocios, edificio, piso, 
		--				oficina, Descripcion1y2, Descripcion3, NumeroActivos, EPC, Empleado_Asignado,
		--				Upper(left(RTRIM(brand), 1)) + lower(right(RTRIM(brand), len(RTRIM(brand)) - 1))brand,
		--				Upper(Numero_de_serie) as 'Numero_de_serie', Categoria, FechaObsolesencia, Barcode, Estado,
		--				Upper(modelNo) modelNo
		--				FROM         Vw_ReporteActivos where Empleado_Asignado like '%' + @nombreUsuario + '%'

end

GO
/****** Object:  StoredProcedure [dbo].[SP_ReporteDictamenDesecho]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ReporteDictamenDesecho]
(

@fechaInicio  Datetime,
@fechafin datetime,
@PUsuarioActual	VARCHAR(200)
)
as
begin
	SET @fechafin = DATEADD(HOUR, 23, @fechafin)
	SET @fechafin = DATEADD(MINUTE, 59, @fechafin)
	SET @fechafin = DATEADD(SECOND, 59, @fechafin)

 SELECT 
		 A.assetItemNumber		    AS Placa	
		,A.shortDescription			AS ShortDescription
		,AST.name					AS Status 
		,A.accessoryDescription1	AS StatusDescription
		,E.NAME						AS LastEmployeeRelated
		,O.name						AS LastLocationD
		,A.updateDate				AS ReportDate			 	
		,'SISTEMA ACTIVE ID'	    AS CurrentUser
		,A.size                     AS BarcoreParent
		,A.size                     AS DescriptionParent
       
	   FROM assets A
		INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
		INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
		INNER JOIN (SELECT EMPLOYEESysID,NAME FROM [dbo].[employees]) E ON E.employeeSysId = A.employeeRelated
		LEFT JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
		LEFT JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
		LEFT JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
		LEFT JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
		LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId
	WHERE
		a.assetStatusSysId = '2235DE3F-1F45-4995-8773-E6C96EF6A4AE' -- Estado Desecho
		--'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
		AND A.updateDate BETWEEN @fechaInicio AND @fechafin

end

--SELECT * FROM assetStatus
GO
/****** Object:  StoredProcedure [dbo].[SP_ReporteDictamenDesuso]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ReporteDictamenDesuso]
(

@fechaInicio  Datetime,
@fechafin datetime,
@PUsuarioActual	VARCHAR(200)
)
as
begin
	--SET @fechafin = DATEADD(HOUR, 23, @fechafin)
	--SET @fechafin = DATEADD(MINUTE, 59, @fechafin)
	--SET @fechafin = DATEADD(SECOND, 59, @fechafin)

 SELECT 
		 A.assetItemNumber		    AS Placa	
		,A.shortDescription			AS ShortDescription
		,AST.name					AS Status 
		,A.accessoryDescription1	AS StatusDescription
		,E.NAME						AS LastEmployeeRelated
		,O.name						AS LastLocationD
		,A.updateDate				AS ReportDate			 	
		,'SISTEMA ACTIVE ID'	    AS CurrentUser
		,A.size                     AS BarcoreParent
		,A.size                     AS DescriptionParent
       
	   FROM assets A
		INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
		INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
		INNER JOIN (SELECT EMPLOYEESysID,NAME FROM [dbo].[employees]) E ON E.employeeSysId = A.employeeRelated
		LEFT JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
		LEFT JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
		LEFT JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
		LEFT JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
		LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId
	WHERE
		a.assetStatusSysId = '9F50648B-4833-4AC6-8FE7-8A6C9CAD565F' -- Estado Desuso
		--'E3272DF7-E913-4E2E-BF94-FF8A973F0A16' -- ES INACTIVO
		AND A.updateDate BETWEEN @fechaInicio AND @fechafin
		order by A.updateDate desc
end

--SELECT * FROM assetStatus
GO
/****** Object:  StoredProcedure [dbo].[sp_ReporteEPCActivos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReporteEPCActivos] 
	-- Add the parameters for the stored procedure here
    @searchParameter varchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

--select * from tagRegistry
    DECLARE @tagTable TABLE(assetSysId uniqueidentifier, 
                            AssetStatus varchar(200), 
                            AssetCategory varchar(200), 
                            AssetItemNumber varchar(200), 
                            AssetSAPNumber varchar(200), 
                            AssetBarcode varchar(200), 
                            AssetShortDescription varchar(200), 
                            AssetLongDescription varchar(200), 
                            AssetBrand varchar(200), 
                            AssetModelNo varchar(200), 
                            AssetSerialNo varchar(200), 
                            LocationA varchar(200), 
                            LocationB varchar(200), 
                            LocationC varchar(200), 
                            LocationD varchar(200), 
                            AssetEPC varchar(200), 
							BarcoreParent varchar(200),
							DescriptionParent varchar(200))
    INSERT INTO @tagTable(assetSysId, 
                          AssetStatus, 
                          AssetCategory, 
                          AssetItemNumber, 
                          AssetSAPNumber, 
                          AssetBarcode, 
                          AssetShortDescription, 
                          AssetLongDescription, 
                          AssetBrand, 
                          AssetModelNo, 
                          AssetSerialNo, 
                          LocationA, 
                          LocationB, 
                          LocationC, 
                          LocationD, 
                          AssetEPC,
						  BarcoreParent,
						  DescriptionParent)
    SELECT  A.assetSysId, 
            AST.name as Status, 
            ASTC.name as Category, 
            A.assetItemNumber, 
            A.SAPNumber, 
            A.Barcode, 
            A.shortDescription, 
            A.longDescription, 
            A.brand, 
            A.modelNo, 
            A.serialNo,
            C.name as BusinessName, 
            B.name as Country, 
            F.name as Building, 
            O.name as Sector, 
            TR.tagID
			,ASE.Barcode AS BarcoreParent
			,ASE.shortDescription AS DescriptionParent
    FROM assets A
    INNER JOIN (SELECT assetStatusSysId, name FROM assetStatus) AST ON AST.assetStatusSysId = A.assetStatusSysId
    INNER JOIN (SELECT assetCategorySysId, name FROM assetCategory) ASTC ON ASTC.assetCategorySysId = A.assetCategorySysId
    LEFT JOIN (SELECT companySysId, name from companies) C ON C.companySysId = A.companySysId
    LEFT JOIN (SELECT buildingSysId, name from buildings) B ON B.buildingSysId = A.buildingSysId
    LEFT JOIN (SELECT floorSysId, name from floors) F ON F.floorSysId = A.floorSysId
    LEFT JOIN (SELECT officeSysId, name from officeses) O ON O.officeSysId = A.officeSysId
    LEFT JOIN (SELECT * FROM tagRegistry) TR ON TR.tagSysId = A.tagSysId
	LEFT JOIN assets ASE
		ON A.parentAssetSyId = ASE.assetSysId
    ORDER BY LEN(A.Barcode), Barcode, TR.tagID

    IF (@searchParameter = 'notAssigned')
    BEGIN
        SELECT *
        FROM @tagTable TT
        WHERE TT.AssetEPC = 'Sin Asignar'
    END
    ELSE IF (@searchParameter = 'all')
    BEGIN
        SELECT *
        FROM @tagTable TT
    END
    ELSE if(@searchParameter = 'assigned')
    BEGIN
        SELECT *
        FROM @tagTable TT
        WHERE TT.AssetEPC <> 'Sin Asignar'
    END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SaveEPCAcceso]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_SaveEPCAcceso]
@IdEmpresa VARCHAR(200),
@IP VARCHAR(200),
@Antena INT,
@EPC VARCHAR(200)
AS
BEGIN
		SET NOCOUNT ON;

	DECLARE @Oficina UNIQUEIDENTIFIER
	DECLARE @IdActivo UNIQUEIDENTIFIER
	DECLARE @EPCAssets UNIQUEIDENTIFIER

	insert into LecturasBorrar(EPC,Ip,Antena)
	values(@EPC,@IP,@Antena)

	SET @Oficina = (SELECT OficinaID FROM Zonas --Tabla con datos de la IP y IDAntena
					WHERE NumeroAntena = @Antena AND IP = @IP)
	PRINT 'Oficina ' 
	PRINT @Oficina	

	SET @IdActivo = (SELECT assetSysId FROM assets as a 
						INNER JOIN tagRegistry as t
						ON a.tagSysId = t.[tagSysId]
						WHERE t.tagID = @EPC 
						)
	PRINT  '@IdActivo' 	
	PRINT  @IdActivo

	DECLARE @AssetStatusSysId UNIQUEIDENTIFIER 
    DECLARE @StatusDetail VARCHAR(100)
	DECLARE @EmployeeSysId UNIQUEIDENTIFIER
	SET @AssetStatusSysId = (SELECT a.assetStatusSysId FROM assets AS a WHERE a.assetSysId = @IdActivo) 
	SET @StatusDetail = (SELECT a.accessoryDescription1 FROM assets AS a WHERE a.assetSysId = @IdActivo)	
	SET @EmployeeSysId = (SELECT a.employeeRelated FROM assets AS a WHERE a.assetSysId = @IdActivo)
	
	DECLARE @LastofficeSysIdTracking UNIQUEIDENTIFIER
		SELECT @LastofficeSysIdTracking = officeSysId 
		FROM AssetsTraceMovements AS at 
		WHERE at.assetsSysId = @IdActivo
		order by dateModified


		if(@LastofficeSysIdTracking  <> @Oficina OR @LastofficeSysIdTracking  IS NULL)
					begin 
					PRINT 'Entra al if donde  = @officeSysIdToCompare  <> @Oficina'
						DECLARE @ID_Floor UNIQUEIDENTIFIER
						DECLARE @ID_Building UNIQUEIDENTIFIER
						DECLARE @ID_Company UNIQUEIDENTIFIER
						SET @ID_Floor = (SELECT floorSysId 
										FROM officeses
										WHERE officeSysId = @Oficina)
						SET @ID_Building = (SELECT buildingSysId 
												FROM officeses
												WHERE officeSysId = @Oficina)
						SET @ID_Company = (SELECT companySysId 
												FROM officeses
												WHERE officeSysId = @Oficina)

						DECLARE @esActualizable BIT
								SET @esActualizable = (SELECT z.Actualizable
														FROM Zonas AS z
														WHERE z.IP = @IP AND z.NumeroAntena = @Antena )

														IF(@esActualizable = 1)
								BEGIN	
									UPDATE assets
									SET officeSysId = @Oficina,
										floorSysId = @ID_Floor,
										buildingSysId = @ID_Building,
										companySysId = @ID_Company,
										updateDate = GetDate()
									WHERE assetSysId = @IdActivo
								END
								ELSE
								BEGIN
								Print 'Ingresa al insert de trace movements'
									INSERT INTO [dbo].[AssetsTraceMovements]
									(		assetsSysId
										   ,officeSysId
										   ,dateModified
										   ,companySysId
										   ,buildingSysId
										   ,floorSysId
										   ,employeeRelated
										   ,assetStatusSysId
										   ,statusDetail
									 )
									 VALUES
									 (	@IdActivo
										   ,@Oficina
										   ,GETDATE()
										   ,@ID_Company
										   ,@ID_Building
										   ,@ID_Floor
										   ,@EmployeeSysId
										   ,@AssetStatusSysId
										   ,@StatusDetail
									 )
									 END
														
					END

					 DECLARE @NombreZona varchar(250)
	SELECT @NombreZona = NombreZona 
    FROM Zonas --Crear tabla con datos de la IP y IDAntena
	WHERE OficinaID = @Oficina

    DECLARE @tagSysId varchar(250) = ''
    SELECT @tagSysId = tagSysId
    FROM tagRegistry 
    WHERE tagID = @EPC

    DECLARE @AssetNumber varchar(200) = ''
    IF @tagSysId <> ''
    BEGIN
        SELECT @AssetNumber = SAPNumber 
        FROM assets 
        where tagSysId = @tagSysId
    END

    SELECT CASE WHEN @AssetNumber = '' THEN 'N::' + @NombreZona  
                ELSE 'Y:' + @AssetNumber + ':'  + @NombreZona  
           END as NombreZona

	--exec [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].[SP_SaveEPC] @EPC,@Antena,@IP,@IdEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SaveEPCAccesoSinAlerta]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Sp_SaveEPCAccesoSinAlerta] --'51', '10.100.95.12', 1, '800410100000000000003771' 
@IdEmpresa VARCHAR(200),
@IP VARCHAR(200),
@Antena INT,
@EPC VARCHAR(200)
AS
BEGIN
		SET NOCOUNT ON;

	DECLARE @Oficina UNIQUEIDENTIFIER
	DECLARE @IdActivo UNIQUEIDENTIFIER
	DECLARE @EPCAssets UNIQUEIDENTIFIER

	insert into LecturasBorrar(EPC,Ip,Antena)
	values(@EPC,@IP,@Antena)

	SET @Oficina = (SELECT OficinaID FROM Zonas --Tabla con datos de la IP y IDAntena
					WHERE NumeroAntena = @Antena AND IP = @IP)
	PRINT 'Oficina ' 
	PRINT @Oficina	

	SET @IdActivo = (SELECT assetSysId FROM assets as a 
						INNER JOIN tagRegistry as t
						ON a.tagSysId = t.[tagSysId]
						WHERE t.tagID = @EPC 
						)
	PRINT  '@IdActivo' 	
	PRINT  @IdActivo

	DECLARE @AssetStatusSysId UNIQUEIDENTIFIER 
    DECLARE @StatusDetail VARCHAR(100)
	DECLARE @EmployeeSysId UNIQUEIDENTIFIER
	SET @AssetStatusSysId = (SELECT a.assetStatusSysId FROM assets AS a WHERE a.assetSysId = @IdActivo) 
	SET @StatusDetail = (SELECT a.accessoryDescription1 FROM assets AS a WHERE a.assetSysId = @IdActivo)	
	SET @EmployeeSysId = (SELECT a.employeeRelated FROM assets AS a WHERE a.assetSysId = @IdActivo)
	
	DECLARE @LastofficeSysIdTracking UNIQUEIDENTIFIER
	DECLARE @DiferenciaTiempo DATETIME
	DECLARE @ID_Floor UNIQUEIDENTIFIER
	DECLARE @ID_Building UNIQUEIDENTIFIER
	DECLARE @ID_Company UNIQUEIDENTIFIER
	DECLARE @esActualizable BIT

		SELECT @LastofficeSysIdTracking = officeSysId, @DiferenciaTiempo = dateModified 
		FROM AssetsTraceMovements AS at 
		WHERE at.assetsSysId = @IdActivo
		order by dateModified

		PRINT DATEDIFF(minute, @DiferenciaTiempo, GETDATE())
		if(@LastofficeSysIdTracking  <> @Oficina OR @LastofficeSysIdTracking  IS NULL)
					begin 
					PRINT 'Entra al if donde  = @officeSysIdToCompare  <> @Oficina'
						
						SET @ID_Floor = (SELECT floorSysId 
										FROM officeses
										WHERE officeSysId = @Oficina)
						SET @ID_Building = (SELECT buildingSysId 
												FROM officeses
												WHERE officeSysId = @Oficina)
						SET @ID_Company = (SELECT companySysId 
												FROM officeses
												WHERE officeSysId = @Oficina)

						
								SET @esActualizable = (SELECT z.Actualizable
														FROM Zonas AS z
														WHERE z.IP = @IP AND z.NumeroAntena = @Antena )

														IF(@esActualizable = 1)
								BEGIN	
									UPDATE assets
									SET officeSysId = @Oficina,
										floorSysId = @ID_Floor,
										buildingSysId = @ID_Building,
										companySysId = @ID_Company,
										updateDate = GetDate()
									WHERE assetSysId = @IdActivo
								END
								ELSE
								BEGIN
								Print 'Ingresa al insert de trace movements'
									INSERT INTO [dbo].[AssetsTraceMovements]
									(		assetsSysId
										   ,officeSysId
										   ,dateModified
										   ,companySysId
										   ,buildingSysId
										   ,floorSysId
										   ,employeeRelated
										   ,assetStatusSysId
										   ,statusDetail
									 )
									 VALUES
									 (	@IdActivo
										   ,@Oficina
										   ,GETDATE()
										   ,@ID_Company
										   ,@ID_Building
										   ,@ID_Floor
										   ,@EmployeeSysId
										   ,@AssetStatusSysId
										   ,@StatusDetail
									 )
									 END
														
					END
					ELSE
					BEGIN
						IF(DATEDIFF(minute, @DiferenciaTiempo, GETDATE()) > 2)
						BEGIN

						PRINT 'Entra al if donde  = @DiferenciaTiempo  > 5'
						PRINT @DiferenciaTiempo
							SET @ID_Floor = (SELECT floorSysId 
											FROM officeses
											WHERE officeSysId = @Oficina)
							SET @ID_Building = (SELECT buildingSysId 
													FROM officeses
													WHERE officeSysId = @Oficina)
							SET @ID_Company = (SELECT companySysId 
													FROM officeses
													WHERE officeSysId = @Oficina)						
									SET @esActualizable = (SELECT z.Actualizable
															FROM Zonas AS z
															WHERE z.IP = @IP AND z.NumeroAntena = @Antena )

															IF(@esActualizable = 1)
									BEGIN	
										UPDATE assets
										SET officeSysId = @Oficina,
											floorSysId = @ID_Floor,
											buildingSysId = @ID_Building,
											companySysId = @ID_Company,
											updateDate = GetDate()
										WHERE assetSysId = @IdActivo
									END
									ELSE
									BEGIN
									Print 'Ingresa al insert de trace movements'
										INSERT INTO [dbo].[AssetsTraceMovements]
										(		assetsSysId
											   ,officeSysId
											   ,dateModified
											   ,companySysId
											   ,buildingSysId
											   ,floorSysId
											   ,employeeRelated
											   ,assetStatusSysId
											   ,statusDetail
										 )
										 VALUES
										 (	@IdActivo
											   ,@Oficina
											   ,GETDATE()
											   ,@ID_Company
											   ,@ID_Building
											   ,@ID_Floor
											   ,@EmployeeSysId
											   ,@AssetStatusSysId
											   ,@StatusDetail
										 )
										 END
						END
					END

					 DECLARE @NombreZona varchar(250)
	SELECT @NombreZona = NombreZona 
    FROM Zonas --Crear tabla con datos de la IP y IDAntena
	WHERE OficinaID = @Oficina

    DECLARE @tagSysId varchar(250) = ''
    SELECT @tagSysId = tagSysId
    FROM tagRegistry 
    WHERE tagID = @EPC

    DECLARE @AssetNumber varchar(200) = ''
    IF @tagSysId <> ''
    BEGIN
        SELECT @AssetNumber = SAPNumber 
        FROM assets 
        where tagSysId = @tagSysId
    END
END


--SELECT * FROM zonas 
--SELECT * FROM officeses where officeSysId = '568D8813-A7E6-4743-8902-03DA8DCD32AD'

--2F76D478-75E9-4AC6-9E11-BF9EAA367B75
GO
/****** Object:  StoredProcedure [dbo].[Sp_SaveEPCPersona]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_SaveEPCPersona]
@IdEmpresa VARCHAR(200),
@IP VARCHAR(200),
@Antena INT,
@EPC VARCHAR(200)
AS
BEGIN
	insert into tbl_LecturasEPCAntenaPersona
(EPC,
Antena,
IP,
FechaRegistro,
Estado,
IdEmpresa)
values(
@EPC,
@Antena,
@IP,
getdate(),
'0',
@IdEmpresa)

	exec [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].[SP_SaveEPC] @EPC,@Antena,@IP,@IdEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectAssetStatus]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SelectAssetStatus]
AS
BEGIN
	SET NOCOUNT ON;

    SELECT assetStatusSysId, name, description
	FROM assetStatus
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SeparaNombre]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Sp_SeparaNombre]
(
	  @NombreCompleto varchar(100),
	  @Nombres varchar(50) output,
	  @Apellidos varchar(50) output    
)
as 
begin
	begin try
	
			 declare @nombre varchar(100),
					 @restoCadena varchar(100),
					 @FullName varchar(100) = '',
					 @Nombres2 varchar(50)
					 
					 /*@NombreCompleto varchar(100) = 'Mario camacho flores',
					 @Nombres varchar(50),
					 @Apellidos varchar(50)*/
					 
			 declare @posicion int,@longitud int, @Cantidad_Espacios int = 0
			 
			 /*set RTRIM(@NombreCompleto)--quita los espacios en blanco del principio y final 
			 set LTRIM(@NombreCompleto)	*/
			  
			 set @FullName = @NombreCompleto	
			 set @longitud = LEN(@NombreCompleto)
			 	
			 --ciclo donde se cuentan los campos en blanco	
			 while @longitud > 0
			 begin 
				 set @posicion = CHARINDEX(' ',@NombreCompleto)
				 set @nombre = SUBSTRING(@NombreCompleto,1,@posicion)
				 set @NombreCompleto = SUBSTRING(@NombreCompleto,@posicion+1,@longitud)
				 set @longitud = @longitud - @posicion
				 
				 if @posicion = 0
				 begin  
					 set @longitud = 0
				 end
				 else 
				 begin 
					  set @Cantidad_Espacios = @Cantidad_Espacios + 1
				 end 	 
			 end
			 --fin ciclo donde se cuentan los campos en blanco
			 set @longitud = LEN(@FullName)
			 
			 if @Cantidad_Espacios = 1
			 begin
				 set @posicion = CHARINDEX(' ',@FullName)
				 set @Nombres = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
			     set @Apellidos = LTRIM(RTRIM(SUBSTRING(@FullName,@posicion+1,@longitud)))
			 end
			 else if @Cantidad_Espacios = 2
			 begin
				 
				 set @posicion = CHARINDEX(' ',@FullName)
				 set @Nombres = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
				 set @FullName = SUBSTRING(@FullName,@posicion+1,@longitud)
				 
				 set @posicion = CHARINDEX(' ',@FullName)
				 set @Apellidos = LTRIM(RTRIM(SUBSTRING(@FullName,1,@longitud))) 
			 
			 end
			 else if @Cantidad_Espacios = 3    
			 begin 
				 set @posicion = CHARINDEX(' ',@FullName)
				 set @Nombres = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
				 set @FullName = SUBSTRING(@FullName,@posicion+1,@longitud)
				 
				 set @posicion = CHARINDEX(' ',@FullName)
				 set @Nombres2 = LTRIM(RTRIM(SUBSTRING(@FullName,1,@posicion)))
				 set @Apellidos = LTRIM(RTRIM(SUBSTRING(@FullName,@posicion+1,@longitud)))
				 
				 set @Nombres = LTRIM(RTRIM(@Nombres + ' ' + @Nombres2))			 
			 end 
	end try
	begin catch
	
	end catch 
	
	
	/*select @Nombres 
	select @Apellidos*/
end 

--****************************************************************

declare @nombrexx varchar(100) = ' Mario Camacho ',-- este es el de entrada 
		@nombresxx varchar(50) = ' ',  --este es de salida   OUTPUT
		@apellidosxx varchar(50) = ' '   --este es de salida   OUTPUT
		
exec Sp_SeparaNombre @nombrexx, @nombresxx OUTPUT, @apellidosxx OUTPUT

select @nombrexx
select @nombresxx
select @apellidosxx

--****************************************************************
GO
/****** Object:  StoredProcedure [dbo].[SP_SincronizarActivoEmpleado]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_SincronizarActivoEmpleado] 
AS
BEGIN

	SET NOCOUNT ON;
	Declare @assetItemNumber varchar(50)
	Declare @cedula varchar(100)

	if exists (Select Syncronized from asignarActivoAccesoSync where Syncronized = 'N')
	begin
	Select @assetItemNumber = assetItemNumber, @cedula = cedula from asignarActivoAccesoSync where Syncronized = 'N'
	exec [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].SP_Asignar_Empleado_Al_Activo @assetItemNumber, @cedula, '46091'
	Update asignarActivoAccesoSync set Syncronized = 'Y' where assetItemNumber = @assetItemNumber
	end
	else
	begin 
	Print 'No existen Activos para sincronizar' 
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TagAsociado]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TagAsociado]
	-- simular parámetros con fechas de inicio y fin.
	
	 @EPC AS varchar(200)
	 

	 AS 

	SET NOCOUNT ON;
	Select a.assetItemNumber As Numero, a.shortDescription As Descripcion, t.tagID As EPC from assets a 
	inner join tagRegistry t ON a.tagSysId = t.tagSysId 
	where t.tagID = @EPC
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdatePertenenciasDeActivos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Sp_UpdatePertenenciasDeActivos]
AS
BEGIN	
	UPDATE assets
		SET assetStatusSysId = '00000000-0000-0000-0000-000000000000'
	FROM assets AS a
		INNER JOIN employees AS e
		ON a.employeeRelated = e.employeeSysId
	WHERE e.active <> 1
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_VerPermisoActivoFechas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_VerPermisoActivoFechas](
@Numero_Serie varchar(50)
)
AS
EXEC [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].Sp_VerPermisoActivoFechas @Numero_Serie
GO
/****** Object:  StoredProcedure [dbo].[spGetReadersConectadosXEmpresa]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetReadersConectadosXEmpresa]
@IdEmpresa varchar(100),
@IdRed varchar(100)
as
--2

 EXEC [acces-o.com\SQL2008R2EX].[PROD_DIV_ACCESO].[dbo].spGetReadersConectadosXEmpresaRoche @IdEmpresa,@IdRed
GO
/****** Object:  StoredProcedure [dbo].[SPObtenerActivosSolucionConflictos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPObtenerActivosSolucionConflictos]
	 @PIdInconsistencia INT
	,@PCodeBar NVARCHAR(200)
	,@PResultadoOUT VARCHAR(200) OUTPUT

AS
DECLARE 
	 @VARTablaOrigen	VARCHAR(50)
	,@VARTablaConclicto	VARCHAR(50)
BEGIN TRY 

	/*
	======================================================================>
	1.Obtener los nombres de la tabla de Origen y Conflicto
	======================================================================>
	*/

	SELECT 
		@VARTablaOrigen		= VC.TablaOrigen,
		@VARTablaConclicto	= VC.TablaConflicto
	FROM
		View_Conciliacion VC
	WHERE
		VC.Id = @PIdInconsistencia



	PRINT '================================================================'
	PRINT 'Id recibido:' + CONVERT(VARCHAR, ISNULL(@PIdInconsistencia,-1))
	PRINT 'Tabla Origen:' +  @VARTablaOrigen
	PRINT 'Tabla Conflicto:' + @VARTablaConclicto
	PRINT '================================================================'
	/*
	======================================================================>
	2.Obtener el detalle de los artículos para realizar la resolusión
	======================================================================>
	*/

	--====================================================================>
	--						ORIGEN Activos_Aceptados 
	--====================================================================>

	--Activos_Aceptados <==> Activos_Aceptados
	IF @VARTablaOrigen = 'Activos_Aceptados' AND @VARTablaOrigen = @VARTablaConclicto
	BEGIN
		SELECT		
			 AA.Id						IdActivo 
			,A.Barcode					CodeBar
			,0							IdEstadoActivo
			,'Activo Aceptado'			EstadoDelActivo
			,A.buildingSysId			IdEdificio
			,A.floorSysId				IdPiso
			,A.officeSysId				IdOficina
			,A.assetCategorySysId		IdCategoria
			,A.shortDescription			Descripcion
			,A.longDescription			DescripcionLarga
			,A.serialNo					Serial			
		FROM 
			assets A
			INNER JOIN assetCategory AC
			ON AC.assetCategorySysId = A.assetCategorySysId		
			INNER JOIN 
			Activos_Aceptados	AA
			ON AA.CodeBar = A.Barcode	

		WHERE
			AA.CodeBar = @PCodeBar	

		ORDER BY A.updateDate DESC
	END 
	-- Fin [Activos_Aceptados <==> Activos_Aceptados]

	--Activos_Aceptados <==> Activos_Actualizados
	IF @VARTablaOrigen = 'Activos_Aceptados' AND @VARTablaConclicto = 'Activos_Actualizados'
	BEGIN
		--Obtiene los registros actualizados
			SELECT
				 AA.Id						IdActivo 
				,A.Barcode					CodeBar
				,1							IdEstadoActivo
				,'Activo Actualizados'		EstadoDelActivo
				,A.buildingSysId			IdEdificio
				,A.floorSysId				IdPiso
				,A.officeSysId				IdOficina
				,A.assetCategorySysId		IdCategoria
				,A.shortDescription			Descripcion
				,A.longDescription			DescripcionLarga
				,A.serialNo					Serial	
			FROM 
				assets A
				INNER JOIN assetCategory AC
				ON AC.assetCategorySysId = A.assetCategorySysId		
				INNER JOIN 
				Activos_Actualizados	AA
				ON AA.CodeBar = A.Barcode	

			WHERE
				AA.CodeBar = @PCodeBar
								

		UNION ALL
		--Obtiene los registros Aceptados
			SELECT
				 AA.Id						IdActivo 
				,A.Barcode					CodeBar
				,0							IdEstadoActivo
				,'Activo Aceptado'			EstadoDelActivo
				,A.buildingSysId			IdEdificio
				,A.floorSysId				IdPiso
				,A.officeSysId				IdOficina
				,A.assetCategorySysId		IdCategoria
				,A.shortDescription			Descripcion
				,A.longDescription			DescripcionLarga
				,A.serialNo					Serial	
			FROM 
				assets A
				INNER JOIN assetCategory AC
				ON AC.assetCategorySysId = A.assetCategorySysId		
				INNER JOIN 
				Activos_Aceptados	AA
				ON AA.CodeBar = A.Barcode	

			WHERE
				AA.CodeBar = @PCodeBar			
	END 
	-- Fin [Activos_Aceptados <==> Activos_Actualizados]
	


	--====================================================================>
	--						ORIGEN Activos_Actualizados 
	--====================================================================>

	--Activos_Actualizados <==> Activos_Actualizados
	IF @VARTablaOrigen = 'Activos_Actualizados' AND @VARTablaOrigen = @VARTablaConclicto
	BEGIN
		SELECT
			 AA.Id						IdActivo 
			,A.Barcode					CodeBar
			,1							IdEstadoActivo
			,'Activo Actualizado'		EstadoDelActivo
			,A.buildingSysId			IdEdificio
			,A.floorSysId				IdPiso
			,A.officeSysId				IdOficina
			,A.assetCategorySysId		IdCategoria
			,A.shortDescription			Descripcion
			,A.longDescription			DescripcionLarga
			,A.serialNo					Serial	
		FROM 
			assets A
			INNER JOIN assetCategory AC
			ON AC.assetCategorySysId = A.assetCategorySysId		
			INNER JOIN 
			Activos_Actualizados	AA
			ON AA.CodeBar = A.Barcode	

		WHERE
			AA.CodeBar = @PCodeBar	

		ORDER BY A.updateDate DESC
	END 
	-- Fin [Activos_Actualizados <==> Activos_Actualizados]

	--Activos_Actualizados <==> Activos_Aceptados 
	IF @VARTablaOrigen = 'Activos_Actualizados' AND @VARTablaConclicto = 'Activos_Aceptados'
	BEGIN
		--Obtiene los registros actualizados
			SELECT
				 AA.Id						IdActivo 
				,A.Barcode					CodeBar
				,1							IdEstadoActivo
				,'Activo Actualizado'		EstadoDelActivo
				,A.buildingSysId			IdEdificio
				,A.floorSysId				IdPiso
				,A.officeSysId				IdOficina
				,A.assetCategorySysId		IdCategoria
				,A.shortDescription			Descripcion
				,A.longDescription			DescripcionLarga
				,A.serialNo					Serial	
			FROM 
				assets A
				INNER JOIN assetCategory AC
				ON AC.assetCategorySysId = A.assetCategorySysId		
				INNER JOIN 
				Activos_Actualizados	AA
				ON AA.CodeBar = A.Barcode	

			WHERE
				AA.CodeBar = @PCodeBar
								

		UNION ALL
		--Obtiene los registros Aceptados
			SELECT
				 AA.Id						IdActivo 
				,A.Barcode					CodeBar
				,0							IdEstadoActivo
				,'Activo Aceptado'			EstadoDelActivo
				,A.buildingSysId			IdEdificio
				,A.floorSysId				IdPiso
				,A.officeSysId				IdOficina
				,A.assetCategorySysId		IdCategoria
				,A.shortDescription			Descripcion
				,A.longDescription			DescripcionLarga
				,A.serialNo					Serial	
			FROM 
				assets A
				INNER JOIN assetCategory AC
				ON AC.assetCategorySysId = A.assetCategorySysId		
				INNER JOIN 
				Activos_Aceptados	AA
				ON AA.CodeBar = A.Barcode	

			WHERE
				AA.CodeBar = @PCodeBar				
	END 
	-- Fin [Activos_Aceptados <==> Activos_Actualizados]
	
		 
END TRY 
BEGIN CATCH 
	SET @PResultadoOUT  = 'Error al ejecutar el sp: ' + ERROR_PROCEDURE() 
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[subirFactura]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[subirFactura]
@id uniqueidentifier,
@imagen varchar(2500)
as
begin
update assets set BillNo = @imagen where assetSysId = @id
end



GO
/****** Object:  StoredProcedure [dbo].[subirGarantia]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[subirGarantia]
@id uniqueidentifier,
@imagen varchar(2500)
as
begin
update assets set GarantyTerms = @imagen where assetSysId = @id
end



GO
/****** Object:  StoredProcedure [dbo].[TomasActivosVsTodosActivos]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TomasActivosVsTodosActivos]
AS
BEGIN
    select  VA.assetSysId, 
            VA.assetItemNumber, 
            VA.Barcode, 
            VA.Status, 
            VA.Category, 
            VA.BusinessName, 
            VA.Country, 
            VA.Building, 
            VA.Sector, 
            VA.Encargado, 
            VA.cost,
            VA.shortDescription, 
            VA.longDescription, 
            CONVERT(varchar, VA.DateAdquired, 103) as DateAdquired, 
            COALESCE(Estado, 'No Encontrado') as State, 
            COALESCE(CONVERT(varchar, Fecha, 103), 'El activo no ha aparecido en ninguna toma') as TakeDate
			,ASE.Barcode AS BarcoreParent
			,ASE.shortDescription AS DescriptionParent
    from V_ASSETS VA
    left JOIN (SELECT * FROM V_ASSETS_ON_INVENTORIES2) AI ON AI.NumeroActivo = VA.Barcode
	left JOIN assets A
	ON A.assetSysId = VA.assetSysId
	LEFT JOIN assets ASE
	ON A.parentAssetSyId = ASE.assetSysId
	WHERE VA.Barcode != '0000000'
END
GO
/****** Object:  StoredProcedure [dbo].[Update_TiposAlertas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_TiposAlertas]
	
	@IdTipoAlerta int,
	@Nombre varchar(200),
	@TiempoMaximoNoLectura varchar(200),
	@Email1 varchar(200),
	@Email2 varchar(200),
	@Email3 varchar(200),
	@GestionApp bit,
	@CirculoPermitido varchar(200),
	@UsuarioPermitido varchar(200),
	@IdCirculoPermitido int,
	@IdUsuarioPermitido int,
	@Resultado varchar(100) output

AS
BEGIN
	SET NOCOUNT ON;

    UPDATE TiposAlertas set Nombre = @Nombre, TiempoMaximoNoLectura = @TiempoMaximoNoLectura, Email1 = @Email1, Email2 = @Email2, Email3 = @Email3, GestionApp = @GestionApp, CirculoPermitido = @CirculoPermitido, UsuarioPermitido = @UsuarioPermitido, IdCirculoPermitido = @IdCirculoPermitido, IdUsuarioPermitido = @IdUsuarioPermitido
	WHERE IdTipoAlerta = @IdTipoAlerta
	SET @Resultado = 'Exitoso'
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAlertasPorZona]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateAlertasPorZona]
	
	@IdAlertasPorZona int,
	@IdTipoAlerta int,
	@IDZona int,
	@CommandCenter bit,
	@Semaforo bit,
	@Sirena bit,
	@Resultado varchar(100) output


AS
BEGIN
	SET NOCOUNT ON;

	if exists(select IdAlertasPorZona from AlertasPorZona WHERE IdAlertasPorZona = @IdAlertasPorZona)
	begin
		UPDATE AlertasPorZona SET ComandCenter= @CommandCenter, Semaforo = @Semaforo, Sirena= @Sirena
		WHERE IdAlertasPorZona = @IdAlertasPorZona
		SET @Resultado = 'Exitoso'
	end
	else
	begin
		if not exists (select IdTipoAlerta from AlertasPorZona where IdTipoAlerta=@IdTipoAlerta  and IdZona = @IDZona)
		begin 
			insert into AlertasPorZona(IdTipoAlerta,IdZona,ComandCenter,Sirena,Semaforo)
			values (@IdTipoAlerta,@IDZona,@CommandCenter,@Sirena,@Semaforo)
			SET @Resultado = 'Exitoso'
		end 
	End
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAssetCategory]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateAssetCategory]
@name varchar(50),
@description varchar(50),
@updateUser varchar(50),
@depSysId uniqueidentifier,
@assetCategorySysId uniqueidentifier,
@assetVidaUtil INT

as
begin

update assetCategory set
name = @name,
description = @description,
depSysId= @depSysId,
updateUser = @updateUser,
updateDate = Getdate(),
valorvidaUtil = @assetVidaUtil 
where
assetCategorySysId=@assetCategorySysId
end

GO
/****** Object:  StoredProcedure [dbo].[UpdateAssetCategoryLifeTime]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateAssetCategoryLifeTime]
@name VARCHAR(50),
@description VARCHAR(50),
@updateUser VARCHAR(50),
@depSysId UNIQUEIDENTIFIER,
@assetCategorySysId UNIQUEIDENTIFIER,
@assetVidaUtil INT,
@assetVidaUtilProcomer VARCHAR(100)

AS
BEGIN

	UPDATE assetCategory SET
			name = @name,
			description = @description,
			depSysId= @depSysId,
			updateUser = @updateUser,
			updateDate = GETDATE(),
			valorvidaUtil = @assetVidaUtil,
			vidaUtilProcomer = @assetVidaUtilProcomer 
	WHERE
		assetCategorySysId = @assetCategorySysId
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAssets]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateAssets]
			@assetSysId  uniqueidentifier
		   ,@assetItemNumber varchar(256)
           ,@assetCategorySysId  uniqueidentifier
           ,@assetStatusSysId  uniqueidentifier
           ,@companySysId  uniqueidentifier
           ,@businessUnitSysId  uniqueidentifier
           ,@departmentSysId  uniqueidentifier
           ,@officeSysId  uniqueidentifier
           ,@buildingSysId  uniqueidentifier
           ,@floorSysId  uniqueidentifier
           ,@employeeRelated  uniqueidentifier
           ,@tagSysId  uniqueidentifier
           ,@lastEmployeeRelated  uniqueidentifier
           ,@brand varchar(100)
           ,@modelNo varchar(100)
           ,@serialNo varchar(100)
          -- ,@skuNo varchar(100)
		   ,@skuNo varchar(100)
           ,@PartNo varchar(100)
           ,@isDepreciated bit
           ,@isObsolete bit
           ,@color varchar(100)
           ,@cost money
           ,@size varchar(100)
           ,@shortDescription varchar(200)
           ,@longDescription varchar(400)
           ,@accessoriesIncluded bit
           ,@accessoriesQuantity int
           ,@accessoryDescription1 varchar(100)
           ,@accessorySerial1 varchar(50)
           ,@accessoryModel1 varchar(50)
           ,@accessoryDescription2 varchar(100)
           ,@accessorySerial2 varchar(50)
           ,@accessoryModel2 varchar(50)
           ,@accessoryDescription3 varchar(100)
           ,@accessorySerial3 varchar(50)
           ,@accessoryModel3 varchar(50)
           ,@accessoryDescription4 varchar(100)
           ,@accessorySerial4 varchar(50)
           ,@accessoryModel4 varchar(50)
           ,@updateUser uniqueidentifier
		   ,@Numb_Apr int
		   ,@Alias nvarchar(200)
		   ,@ManagementSysId uniqueidentifier
		   ,@Origen varchar(250)
		   ,@ObservacionesAdicionales varchar(750)
		   ,@AssetSubCategory varchar(200)
		   ,@ExpirationDate datetime
		   ,@DateAdquired datetime
	       ,@fechaObsolesencia int
		   ,@proveedor varchar(200)
		   ,@tiporegistro varchar(256)
		   ,@depresiado bit
		   ,@valoresidual int
		   ,@shelfSysId uniqueidentifier
		   ,@costDollars money
		   ,@paidTaxes bit
		   ,@duaNumber varchar(20)
		   ,@procomerLifeTime int
		   ,@residualValueDollars money
		   ,@ProcomerFixedAssetAccount varchar(150)
		   ,@TaxesFixedAssetAccount varchar(150)
		   ,@AccountingAccountDepreciation varchar(150)
		   ,@InternValueBooks money
		   ,@ProcomerValueBooks	money
		   ,@CapitalizationDate datetime
		   ,@FTZInvestment varchar(150)
		   ,@SAPNumber varchar(100)
		   ,@CostCenter varchar(100)
		   ,@AssetClass varchar(100)
		   ,@LogicoA int
		   ,@LogicoB int
AS
BEGIN

 UPDATE [assets]
   SET [assetItemNumber] = @assetItemNumber
      ,[assetCategorySysId] = @assetCategorySysId
      ,[assetStatusSysId] = @assetStatusSysId
      ,[companySysId] = @companySysId
      ,[businessUnitSysId] = @businessUnitSysId
      ,[departmentSysId] = @departmentSysId
      ,[officeSysId] = @officeSysId
      ,[buildingSysId] = @buildingSysId
      ,[floorSysId] = @floorSysId
      ,[employeeRelated] = @employeeRelated      
      ,[lastEmployeeRelated] = @lastEmployeeRelated
      ,[brand] = @brand
      ,[modelNo] = @modelNo
      ,[serialNo] = @serialNo
      --,[skuNo] = @skuNo
	  ,[skuNo] = @skuNo
      ,[PartNo] = @PartNo
      ,[isDepreciated] = @isDepreciated
      ,[isObsolete] = @isObsolete
      ,[color] = @color
      ,[cost] = @cost
      ,[size] = @size
      ,[shortDescription] = @shortDescription
      ,[longDescription] = @longDescription
      ,[accessoriesIncluded] = @accessoriesIncluded
      ,[accessoriesQuantity] = @accessoriesQuantity
      ,[accessoryDescription1] = @accessoryDescription1
      ,[accessorySerial1] = @accessorySerial1
      ,[accessoryModel1] = @accessoryModel1
      ,[accessoryDescription2] = @accessoryDescription2
      ,[accessorySerial2] = @accessorySerial2
      ,[accessoryModel2] = @accessoryModel2
      ,[accessoryDescription3] = @accessoryDescription3
      ,[accessorySerial3] = @accessorySerial3
      ,[accessoryModel3] = @accessoryModel3
      ,[accessoryDescription4] = @accessoryDescription4
      ,[accessorySerial4] = @accessorySerial4
      ,[accessoryModel4] = @accessoryModel4
      ,[updateUser] = @updateUser
      ,[updateDate] = getDate()
	  ,[NUMB_APR] = @Numb_Apr 
	  ,[Alias] = @Alias
	  ,managementSysID = @ManagementSysId
	  ,Origen = @Origen
	  ,ObservacionesAdicionales = @ObservacionesAdicionales
	  ,assetSubcategory = @AssetSubCategory
	  ,DateAdquired = @DateAdquired
	  ,expirationDate = @ExpirationDate
	  --,FechaObsolesencia = @fechaObsolesencia
	  ,proveedor = @proveedor
	  ,TipoRegistro  = @tiporegistro
	  ,Depreciado  = @depresiado
	  ,ValorResidual  = @valoresidual
	  ,ShelfSysId = @shelfSysId
	  ,Placa = @assetItemNumber
	  ,[costDollars] = @costDollars
	  ,[paidTaxes] = @paidTaxes
	  ,[duaNumber] = @duaNumber
	  --,[procomerLifeTime] = @procomerLifeTime
	  ,[residualValueDollars] = @residualValueDollars
	  ,[ProcomerFixedAssetAccount] = @ProcomerFixedAssetAccount
	  ,[TaxesFixedAssetAccount] = @TaxesFixedAssetAccount
	  ,[AccountingAccountDepreciation] = @AccountingAccountDepreciation 
	  ,[InternValueBooks] = @InternValueBooks 
	  ,[ProcomerValueBooks] = @ProcomerValueBooks	
	  ,[CapitalizationDate] = @CapitalizationDate 
	  ,[FTZInvestment] = @FTZInvestment
	  ,[SAPNumber] = @SAPNumber
	  ,[CostCenter] = @CostCenter
	  ,[AssetClass] =   @AssetClass
	  ,[Logico_A] = @LogicoA
	  ,[Logico_B] = @LogicoB
	  
 WHERE [assetSysId] = @assetSysId;
 

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateAssetStatus]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 19-jun-2012
-- Description:	UpdateAssetStatus
-- =============================================
CREATE PROCEDURE [dbo].[UpdateAssetStatus]
	-- Add the parameters for the stored procedure here
		    @assetStatusSysId uniqueidentifier	
		   ,@name varchar(50)
           ,@description varchar(150)
           ,@updateUser uniqueidentifier
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [assetStatus]
   SET [name] = @name 
      ,[description] = @description 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()      
 WHERE [assetStatusSysId] = @assetStatusSysId

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateBuilding]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	UpdateBuilding
-- =============================================
CREATE PROCEDURE [dbo].[UpdateBuilding]
	-- Add the parameters for the stored procedure here			
	     @name varchar(50) 
		,@description varchar(150)
		,@updateUser uniqueidentifier
        ,@buildingSysId uniqueidentifier	
        ,@companySysId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE [buildings]
   SET [name] = @name 
      ,[description] = @description 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()
      ,[companySysId] = @companySysId
 WHERE [buildingSysId] = @buildingSysId
	
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateBusinessUnit]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	[UpdateBusinessUnit]
-- =============================================
CREATE PROCEDURE [dbo].[UpdateBusinessUnit]
	-- Add the parameters for the stored procedure here			
		    @businessUnitSysId uniqueidentifier
		   ,@name  varchar(50)
           ,@description  varchar(150) 
           ,@departmentSysId  uniqueidentifier 
           ,@updateUser  uniqueidentifier 
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   UPDATE [businessUnit]
   SET [name] = @name 
      ,[description] = @description 
      ,[departmentSysId] = @departmentSysId 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()      
 WHERE [businessUnitSysId] = @businessUnitSysId 



   
  
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCatalogo]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 15/02/2013
-- Description:	actualizar catalogo
-- =============================================
CREATE PROCEDURE [dbo].[UpdateCatalogo]
	-- Add the parameters for the stored procedure here
	@CatalogoSysId uniqueidentifier,
	@Codigo varchar(20),
	@Descripcion varchar (100),
	@tipo varchar(200)
AS
BEGIN

	UPDATE catalogo SET codigo = @Codigo, descripcion = @Descripcion, Tipo= @tipo
	WHERE catalogoSysId = @CatalogoSysId       
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCompany]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	UpdateCompany
-- =============================================
Create PROCEDURE [dbo].[UpdateCompany]
	-- Add the parameters for the stored procedure here			
		    @name varchar(50)
           ,@description varchar(150)
           ,@updateUser uniqueidentifier           
		   ,@companySysId uniqueidentifier 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE [companies]
   SET [name] = @name 
      ,[description] = @description 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()       
 WHERE [companySysId] = @companySysId






END



GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartment]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	UpdateDepartment
-- =============================================
-- =============================================
-- Updated by: Oswaldo Dávila
-- Update date: 25 september 2017
-- Description: managementSysId removed from procedure
-- =============================================
CREATE PROCEDURE [dbo].[UpdateDepartment]
	-- Add the parameters for the stored procedure here
	        @deptSysId  uniqueidentifier
           --,@gerenciaSysId  uniqueidentifier
           ,@companySysId  uniqueidentifier
           ,@name varchar(50)
           ,@description varchar(100)
           ,@supervisorSysId uniqueidentifier
           ,@updateUser uniqueidentifier
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   UPDATE [departments]
	   SET [companySysId] = @companySysId 
		  --,managementSysId = @gerenciaSysId
		  ,[name] = @name 
		  ,[description] = @description 
		  ,[supervisor] = @supervisorSysId
		  ,[updateUser] = @updateUser 
		  ,[updateDate] = GETDATE()      
	WHERE [deptSysId] = @deptSysId

		
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 21-jun-2012
-- Description:	InsertEmployee
-- =============================================

CREATE PROCEDURE [dbo].[UpdateEmployee]
	-- Add the parameters for the stored procedure here			
            @employeeSysId uniqueidentifier
           ,@companySysId  uniqueidentifier 
           ,@managementSysId uniqueidentifier 
           ,@deptSysId uniqueidentifier 
           ,@employeeNo  int 
           ,@name  varchar(50) 
           ,@lastName  varchar(50) 
           ,@tagSysId  uniqueidentifier 
           ,@id  varchar(100) 
           ,@phone1  varchar(20) 
           ,@cell  varchar(20) 
           ,@email  varchar(128) 
           ,@active  bit 
           ,@hireDate  datetime 
           ,@endOfLaboralRelationshipDate  datetime 
           ,@updateUser uniqueidentifier 
           

        
           
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [employees]
   SET [companySysId] = @companySysId 
      ,[managementSysId] = @managementSysId 
      ,[deptSysId] = @deptSysId 
      ,[employeeNo] = @employeeNo 
      ,[name] = @name 
      ,[lastName] = @lastName 
      ,[tagSysId] = @tagSysId 
      ,[id] = @id 
      ,[phone1] = @phone1 
      ,[cell] = @cell 
      ,[email] = @email 
      ,[active] = @active 
      ,[hireDate] = @hireDate 
      ,[endOfLaboralRelationshipDate] = @endOfLaboralRelationshipDate 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()       
 WHERE [employeeSysId] = @employeeSysId

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateFloor]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 13 jun 2012
-- Description:	UpdateFloor
-- =============================================
CREATE PROCEDURE [dbo].[UpdateFloor]
	-- Add the parameters for the stored procedure here
		 	@floorSysId  uniqueidentifier
           ,@buildingSysId  uniqueidentifier
           ,@companySysId  uniqueidentifier
           ,@name varchar(50)
           ,@description  varchar(150)
           ,@updateUser  uniqueidentifier
          
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   UPDATE [floors]
   SET [buildingSysId] = @buildingSysId
      ,[companySysId] = @companySysId 
      ,[name] = @name
      ,[description] = @description
      ,[updateUser] = @updateUser
      ,[updateDate] = GETDATE()
      ,[rowGuid] = NEWID()
 WHERE [floorSysId] = @floorSysId

   
   		
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateLogicoA]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateLogicoA]
	
	@IdLogicoA int,
	@Nombre varchar(50),
	@Descripcion varchar(100),
	@Usuario varchar(50),
	@Resultado varchar(100) output

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @userSysId uniqueidentifier
	IF(@Usuario = 'Sin Asignar')
	BEGIN
		SET @userSysId ='00000000-0000-0000-0000-000000000000'
	END
	ELSE
	BEGIN
		SELECT @userSysId = userSysId FROM users WHERE username = @Usuario
	END

	UPDATE LogicoA SET Nombre = @Nombre, Descripcion = @Descripcion, userSysId = @userSysId
		WHERE IdLogicoA = @IdLogicoA
		SET @Resultado = 'Exitoso'
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateLogicoB]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateLogicoB]
	
	@IdLogicoB int,
	@IdLogicoA int,
	@Nombre varchar(50),
	@Descripcion varchar(100),
	@Usuario varchar(50),
	@Resultado varchar(100) output

AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @userSysId uniqueidentifier
	IF(@Usuario = 'Sin Asignar')
	BEGIN
		SET @userSysId ='00000000-0000-0000-0000-000000000000'
	END
	ELSE
	BEGIN
		SELECT @userSysId = userSysId FROM users WHERE username = @Usuario
	END

	UPDATE LogicoB SET Nombre = @Nombre, Descripcion = @Descripcion, userSysId = @userSysId
		WHERE IdLogicoB = @IdLogicoB
		SET @Resultado = 'Exitoso'
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateManagement]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Berny Ruiz
-- Create date: 25-Ene-2013
-- Description: Editar Gerencia 
-- =============================================
CREATE PROCEDURE [dbo].[UpdateManagement] 
	-- Add the parameters for the stored procedure here
	@managementSysId uniqueidentifier,
	@name varchar(50),
	@description varchar(200),
	@companySysId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Management
	SET name=@name,
	    description=@description,
	    companySysId=@companySysId
	WHERE managementSysId=@managementSysId	    	
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateNewInventoryTake]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateNewInventoryTake] 
	-- Add the parameters for the stored procedure here
	@TakeId uniqueidentifier,
    @TakeName varchar(150), 
    @TakeDescription varchar(150), 
    @TakeDate datetime, 
    @TakeStatus bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
    UPDATE [dbo].[TomaFisica]
       SET [TakeName] = @TakeName
          ,[TakeDescription] = @TakeDescription
          ,[TakeDate] = @TakeDate
          ,[TakeStatus] = @TakeStatus
     WHERE [IdToma] = @TakeId
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateOffice]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOffice]
	-- Add the parameters for the stored procedure here
            @officeSysId uniqueidentifier          
           --,@businessUnitSysId uniqueidentifier 
           ,@companySysId uniqueidentifier
           ,@buildingSysId uniqueidentifier
           ,@floorSysId uniqueidentifier           
           ,@tagSysId uniqueidentifier 
           ,@name varchar(50) 
           ,@description varchar(150) 
           ,@updateUser uniqueidentifier
           ,@IsEnable bit           

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	UPDATE [officeses]
   SET [companySysId] = @companySysId --'00000000-0000-0000-0000-000000000000' 
      ,[buildingSysId] = @buildingSysId --'00000000-0000-0000-0000-000000000000' 
      ,[businessUnitSysId] = '00000000-0000-0000-0000-000000000000' 
      ,[floorSysId] = @floorSysId 
      ,[deptSysId] = '00000000-0000-0000-0000-000000000000' 
      ,[tagSysId] = @tagSysId 
      ,[name] = @name 
      ,[description] = @description 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()
      ,[IsEnable] =   @IsEnable    
 WHERE [officeSysId] = @officeSysId 
	 
END




GO
/****** Object:  StoredProcedure [dbo].[UpdateparentAssetSyId]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateparentAssetSyId]
	
	@assetSysId uniqueidentifier,
	@parentAssetSyId uniqueidentifier,
	@Resultado varchar(200) output
AS
BEGIN
	SET NOCOUNT ON;

	IF NOT EXISTS(SELECT assetSysId FROM assets WHERE assetSysId = @assetSysId)
	BEGIN
		SELECT @Resultado = 'Activo no existente'
		return;
	END

    UPDATE assets SET parentAssetSyId = @parentAssetSyId
	WHERE assetSysId = @assetSysId
	SELECT @Resultado = 'Exitoso'

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProvider]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: June-21-2012
-- Description:	InsertProvider
-- =============================================
CREATE PROCEDURE [dbo].[UpdateProvider]
	-- Add the parameters for the stored procedure here
			@providerSysId uniqueidentifier
	       ,@providerName varchar(150) 
           ,@contactName varchar(100) 
           ,@phone1 varchar(20) 
           ,@cell varchar(20) 
           ,@email varchar(128)
           ,@active bit 
           ,@entryUser uniqueidentifier 
           ,@entryDate datetime 
           ,@updateUser uniqueidentifier 
          
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [providers]
   SET [providerName] = @providerName 
      ,[contactName] = @contactName 
      ,[phone1] = @phone1 
      ,[cell] = @cell 
      ,[email] = @email      
      ,[active] = @active 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()
 WHERE [providerSysId] = @providerSysId 

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateReader]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdateReader]
			@brand  varchar(50) 
           ,@ip  varchar(15) 
           ,@port  varchar(10) 
           ,@serial  varchar(50) 
           ,@model  varchar(50) 
           ,@macAddress  varchar(100) 
           ,@username  varchar(50) 
           ,@password  varchar(100) 
           ,@readerSysId uniqueidentifier
           
as
begin
	if @password=''
	begin
		update readers set brand=@brand, ip=@ip, port=@port, serial=@serial, model=@model, 
		macAddress=@macAddress, username=@username
		where readerSysId=@readerSysId
	end
	else
	begin
		update readers set brand=@brand, ip=@ip, port=@port, serial=@serial, model=@model, 
		macAddress=@macAddress, username=@username, password=@password
		where readerSysId=@readerSysId
	end

end



GO
/****** Object:  StoredProcedure [dbo].[UpdateShelf]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UpdateShelf]
	-- Add the parameters for the stored procedure here
            @ShelfSysId uniqueidentifier          
           ,@businessUnitSysId uniqueidentifier
		   ,@officeSysId uniqueidentifier
           ,@floorSysId uniqueidentifier           
           ,@tagSysId uniqueidentifier 
           ,@name varchar(50) 
           ,@description varchar(150) 
           ,@updateUser uniqueidentifier
           ,@IsEnable bit           

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	UPDATE [shelf]
   SET [companySysId] = '00000000-0000-0000-0000-000000000000' 
      ,[buildingSysId] = '00000000-0000-0000-0000-000000000000' 
      ,[businessUnitSysId] = @businessUnitSysId 
      ,[floorSysId] = @floorSysId 
	  ,[officeSysId] = @officeSysId
      ,[deptSysId] = '00000000-0000-0000-0000-000000000000' 
      ,[tagSysId] = @tagSysId 
      ,[name] = @name 
      ,[description] = @description 
      ,[updateUser] = @updateUser 
      ,[updateDate] = GETDATE()
      ,[IsEnable] =   @IsEnable    
 WHERE [ShelfSysId] = @ShelfSysId 
	 
END





GO
/****** Object:  StoredProcedure [dbo].[UpdateTagType]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 18-jun-2012
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateTagType]
	-- Add the parameters for the stored procedure here
	   @tagTypeSysId uniqueidentifier 
      ,@code  varchar(50)  
      ,@name  varchar(50) 
      ,@description  varchar(150) 
      ,@assetCategorySysId uniqueidentifier 
      ,@updateUser uniqueidentifier 
      
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [tagTypes]
   SET [code] = @code 
      ,[name] = @name 
      ,[description] = @description 
      ,[updateUser] = @updateUser 
      ,[updateDate] = getdate()
   WHERE [tagTypeSysId] = @tagTypeSysId  


END



GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 24-jul-2012
-- Description:	UpdateUser
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUser]
	-- Add the parameters for the stored procedure here
	  @username varchar(50)
	 ,@userSysId uniqueidentifier
	 ,@email varchar(128)	 
	 ,@comment varchar(256)
	 ,@isApproved bit
	 ,@isLockedOut bit 
	 ,@applicationName varchar(50) 
	 ,@idrol uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [users]
     SET   [username] = @username      
		  ,[email] = @email 
		  ,[comment] = @comment 		   
		  ,[isApproved] = @isApproved 
		  ,[isLockedOut] = @isLockedOut		 
		  ,Idrol= @idrol 
 WHERE [userSysId] = @userSysId and 
       [applicationName] = @applicationName  


END



GO
/****** Object:  StoredProcedure [dbo].[UpdateUserPasswd]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 24-jul-2012
-- Description:	UpdateUser
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUserPasswd]
	-- Add the parameters for the stored procedure here
	  @username varchar(50)
	 ,@passwd varchar(128)
	 ,@userSysId uniqueidentifier
	 ,@email varchar(128)	 
	 ,@comment varchar(256)
	 ,@isApproved bit
	 ,@isLockedOut bit 
	 ,@applicationName varchar(50) 
	 ,@idrol uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE	[users]
     SET	[username] = @username 
			,[password] = @passwd
			,[email] = @email 
			,[comment] = @comment 		   
			,[isApproved] = @isApproved 
			,[isLockedOut] = @isLockedOut		 
			,Idrol= @idrol 
 WHERE [userSysId] = @userSysId AND 
       [applicationName] = @applicationName  


END



GO
/****** Object:  StoredProcedure [dbo].[UpdateUserPermissions]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marco Lepiz
-- Create date: 06-jul-2012
-- Description:	UpdateUserPermissions
-- =============================================
create PROCEDURE [dbo].[UpdateUserPermissions]
	-- Add the parameters for the stored procedure here
	 @permissionSysId uniqueidentifier
	,@allowed bit
	,@userSysId uniqueidentifier
	,@updateUser uniqueidentifier
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [permissions]
	SET  allowed = @allowed 
	    ,updateUser = @updateUser
	    ,updateDate = GETDATE()
	WHERE permissionSysId = @permissionSysId 
		  and userSysId = @userSysId;
	
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateZonas]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateZonas]

	@IdZonas int,
	@IpZonas varchar(200),
	@NumeroAntena int,
	@NombreZona varchar(200),
	@Semaforo bit,
	@Acceso bit,
	@Actualizable bit,
	@EnciendeSemaforo bit, 
	@PuertoRojo int,
	@PuertoVerde int,
	@PuertoGpio int,
	@Resultado varchar(100) output

AS
BEGIN
	SET NOCOUNT ON;

    UPDATE Zonas SET Ip = @IpZonas, NumeroAntena = @NumeroAntena, NombreZona = @NombreZona, SEMAFORO = @Semaforo, ACCESO = @Acceso,
	Actualizable = @Actualizable, EnciendeSemaforo = @EnciendeSemaforo, PuertoRojo = @PuertoRojo, PuertoVerde = @PuertoVerde, PuertoGpio = @PuertoGpio
	WHERE IDZona = @IdZonas
	SET @Resultado = 'Exitoso'
END
GO
/****** Object:  StoredProcedure [dbo].[ValidateExisteUser]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		JOSELYN MONGE
-- Create date: 07-08-2017
-- Description:	ValidateExisteUser
-- =============================================
CREATE PROCEDURE [dbo].[ValidateExisteUser]
	-- Add the parameters for the stored procedure here			
            @username varchar(255) 
           ,@applicationName varchar(255) 
    
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS( SELECT [userSysId]
      ,[username]
      ,[applicationName]     
  FROM [users]
  WHERE  [username] = @username AND
       [applicationName]  = @applicationName)
	   begin
	   INSERT INTO [users]
	   ([userSysId]
      ,[username]
      ,[applicationName]
	  ,[email]
	  ,[comment]
	  ,[password]
	  ,[isApproved]
	  ,[creationDate]
	  ,[lastActivityDate]
	  ,[lastLoginDate]
	  ,[lastPasswordChangedDate]
	  ,[isOnLine]
	  ,[isLockedOut]
	  ,[passwordQuestion]
      ,[passwordAnswer]
	  ,[lastLockedOutDate]
      ,[failedPasswordAttemptCount]
      ,[failedPasswordAttemptWindowStart]
      ,[failedPasswordAnswerAttemptCount]
      ,[failedPasswordAnswerAttemptWindowStart]
      ,[Idrol])
	   Values( NEWID(),@username,@applicationName,@username+'@activeid.com','Usuario Ingresado mediante Active Directory','dnv9xYYGxnux7RwkABVVVg==',1,GETDATE(),
	   GETDATE(),GETDATE(),GETDATE(),1,0,'','',GETDATE(),0,GETDATE(),0,GETDATE(),'CEE3B889-C4D2-4E36-9C55-F03780398BB3')
	   END
      
END




GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		MARCO LEPIZ
-- Create date: 12-JUN-2012
-- Description:	ValidateUser
-- =============================================
CREATE PROCEDURE [dbo].[ValidateUser]
	-- Add the parameters for the stored procedure here			
            @username varchar(255) 
           ,@applicationName varchar(255) 
    
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT [userSysId]
      ,[username]
      ,[applicationName]
      ,[email]
      ,[comment]
      ,[password]
      ,[passwordQuestion]
      ,[passwordAnswer]
      ,[isApproved]
      ,[lastActivityDate]
      ,[lastLoginDate]
      ,[lastPasswordChangedDate]
      ,[creationDate]
      ,[isOnLine]
      ,[isLockedOut]
      ,[lastLockedOutDate]
      ,[failedPasswordAttemptCount]
      ,[failedPasswordAttemptWindowStart]
      ,[failedPasswordAnswerAttemptCount]
      ,[failedPasswordAnswerAttemptWindowStart]
  FROM [users]
WHERE  [username] = @username AND
       [applicationName]  = @applicationName
      
	 
END



GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertAssets]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertAssets]

	@NumeroActivo varchar(50),
	@MarcaActivo varchar(100),
	@ModeloActivo varchar(100),
	@SerieActivo varchar(100),
	@NumeroParte varchar(100),
	@ImpuestoExonerado bit,
	@Depreciado bit,
	@CostoActivoColones money,
	@CostoActivoDolares money,
	@DescripcionCorta varchar(1200),
	@DescripcionLarga varchar(1400),
	@NumeroFactura varchar(1500),
	@FechaCompraActivo datetime,
	@DiasVidaUtilCorporativo varchar(10),
	@CostoRescateColones varchar(100),
	@CostoRescateDolares varchar(100),
	@CuentaContableDepreciacion varchar(100),
	@FechaActivacion datetime,
	@CentroCostos varchar(100),
	@DescripcionEstado varchar(1000),
	@EstadoActivo varchar(50),
	@CategoriaActivo varchar(50),
	@LocalizacionA varchar(50),
	@LocalizacionB varchar(50),
	@LocalizacionC varchar(50),
	@LocalizacionD varchar(50),
	@LocalizacionLogicoA varchar(50),
	@LocalizacionLogicoB varchar(50),
	@IdEmpleado varchar(50),
	@JustificacionTecnica varchar(50),
	@Observacion varchar(50),
	@Barcode varchar(128),
	@Resultado varchar(200) output
	
AS
BEGIN

	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION

		DECLARE @assetCategorySysId uniqueidentifier
		IF(@CategoriaActivo= '')
		BEGIN
			SET @assetCategorySysId ='00000000-0000-0000-0000-000000000000'
		END		
		ELSE 
		BEGIN
			IF NOT EXISTS(SELECT assetCategorySysId FROM assetCategory WHERE companyIdExtern = @CategoriaActivo)
			BEGIN
				
				SELECT @Resultado = 'Categoría Activo no existe'
				Rollback
				return;
			END
			
			SELECT @assetCategorySysId = assetCategorySysId FROM assetCategory WHERE companyIdExtern = @CategoriaActivo
		END 

		DECLARE @assetStatusSysId uniqueidentifier
		IF(@EstadoActivo = '')
		BEGIN
			SET @assetStatusSysId = '00000000-0000-0000-0000-000000000000'
		END
		ELSE
		BEGIN
			IF NOT EXISTS(SELECT assetStatusSysId FROM assetStatus WHERE companyIdExtern = @EstadoActivo)
			BEGIN
				
				SELECT @Resultado = 'Estado Activo no existe'
				Rollback
				return;
			END
			SELECT @assetStatusSysId = assetStatusSysId FROM assetStatus WHERE companyIdExtern = @EstadoActivo
		END

		DECLARE @companySysId uniqueidentifier
		IF(@LocalizacionA= '')
		BEGIN
			SET @companySysId = '00000000-0000-0000-0000-000000000000'
		END
		ELSE
		BEGIN
			IF NOT EXISTS(SELECT companyIdExtern FROM companies WHERE companyIdExtern = @LocalizacionA)
			BEGIN
				SELECT @Resultado = 'Localización A no existe'
				Rollback
				return;
			END
			SELECT @companySysId = companySysId FROM companies WHERE companyIdExtern = @LocalizacionA
		END
		
		DECLARE @buildingSysId uniqueidentifier
		IF(@LocalizacionB = '')
		BEGIN
			SET @buildingSysId = '00000000-0000-0000-0000-000000000000'
		END
		ELSE
		BEGIN
			IF NOT EXISTS(SELECT companyIdExtern FROM buildings WHERE companyIdExtern = @LocalizacionB)
			BEGIN
				SELECT @Resultado = 'Localización B no existe'
				Rollback
				return;
			END
			SELECT @buildingSysId = buildingSysId FROM buildings WHERE companyIdExtern = @LocalizacionB
		END

		DECLARE @floorSysId uniqueidentifier
		IF(@LocalizacionC = '')
		BEGIN
			SET @floorSysId = '00000000-0000-0000-0000-000000000000'
		END
		ELSE
		BEGIN
			IF NOT EXISTS(SELECT companyIdExtern FROM floors WHERE companyIdExtern = @LocalizacionC)
			BEGIN
				SELECT @Resultado = 'Localización C no existe'
				Rollback
				return;
			END
			SELECT @floorSysId = floorSysId FROM floors WHERE companyIdExtern = @LocalizacionC
		END

		DECLARE @officeSysId uniqueidentifier
		IF(@LocalizacionD = '')
		BEGIN
			SET @officeSysId = '00000000-0000-0000-0000-000000000000'
		END
		ELSE
			IF NOT EXISTS(SELECT companyIdExtern FROM officeses WHERE companyIdExtern = @LocalizacionD)
			BEGIN
				SELECT @Resultado = 'Localización D no existe'
				Rollback
				return;
			END
			SELECT @officeSysId = officeSysId FROM officeses WHERE companyIdExtern = @LocalizacionD
		BEGIN
		PRINT '160'
		DECLARE @LogicoA int
		IF(@LocalizacionLogicoA = '')
		BEGIN
			SET @LogicoA = '0'
		END
		ELSE
			IF NOT EXISTS(SELECT companyIdExtern FROM LogicoA WHERE companyIdExtern = @LocalizacionLogicoA)
			BEGIN
				SELECT @Resultado = 'Localización Logico A no existe'
				Rollback
				return;
			END
			SELECT @LogicoA = IdLogicoA FROM LogicoA WHERE companyIdExtern = @LocalizacionLogicoA
		END

		DECLARE @LogicoB int
		IF(@LocalizacionLogicoB = '')
		BEGIN
			SET @LogicoB = '0'
		END
		ELSE
		BEGIN
			IF NOT EXISTS(SELECT companyIdExtern FROM LogicoB WHERE companyIdExtern = @LocalizacionLogicoB)
			BEGIN
				SELECT @Resultado = 'Localización Logico B no existe'
				Rollback
				return;
			END
			SELECT @LogicoB = IdLogicoB FROM LogicoB WHERE companyIdExtern = @LocalizacionLogicoB
		END

		DECLARE @employeeRelated uniqueidentifier
		IF(@IdEmpleado = '')
		BEGIN
			SET @employeeRelated = '00000000-0000-0000-0000-000000000000'
		END
		ELSE
		BEGIN
			IF NOT EXISTS(SELECT * FROM employees WHERE companyIdExtern = @IdEmpleado)
			BEGIN 
				SELECT @Resultado = 'Empleado no existe'
				Rollback
				return;
			END
			SELECT @employeeRelated = employeeSysId FROM employees WHERE companyIdExtern = @IdEmpleado
		END

		IF EXISTS(SELECT companyIdExtern FROM assets WHERE companyIdExtern = @NumeroActivo)
		BEGIN
			UPDATE assets
			SET assetItemNumber = @NumeroActivo,
				assetStatusSysId = @assetStatusSysId,
				assetCategorySysId = @assetCategorySysId,
				companySysId = @companySysId,
				buildingSysId = @buildingSysId,
				floorSysId = @floorSysId,
				officeSysId = @officeSysId,
				employeeRelated = @employeeRelated,
				modelNo = @ModeloActivo,
				serialNo = @SerieActivo,
				PartNo = @NumeroParte,
				cost = @CostoActivoColones,
				shortDescription = @DescripcionCorta,
				longDescription = @DescripcionLarga,
				updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C',
				accessoryDescription2 = CONVERT(VARCHAR(150), GETDATE(), 20) , -- La fecha de Actualizacion del WCF se guarda en otro campo, no en el UPDATEDATE.
			
				BillNo = @NumeroFactura,
				DateAdquired= @FechaCompraActivo,
				Depreciado = @Depreciado,
				respaldodescrip = @DescripcionEstado,
				costDollars = @CostoActivoDolares,
				paidTaxes = @ImpuestoExonerado,
				ProcomerFixedAssetAccount = @CostoRescateDolares,
				TaxesFixedAssetAccount = @CostoRescateColones,
				AccountingAccountDepreciation = @CuentaContableDepreciacion,
				CapitalizationDate = @FechaActivacion,
				CostCenter = @CentroCostos,
				Logico_A = @LogicoA,
				Logico_B = @LogicoB,
				procommerLifeTime = @DiasVidaUtilCorporativo,
				ObservacionesAdicionales = @Observacion,
				size = @JustificacionTecnica ,
				Barcode = @Barcode,
				Placa = @Barcode
				WHERE companyIdExtern = @NumeroActivo

			SET @Resultado = 'Exito'
			Select @Resultado AS '@Resultado'
		END
		ELSE
		BEGIN
			INSERT INTO assets(
				assetSysId,
				assetItemNumber,
				assetCategorySysId,
				assetStatusSysId,
				companySysId,
				managementSysID,
				departmentSysId,
				businessUnitSysId,
				buildingSysId,
				floorSysId,
				officeSysId,
				employeeRelated,
				tagSysId,
				lastEmployeeRelated,
				brand,
				modelNo,
				serialNo,
				skuNo,
				PartNo,
				isDepreciated,
				isObsolete,
				color,
				cost,
				size,
				shortDescription,
				longDescription,
				accessoriesIncluded,
				accessoriesQuantity,
				accessoryDescription1,
				accessorySerial1,
				accessoryModel1,
				accessoryDescription2,
				accessorySerial2,
				accessoryModel2,
				accessoryDescription3,
				accessorySerial3,
				accessoryModel3,
				accessoryDescription4,
				accessorySerial4,
				accessoryModel4,
				entryUser,
				entryDate,
				updateUser,
				updateDate,
				rowGuid,
				BillNo,
				DateAdquired,
				ProviderSysId,
				GarantyTerms,
				expirationDate,
				unidNumber,
				NUMB_APR,
				Alias,
				Origen,
				ObservacionesAdicionales,
				assetSubcategory,
				Barcode,-- IMPORTANTE
				proveedor,
				TipoRegistro,
				Depreciado,
				ValorResidual,
				respaldodescrip,
				Placa,-- 65  IMPORTANTE
				Adquisicion,
				ShelfSysId,
				costDollars,
				paidTaxes,
				duaNumber,
				residualValueDollars,
				ProcomerFixedAssetAccount,
				TaxesFixedAssetAccount,
				AccountingAccountDepreciation,
				InternValueBooks,
				ProcomerValueBooks,
				CapitalizationDate,
				FTZInvestment,
				SAPNumber,
				CostCenter,
				AssetClass,
				IdDescripcionLarga,
				IdDescripcionCorta,
				Logico_A,
				Logico_B,
				companyIdExtern,
				procommerLifeTime)
			VALUES(
				NEWID(),
				@NumeroActivo,
				@assetCategorySysId,
				@assetStatusSysId,
				@companySysId,
				'00000000-0000-0000-0000-000000000000',
				'00000000-0000-0000-0000-000000000000',
				'00000000-0000-0000-0000-000000000000',
				@buildingSysId,
				@floorSysId,
				@officeSysId,
				@employeeRelated,
				'00000000-0000-0000-0000-000000000000',
				'00000000-0000-0000-0000-000000000000',
				@MarcaActivo,
				@ModeloActivo,
				@SerieActivo,
				' ',
				@NumeroParte,
				0,
				0,
				' ',
				@CostoActivoColones,
				@JustificacionTecnica,
				@DescripcionCorta,
				@DescripcionLarga,
				0,
				0,
				' ',
				' ',
				' ',
				' ',
				' ',
				' ',
				' ',
				' ',
				' ',
				' ',
				' ',
				' ',
				'3A8E10C2-8FB5-4309-9752-AE2A3099371C',
				GETDATE(),
				'00000000-0000-0000-0000-000000000000',
				GETDATE(),
				NEWID(),
				@NumeroFactura,
				@FechaCompraActivo,
				'00000000-0000-0000-0000-000000000000',
				' ',
				GETDATE(),
				0,
				' ',
				' ',
				' ',
				@Observacion,
				' ',
				@Barcode,
				' ',
				'Activos',
				@Depreciado,
				'0',
				@DescripcionEstado,
				@Barcode,
				' ',
				'00000000-0000-0000-0000-000000000000',
				@CostoActivoDolares,
				@ImpuestoExonerado,
				'0',
				'0.00',
				@CostoRescateDolares,
				@CostoRescateColones,
				@CuentaContableDepreciacion,
				0.00,
				0.00,
				@FechaActivacion,
				' ',
				' ',
				@CentroCostos,
				' ',
				0,
				0,
				@LogicoA,
				@LogicoB,
				@NumeroActivo,
				@DiasVidaUtilCorporativo)

			SET @Resultado = 'Exito'
			Select @Resultado AS '@Resultado'
		END

		-- Sí el Barcode es 0000000 ASIGNA EL TAG 'SIN ASIGNAR'
		if(@Barcode = '0000000')
			BEGIN
			Update assets set tagSysId = '00000000-0000-0000-0000-000000000000' 
			Where Barcode = @Barcode
			END 

			-- Sí no continua con su flujo normal
		ELSE
			BEGIN
			--asigna el epc al activo por medio del barcode
		if(@Barcode <> '')
		begin	

			declare @EPC varchar(100) 
			Select @EPC =EPC from LoteEPCTAG where Consecutivo = @Barcode
			AND CategoriaTag != 'Persona' AND CategoriaTag != 'Ubicacion'
			
			if(@EPC is not null and @EPC<> '')
			begin
				Exec SP_IngresarTag @Epc
			end 
			IF EXISTS(SELECT tagSysId FROM tagRegistry WHERE tagID = @Epc)
			BEGIN
				DECLARE @TagSysId Uniqueidentifier = (SELECT tagSysId FROM tagRegistry WHERE tagID = @Epc)
				Update assets set tagSysId =  @TagSysId Where Barcode = @Barcode
				Update LoteEPCTAG set EstaAsociado = 1 
				where Consecutivo = @Barcode
			END	
		END
		END 

	
		 
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertAssets2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertAssets2]

	@NumeroActivo varchar(50),
	@MarcaActivo varchar(100),
	@ModeloActivo varchar(100),
	@SerieActivo varchar(100),
	@NumeroParte varchar(100),
	@ImpuestoExonerado bit,
	@Depreciado bit,
	@CostoActivoColones money,
	@CostoActivoDolares money,
	@DescripcionCorta varchar(1200),
	@DescripcionLarga varchar(1400),
	@NumeroFactura varchar(1500),
	@FechaCompraActivo datetime,
	@DiasVidaUtilCorporativo varchar(10),
	@CostoRescateColones varchar(100),
	@CostoRescateDolares varchar(100),
	@CuentaContableDepreciacion varchar(100),
	@FechaActivacion datetime,
	@CentroCostos varchar(100),
	@DescripcionEstado varchar(1000),
	@EstadoActivo varchar(50),
	@CategoriaActivo varchar(50),
	@LocalizacionA varchar(50),
	@LocalizacionB varchar(50),
	@LocalizacionC varchar(50),
	@LocalizacionD varchar(50),
	@LocalizacionLogicoA varchar(50),
	@LocalizacionLogicoB varchar(50),
	@IdEmpleado varchar(50),
	@JustificacionTecnica varchar(50),
	@Observacion varchar(50)
	
AS
BEGIN
INSERT INTO Temp_Assets_2 values(@NumeroActivo ,@MarcaActivo ,@ModeloActivo ,@SerieActivo ,@NumeroParte ,@ImpuestoExonerado ,@Depreciado ,@CostoActivoColones,@CostoActivoDolares ,@DescripcionCorta ,@DescripcionLarga,@NumeroFactura ,@FechaCompraActivo ,@DiasVidaUtilCorporativo ,@CostoRescateColones ,@CostoRescateDolares ,@CuentaContableDepreciacion ,@FechaActivacion ,@CentroCostos ,@DescripcionEstado ,@EstadoActivo ,@CategoriaActivo ,@LocalizacionA ,@LocalizacionB ,@LocalizacionC ,@LocalizacionD ,@LocalizacionLogicoA ,@LocalizacionLogicoB ,@IdEmpleado ,@JustificacionTecnica ,@Observacion )
end
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertCategoria]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertCategoria]

	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@Resultado varchar(200) output

AS
BEGIN

	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION

		IF EXISTS(SELECT companyIdExtern FROM assetCategory WHERE companyIdExtern = @Id)
		BEGIN
			UPDATE assetCategory
				SET name = @Nombre,
				description = @Descripcion,
				updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C', 
				updateDate = GETDATE()
			WHERE companyIdExtern = @Id 

			SET @Resultado = 'Exito'
		END
		ELSE
		BEGIN
			INSERT INTO assetCategory(
				assetCategorySysId,
				name,
				description,
				entryUser,
				entryDate,
				updateUser,
				updateDate,
				rowGuid,
				depSysId,
				valorvidaUtil,
				vidaUtilProcomer,
				companyIdExtern)
			VALUES(
				NEWID(),
				@Nombre,
				@Descripcion,
				'3A8E10C2-8FB5-4309-9752-AE2A3099371C',
				GETDATE(),
				'00000000-0000-0000-0000-000000000000',
				GETDATE(),
				NEWID(),
				'00000000-0000-0000-0000-000000000000',
				0,
				0,
				@Id)

			SET @Resultado = 'Exito'
			Select @Resultado AS '@Resultado'
		END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertCategoria2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[WCFSynchronizerInsertCategoria2]

	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50)

AS
BEGIN
INSERT INTO Temp_Categoria values (@Id,@Nombre,@Descripcion)

END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertEmployees]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertEmployees]
	
	@IdEmpleado varchar(60),
	@Nombre varchar(50),
	@Apellidos varchar(50),
	@IdPersonal varchar(100),
	@Email varchar(128),
	@Resultado varchar(200) output
AS
BEGIN

	BEGIN TRY	
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION

	IF EXISTS (SELECT companyIdExtern FROM employees WHERE companyIdExtern = @IdEmpleado)
	BEGIN
		UPDATE employees
		SET name = @Nombre,
			lastName = @Apellidos,
			id = @IdPersonal,
			email = @Email,
			updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C',
			updateDate = GETDATE()
		WHERE companyIdExtern = @IdEmpleado

		SET @Resultado = 'Exito'
	END
	ELSE
	BEGIN
		INSERT INTO employees(
			employeeSysId,
			companySysId,
			managementSysId,
			deptSysId,
			employeeNo,
			name,
			lastName,
			tagSysId,
			id,
			phone1,
			cell,
			email,
			active,
			hireDate,
			endOfLaboralRelationshipDate,
			entryUser,
			entryDate,
			updateUser,
			updateDate,
			rowGuid,
			userSysId,
			companyIdExtern)
		VALUES(NEWID(),
			'00000000-0000-0000-0000-000000000000',
			'00000000-0000-0000-0000-000000000000',
			'00000000-0000-0000-0000-000000000000',
			0,
			@Nombre,
			@Apellidos,
			'00000000-0000-0000-0000-000000000000',
			@IdPersonal,
			'0',
			'0',
			@Email,
			1,
			GETDATE(),
			GETDATE(),
			'3A8E10C2-8FB5-4309-9752-AE2A3099371C',
			GETDATE(),
			'00000000-0000-0000-0000-000000000000',
			GETDATE(),
			NEWID(),
			'3A8E10C2-8FB5-4309-9752-AE2A3099371C',
			@IdEmpleado)

			SET @Resultado = 'Exito'
			Select @Resultado AS '@Resultado'
	END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertEmployees2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertEmployees2]
	
	@IdEmpleado varchar(60),
	@Nombre varchar(50),
	@Apellidos varchar(50),
	@IdPersonal varchar(100),
	@Email varchar(128)
AS
BEGIN
	
	INSERT INTO Temp_Employees values (@IdEmpleado,@Nombre,@Apellidos,@IdPersonal,@Email)
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertEstado]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertEstado]

	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@Resultado varchar(200) output

AS
BEGIN


	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION

		IF EXISTS(SELECT companyIdExtern FROM assetStatus WHERE companyIdExtern = @Id)
		BEGIN
			UPDATE assetStatus
				SET name = @Nombre,
				description = @Descripcion,
				updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C', 
				updateDate = GETDATE()
			WHERE companyIdExtern = @Id 

			SET @Resultado = 'Exito'
		END
		ELSE
		BEGIN
			INSERT INTO [dbo].[assetStatus]
			   ([assetStatusSysId]
			   ,[name]
			   ,[description]
			   ,[entryUser]
			   ,[entryDate]
			   ,[updateUser]
			   ,[updateDate]
			   ,[rowGuid]
			   ,[companyIdExtern])
			VALUES
			   (NEWID()
			   ,@Nombre
			   ,@Descripcion
			   ,'3A8E10C2-8FB5-4309-9752-AE2A3099371C'
			   ,GETDATE()
			   ,'00000000-0000-0000-0000-000000000000'
			   ,GETDATE()
			   ,NEWID()
			   ,@Id)	
				SET @Resultado = 'Exito'
				Select @Resultado AS '@Resultado'
		END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertEstado2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WCFSynchronizerInsertEstado2]

	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50)

AS
BEGIN

INSERT INTO [dbo].[Temp_Estado]
			   (Id
			   ,Nombre
			   ,Descripcion
			  )
			VALUES
			   (@Id 
			   ,@Nombre
			   ,@Descripcion)
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationA]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[WCFSynchronizerInsertLocationA] 
	@Id varchar(50),
    @Nombre varchar(50),
    @Descripcion varchar(100),
    @Resultado varchar(200) output
AS
BEGIN

	BEGIN TRY
    SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
    BEGIN TRANSACTION

	IF EXISTS (Select companyIdExtern from companies where companyIdExtern = @Id)
	BEGIN
		 Update [dbo].[companies]
		 SET name = @Nombre,
			description = @Descripcion,
			updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C',
			updateDate = GETDATE()
		 Where companyIdExtern = @Id  

		SET @Resultado = 'Exitoso'

	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[companies]
           ([companySysId]
           ,[name]
           ,[description]
           ,[entryUser]
           ,[entryDate]
           ,[updateUser]
           ,[updateDate]
           ,[rowGuid]
           ,[companyIdExtern])
     VALUES
           (NEWID()
           ,@Nombre
           ,@Descripcion
           ,'3A8E10C2-8FB5-4309-9752-AE2A3099371C'
           ,GETDATE()
           ,'00000000-0000-0000-0000-000000000000'
           ,GETDATE()
           ,NEWID()
           ,@Id) 

		   SET @Resultado = 'Exitoso'
		   Select @Resultado AS '@Resultado'
	END

	COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationA2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WCFSynchronizerInsertLocationA2] 
	@Id varchar(50),
    @Nombre varchar(50),
    @Descripcion varchar(100)
AS
BEGIN
	Insert Temp_LocationA values (@Id, @Nombre, @Descripcion)

	
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationB]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertLocationB] 
	
	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionA varchar(60),
	@Resultado varchar(200) output
AS
BEGIN

	BEGIN TRY	
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION

	IF NOT EXISTS(SELECT companyIdExtern FROM companies WHERE companyIdExtern = @IdLocalizacionA)
	BEGIN
		SELECT @Resultado = 'Id de localización A no existe'
		Rollback
		return;
	END

	declare @companySysId uniqueidentifier
	select @companySysId = companySysId from companies WHERE companyIdExtern = @IdLocalizacionA

	IF EXISTS (SELECT companyIdExtern FROM buildings WHERE companyIdExtern = @Id)
	BEGIN
		UPDATE buildings 
		SET name = @Nombre, 
			description = @Descripcion, 
			companySysId = @companySysId,
			updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C', 
			updateDate = GETDATE()
		WHERE companyIdExtern = @Id 

		SET @Resultado = 'Exito'
	END
	ELSE
	BEGIN
	INSERT INTO buildings(
		buildingSysId,
		companySysId,
		name,
		description,
		entryUser,
		entryDate,
		updateUser,
		updateDate,
		rowGuid,
		companyIdExtern)
	VALUES(
		NEWID(),
		@companySysId,
		@Nombre,
		@Descripcion,
		'3A8E10C2-8FB5-4309-9752-AE2A3099371C',
		GETDATE(),
		'00000000-0000-0000-0000-000000000000',
		GETDATE(),
		NEWID(),
		@Id)

		SET @Resultado = 'Exito'
		Select @Resultado AS '@Resultado'
	END
	
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationB2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WCFSynchronizerInsertLocationB2] 
	
	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionA varchar(60)
AS
BEGIN
	
	Insert Temp_LocationB values (@Id,@Nombre,@Descripcion,@IdLocalizacionA)
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationC]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertLocationC]

	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionB varchar(60),
	@Resultado varchar(200) output

AS
BEGIN

	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION
	
	IF NOT EXISTS(SELECT companyIdExtern FROM buildings WHERE companyIdExtern = @IdLocalizacionB)
	BEGIN
		SELECT @Resultado = 'Id de localización B no existe'
	END

	DECLARE @companySysId uniqueidentifier
	DECLARE @buildingSysId uniqueidentifier

	select @companySysId = companySysId,  @buildingSysId = buildingSysId  from buildings WHERE companyIdExtern = @IdLocalizacionB

	IF EXISTS(SELECT companyIdExtern FROM floors WHERE companyIdExtern = @Id)
	BEGIN
	UPDATE floors
		SET name = @Nombre,
		description = @Descripcion,
		companySysId = @companySysId,
		buildingSysId = @buildingSysId,
		updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C',
		updateDate = GETDATE()
		WHERE companyIdExtern = @Id 

		SET @Resultado = 'Exito'
	END
	ELSE
	BEGIN
	INSERT INTO floors(
		floorSysId,
		buildingSysId,
		companySysId,
		name,
		description,
		entryUser,
		entryDate,
		updateUser,
		updateDate,
		rowGuid,
		companyIdExtern)
	VALUES(
		NEWID(),
		@buildingSysId,
		@companySysId,
		@Nombre,
		@Descripcion,
		'3A8E10C2-8FB5-4309-9752-AE2A3099371C',
		GETDATE(),
		'00000000-0000-0000-0000-000000000000',
		GETDATE(),
		NEWID(),
		@Id)

		SET @Resultado = 'Exito'
		Select @Resultado AS '@Resultado'
	END


	COMMIT TRANSACTION
	END TRY
	
	BEGIN CATCH
    SELECT @Resultado =  ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationC2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WCFSynchronizerInsertLocationC2]

	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionB varchar(60)

AS
BEGIN

	Insert into Temp_LocationC values (@Id,@Nombre,@Descripcion,@IdLocalizacionB)
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationD]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertLocationD] 
	
	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionC varchar(60),
	@Resultado varchar(200) output
AS
BEGIN

	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION

	IF NOT EXISTS(SELECT companyIdExtern FROM floors WHERE companyIdExtern = @IdLocalizacionC)
	BEGIN
		SELECT @Resultado = 'Id de localización C no existe'
		return;
	END

	DECLARE @companySysId uniqueidentifier
	DECLARE @buildingSysId uniqueidentifier
	DECLARE @floorsSysId uniqueidentifier

	select @companySysId = companySysId, @buildingSysId = buildingSysId , @floorsSysId = floorSysId 
	from floors WHERE companyIdExtern = @IdLocalizacionC

	IF EXISTS(SELECT companyIdExtern FROM officeses WHERE companyIdExtern = @Id)
	BEGIN
		UPDATE officeses
			SET name = @Nombre,
			description = @Descripcion,
			companySysId = @companySysId,
			buildingSysId = @buildingSysId,
			floorSysId = @floorsSysId,
			updateUser = '3A8E10C2-8FB5-4309-9752-AE2A3099371C',
			updateDate = GETDATE()
			WHERE companyIdExtern = @Id 

			SET @Resultado = 'Exito'
	END
	ELSE
	BEGIN
		INSERT INTO officeses(
		officeSysId,
		companySysId,
		buildingSysId,
		businessUnitSysId,
		floorSysId,
		deptSysId,
		tagSysId,
		name,
		description,
		entryUser,
		entryDate,
		updateUser,
		updateDate,
		rowGuid,
		IsEnable,
		companyIdExtern)
		VALUES(
		NEWID(),
		@companySysId,
		@buildingSysId,
		'00000000-0000-0000-0000-000000000000',
		@floorsSysId,
		'00000000-0000-0000-0000-000000000000',
		'00000000-0000-0000-0000-000000000000',
		@Nombre,
		@Descripcion,
		'3A8E10C2-8FB5-4309-9752-AE2A3099371C',
		GETDATE(),
		'00000000-0000-0000-0000-000000000000',
		GETDATE(),
		NEWID(),
		1,
		@Id)

		SET @Resultado = 'Exito'
		Select @Resultado AS '@Resultado'
		END

		COMMIT TRANSACTION
		END TRY

	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE()
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationD2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WCFSynchronizerInsertLocationD2] 
	
	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionC varchar(60)
AS
BEGIN
Insert into Temp_LocationD values (@Id,@Nombre,@Descripcion,@IdLocalizacionC)
	
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationLogicoA]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[WCFSynchronizerInsertLocationLogicoA]

	@Id varchar(50),
    @Nombre varchar(50),
    @Descripcion varchar(100),
    @Resultado varchar(200) output
AS
BEGIN

	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	BEGIN TRANSACTION

	IF EXISTS(SELECT companyIdExtern FROM LogicoA WHERE companyIdExtern = @Id)
	BEGIN
		UPDATE LogicoA
		SET Nombre = @Nombre,
		Descripcion = @Descripcion
		WHERE companyIdExtern = @Id

		SET @Resultado = 'Exitoso'
	END
	ELSE
	BEGIN
		INSERT INTO LogicoA
		(Nombre,
		Descripcion,
		companyIdExtern,
		userSysId)
		VALUES(
		@Nombre,
		@Descripcion,
		@Id,
		'3A8E10C2-8FB5-4309-9752-AE2A3099371C')

		SET @Resultado = 'Exitoso'
		Select @Resultado AS '@Resultado'
	END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationLogicoA2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[WCFSynchronizerInsertLocationLogicoA2]

	@Id varchar(50),
    @Nombre varchar(50),
    @Descripcion varchar(100)
AS
BEGIN
 Insert into Temp_LocationLogicoA  values(@Id,@Nombre,@Descripcion)
	
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationLogicoB]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[WCFSynchronizerInsertLocationLogicoB]
	
	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionLogicoA varchar(60),
	@Resultado varchar(200) output

AS
BEGIN

	BEGIN TRY
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED 
	BEGIN TRANSACTION

		IF NOT EXISTS(SELECT companyIdExtern FROM LogicoA WHERE companyIdExtern = @IdLocalizacionLogicoA)
		BEGIN
			SELECT @Resultado = 'Id de localización Lógico A no existe'
			--Rollback
			return;
		END

		DECLARE @IdLogicoA int
		SELECT @IdLogicoA = IdLogicoA FROM LogicoA WHERE companyIdExtern = @IdLocalizacionLogicoA

		IF EXISTS(SELECT companyIdExtern FROM LogicoB WHERE companyIdExtern = @Id)
		BEGIN
			UPDATE LogicoB
				SET Nombre = @Nombre,
				Descripcion = @Descripcion
				,userSysId= '3A8E10C2-8FB5-4309-9752-AE2A3099371C'
			WHERE companyIdExtern = @Id 

			SET @Resultado = 'Exito'
		END
		ELSE
		BEGIN
			INSERT INTO LogicoB(
				IdLogicoA,
				Nombre,
				Descripcion,
				companyIdExtern,
				userSysId)
			VALUES(
				@IdLogicoA,
				@Nombre,
				@Descripcion,
				@Id
				, '3A8E10C2-8FB5-4309-9752-AE2A3099371C')
			
				SET @Resultado = 'Exito'
				Select @Resultado AS '@Resultado'
		END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
    SELECT @Resultado = ERROR_MESSAGE()+ '-' + 
	           CAST(ERROR_LINE() as nvarchar(10)) + '-' + 
	           ERROR_PROCEDURE() 
		if @@TRANCOUNT > 0
		Begin
			Rollback
			select @@Error * -1
			
	    End
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[WCFSynchronizerInsertLocationLogicoB2]    Script Date: 30/10/2024 23:28:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[WCFSynchronizerInsertLocationLogicoB2]
	
	@Id varchar(50),
	@Nombre varchar(50),
	@Descripcion varchar(50),
	@IdLocalizacionLogicoA varchar(60)

AS
BEGIN

	INSERT INTO Temp_LocationLogicoB VALUES (@Id,@Nombre,@Descripcion,@IdLocalizacionLogicoA)
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "e"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 150
               Right = 314
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 154
               Left = 48
               Bottom = 297
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 2568
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vt_empleados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vt_empleados'
GO

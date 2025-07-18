USE [RutasControl]
GO
/****** Object:  Table [dbo].[AsignacionRutas]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionRutas](
	[IdAsignación] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [varchar](6) NOT NULL,
	[FechaAsignacion] [date] NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFinal] [time](7) NULL,
	[IdChofer] [int] NULL,
	[Estado] [bit] NULL,
	[IdRuta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAsignación] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobus](
	[Placa] [varchar](6) NOT NULL,
	[Marca] [varchar](100) NOT NULL,
	[Modelo] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Choferes]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choferes](
	[IdChofer] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellidos] [varchar](150) NOT NULL,
	[Nacionalidad] [varchar](100) NOT NULL,
	[Direccion] [varchar](200) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Rol] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoAutobus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoAutobus](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[EstadoAutobus] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InicioSesion]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InicioSesion](
	[IdInicioSesion] [int] IDENTITY(1,1) NOT NULL,
	[IdChofer] [int] NOT NULL,
	[Contrasena] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInicioSesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rutas]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rutas](
	[IdRuta] [int] IDENTITY(1,1) NOT NULL,
	[NombreRuta] [varchar](100) NOT NULL,
	[CantidadParadas] [int] NOT NULL,
	[DistanciaKM] [int] NOT NULL,
	[Inicio] [varchar](50) NOT NULL,
	[Destino] [varchar](50) NOT NULL,
	[Placa] [varchar](6) NOT NULL,
 CONSTRAINT [PK__Rutas__887538FE53723139] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarifaBuses]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarifaBuses](
	[idTarifa] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [varchar](6) NOT NULL,
	[IdRuta] [int] NOT NULL,
	[MontoRecibido] [float] NOT NULL,
	[MontoPagado] [float] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdChofer] [int] NOT NULL,
 CONSTRAINT [PK__TarifaBu__550711E125068EA2] PRIMARY KEY CLUSTERED 
(
	[idTarifa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AsignacionRutas]  WITH CHECK ADD  CONSTRAINT [FK_AsignacionRutas_Autobus] FOREIGN KEY([Placa])
REFERENCES [dbo].[Autobus] ([Placa])
GO
ALTER TABLE [dbo].[AsignacionRutas] CHECK CONSTRAINT [FK_AsignacionRutas_Autobus]
GO
ALTER TABLE [dbo].[AsignacionRutas]  WITH CHECK ADD  CONSTRAINT [FK_AsignacionRutas_Choferes] FOREIGN KEY([IdChofer])
REFERENCES [dbo].[Choferes] ([IdChofer])
GO
ALTER TABLE [dbo].[AsignacionRutas] CHECK CONSTRAINT [FK_AsignacionRutas_Choferes]
GO
ALTER TABLE [dbo].[AsignacionRutas]  WITH CHECK ADD  CONSTRAINT [FK_AsignacionRutas_Rutas] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Rutas] ([IdRuta])
GO
ALTER TABLE [dbo].[AsignacionRutas] CHECK CONSTRAINT [FK_AsignacionRutas_Rutas]
GO
ALTER TABLE [dbo].[Autobus]  WITH CHECK ADD  CONSTRAINT [FK_Autobus_EstadoAutobus] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[EstadoAutobus] ([IdEstado])
GO
ALTER TABLE [dbo].[Autobus] CHECK CONSTRAINT [FK_Autobus_EstadoAutobus]
GO
ALTER TABLE [dbo].[InicioSesion]  WITH CHECK ADD  CONSTRAINT [FK_InicioSesion_Choferes] FOREIGN KEY([IdChofer])
REFERENCES [dbo].[Choferes] ([IdChofer])
GO
ALTER TABLE [dbo].[InicioSesion] CHECK CONSTRAINT [FK_InicioSesion_Choferes]
GO
ALTER TABLE [dbo].[Rutas]  WITH CHECK ADD  CONSTRAINT [FK_Rutas_Autobus] FOREIGN KEY([Placa])
REFERENCES [dbo].[Autobus] ([Placa])
GO
ALTER TABLE [dbo].[Rutas] CHECK CONSTRAINT [FK_Rutas_Autobus]
GO
ALTER TABLE [dbo].[TarifaBuses]  WITH CHECK ADD  CONSTRAINT [FK_TarifaBuses_Autobus] FOREIGN KEY([Placa])
REFERENCES [dbo].[Autobus] ([Placa])
GO
ALTER TABLE [dbo].[TarifaBuses] CHECK CONSTRAINT [FK_TarifaBuses_Autobus]
GO
ALTER TABLE [dbo].[TarifaBuses]  WITH CHECK ADD  CONSTRAINT [FK_TarifaBuses_Rutas] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Rutas] ([IdRuta])
GO
ALTER TABLE [dbo].[TarifaBuses] CHECK CONSTRAINT [FK_TarifaBuses_Rutas]
GO
/****** Object:  StoredProcedure [dbo].[EditarRuta]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditarRuta]
    @IdRuta int,
    @NombreRuta varchar(100),
    @CantidadParadas int,
    @DistanciaKM int,
    @Inicio varchar(50),
    @Destino varchar(50),
    @Placa varchar(6)
AS
BEGIN
    UPDATE Rutas
    SET NombreRuta = @NombreRuta,
        CantidadParadas = @CantidadParadas,
        DistanciaKM = @DistanciaKM,
        Inicio = @Inicio,
        Destino = @Destino,
        Placa = @Placa
    WHERE IdRuta = @IdRuta
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarRuta]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE PROCEDURE InsertarTarifaBus
--    @Placa varchar(6),
--    @IdRuta int,
--    @MontoRecibido float,
--    @MontoPagado float,
--    @Fecha datetime,
--    @IdChofer int
--AS
--BEGIN
--    INSERT INTO TarifaBuses (Placa, IdRuta, MontoRecibido, MontoPagado, Fecha, IdChofer)
--    VALUES (@Placa, @IdRuta, @MontoRecibido, @MontoPagado, @Fecha, @IdChofer)
--END


CREATE PROCEDURE [dbo].[InsertarRuta]
    @NombreRuta varchar(100),
    @CantidadParadas int,
    @DistanciaKM int,
    @Inicio varchar(50),
    @Destino varchar(50),
    @Placa varchar(6)
AS
BEGIN
    INSERT INTO Rutas (NombreRuta, CantidadParadas, DistanciaKM, Inicio, Destino, Placa)
    VALUES (@NombreRuta, @CantidadParadas, @DistanciaKM, @Inicio, @Destino, @Placa)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarTarifaBus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarTarifaBus]
    @Placa varchar(6),
    @IdRuta int,
    @MontoRecibido float,
    @MontoPagado float,
    @Fecha datetime,
    @IdChofer int
AS
BEGIN
    INSERT INTO TarifaBuses (Placa, IdRuta, MontoRecibido, MontoPagado, Fecha, IdChofer)
    VALUES (@Placa, @IdRuta, @MontoRecibido, @MontoPagado, @Fecha, @IdChofer)
END
GO
/****** Object:  StoredProcedure [dbo].[ObtenerListaRutas]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerListaRutas]
AS
BEGIN
    SELECT *
    FROM Rutas
END
GO
/****** Object:  StoredProcedure [dbo].[ReporteContabilidad]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReporteContabilidad]
(
	@FechaInicio DATE,
    @FechaFinal DATE
)
AS
BEGIN	
	select 
		r.NombreRuta						[Ruta]			,
		p.Placa								[Placa]			, 
		CONVERT(varchar,b.Fecha,101)		[Fecha]			,
		b.MontoPagado						[Monto Pagado]	,
		b.MontoRecibido						[Monto Recibido],
		(b.MontoPagado - b.MontoRecibido)	[Ingresos]
	from Rutas r with(nolock)
	inner join TarifaBuses b on 
	(
		r.IdRuta = b.IdRuta
	)
	inner join Autobus p with(nolock) on
	(
		p.Placa = b.Placa
	)
	where CONVERT(varchar,b.Fecha,101) = @FechaInicio AND 
	CONVERT(varchar,b.Fecha+1,101)=@FechaInicio
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarAutobus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarAutobus]
    @Placa VARCHAR(6),
    @Marca VARCHAR(100),
    @Modelo INT,
    @IdEstado INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @RowCount INT;

    -- Verificar si el autobús existe
    IF EXISTS (SELECT 1 FROM Autobus WHERE Placa = @Placa)
    BEGIN
        -- Actualizar la información del autobús
        UPDATE Autobus
        SET Marca = @Marca,
            Modelo = @Modelo,
            IdEstado = @IdEstado
        WHERE Placa = @Placa;

        -- Verificar el número de filas afectadas por la operación de actualización
        SET @RowCount = @@ROWCOUNT;

        IF @RowCount > 0
        BEGIN
            -- Actualización exitosa
            SELECT 'Información del autobús actualizada correctamente' AS Mensaje;
        END
        ELSE
        BEGIN
            -- No se encontraron filas para actualizar
            SELECT 'No se encontró el autobús para actualizar' AS Mensaje;
        END
    END
    ELSE
    BEGIN
        -- El autobús no existe
        SELECT 'El autobús especificado no existe' AS Mensaje;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_ActualizarChofer]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ActualizarChofer]
    @IdChofer INT,
    @Identificacion INT,
    @Nombre VARCHAR(100),
    @Apellidos VARCHAR(150),
    @Nacionalidad VARCHAR(100),
    @Direccion VARCHAR(200),
    @Estado BIT,
	@Contrasena VARCHAR(100),
	@Rol varchar(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @RowCount INT;

    -- Verificar si el chofer existe
    IF EXISTS (SELECT 1 FROM Choferes WHERE IdChofer = @IdChofer)
    BEGIN
		--*************************************************
        -- Actualizar la información del chofer
        UPDATE C
        SET 
			C.Identificacion	= @Identificacion	,
            C.Nombre			= @Nombre			,
            C.Apellidos			= @Apellidos		,
            C.Nacionalidad		= @Nacionalidad		,
            C.Direccion			= @Direccion		,
            C.Estado			= @Estado			,
			c.Rol				= @Rol
		from 
			Choferes	C with(nolock)
        WHERE C.IdChofer = @IdChofer;
		--*************************************************
		-- actualiza la contrasena del chofer
		update i
		set 
			i.Contrasena=@Contrasena
		from 
			InicioSesion i with(nolock)
		WHERE i.IdChofer = @IdChofer;

    END
    ELSE
    BEGIN
        -- El chofer no existe
        SELECT 'El chofer especificado no existe' AS Mensaje;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarAutobus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BuscarAutobus]
(
	@Placa VARCHAR(6)	
)
AS
begin 
	select 
		a.Marca				[Marca]	,
		a.Modelo			[Modelo],
		a.Placa				[Placa]	,		
		ea.EstadoAutobus	[Estado]
	from 
		Autobus a with(nolock) 
	inner join EstadoAutobus ea with(nolock) on 
	(
		a.IdEstado = ea.IdEstado
	)
	where a.Placa = @Placa
end
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarChofer]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BuscarChofer]
(
	@IdChofer INT	
)
AS 
begin
	
	select 
		c.Identificacion					[Identificación],
		c.Nombre							[Nombre]		,
		c.Apellidos							[Apellidos]		,
		c.Direccion							[Dirección]		,
		c.Nacionalidad						[Nacionalidad]	,
		c.Rol								[Rol]			,
		i.Contrasena						[Contraseña]	,
		case when c.Estado =1 then 'Activo'	
		else 'Inactivo'						
		end									[Estado]
	from 
		Choferes		c with(nolock),
		InicioSesion	i with(nolock)
	where 
		c.IdChofer		=i.IdChofer and
		c.IdChofer		=@IdChofer
end
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarAutobus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EliminarAutobus]
    @Placa VARCHAR(6)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @RowCount INT;

    -- Verificar si el autobús existe
    IF EXISTS (SELECT 1 FROM Autobus WHERE Placa = @Placa)
    BEGIN
        -- Eliminar el autobús
        DELETE FROM Autobus 
		WHERE Placa = @Placa;
    END
    ELSE
    BEGIN
        -- El autobús no existe
        SELECT 'El autobús especificado no existe' AS Mensaje;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_EstadoAutubus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_EstadoAutubus] 
as 
begin
	select 
		* 
	from EstadoAutobus with(nolock) 
end
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarAutobus]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_InsertarAutobus]
    @Placa VARCHAR(6),
    @Marca VARCHAR(100),
    @Modelo INT,
    @IdEstado INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si la placa del autobús ya existe
    IF EXISTS (SELECT 1 FROM Autobus WHERE Placa = @Placa)
    BEGIN
        SELECT 'La placa'+@Placa+' ya existe' AS Mensaje;
        RETURN;
    END

    -- Insertar el nuevo autobús
    INSERT INTO Autobus (Placa, Marca, Modelo, IdEstado)
    VALUES (@Placa, @Marca, @Modelo, @IdEstado);

    -- Devolver mensaje de inserción exitosa
    SELECT 'Autobús insertado correctamente' AS Mensaje;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarChofer]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_InsertarChofer]
( 
	@Identificacion		INT,
    @Nombre				VARCHAR(100),
    @Apellidos			VARCHAR(150),
    @Nacionalidad		VARCHAR(100),
    @Direccion			VARCHAR(200),
	@Contrasena varchar(100)
)
AS
BEGIN
    SET NOCOUNT ON;
	--parametro para obtener el id que inserte

	DECLARE @IdChofer INT;
    -- Insertar el nuevo chofer
    INSERT INTO Choferes (Identificacion, Nombre, Apellidos, Nacionalidad, Direccion, Estado, Rol)
    VALUES (@Identificacion, @Nombre, @Apellidos, @Nacionalidad, @Direccion, 1, 'Chofer');

	    -- Obtener el ID del chofer insertado
    SET @IdChofer = SCOPE_IDENTITY();

    -- Devolver el ID del chofer insertado
    --SELECT @IdChofer AS IdChofer;

	insert into InicioSesion (IdChofer,Contrasena) values
	(@IdChofer,@Contrasena)
END;
GO
/****** Object:  StoredProcedure [dbo].[SPInicioSesion]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPInicioSesion]
    @Identificacion INT,
    @Contrasena VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IdChofer INT;
    DECLARE @Estado BIT;
    DECLARE @Rol VARCHAR(100);

    -- Buscar el chofer por identificación y contraseña
    SELECT 	
        @IdChofer	= c.IdChofer,
		@Estado		= c.Estado	,
        @Rol		= c.Rol
    FROM 
        Choferes c with(nolock)
    JOIN
        InicioSesion i with(nolock)
	ON 
	(
		c.IdChofer = i.IdChofer
    )
	WHERE 
        c.Identificacion = @Identificacion
        AND i.Contrasena = @Contrasena;

    -- Verificar si se encontró un chofer con las credenciales proporcionadas
    IF (@IdChofer IS NOT NULL)
    BEGIN
        -- Verificar si el chofer está activo
        IF (@Estado = 1)
        BEGIN
            -- Inicio de sesión exitoso
            SELECT 'Inicio de sesión exitoso' AS Mensaje;
        END
        ELSE
        BEGIN
            -- El chofer está inactivo
            SELECT 'El chofer está inactivo' AS Mensaje;
        END
    END
    ELSE
    BEGIN
        -- Las credenciales son inválidas
        SELECT 'Credencial inválidas' AS Mensaje;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[SpListaAutobuses]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SpListaAutobuses]
as 
begin 
	select 
		a.Marca				[Marca]	,
		a.Modelo			[Modelo],
		a.Placa				[Placa]	,		
		ea.EstadoAutobus	[Estado]
	from 
		Autobus a with(nolock) 
	inner join EstadoAutobus ea with(nolock) on 
	(
		a.IdEstado = ea.IdEstado
	)
end
GO
/****** Object:  StoredProcedure [dbo].[SpListaChoferes]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SpListaChoferes]
as 
begin 
	select 
		c.IdChofer		,
		c.Identificacion,	
		c.Nombre		,
		c.Apellidos		,
		c.Nacionalidad	,
		c.Rol			,
		c.Direccion		,
		case when c.Estado=1 then 'Activo' 
		else 'Incativo'			
		end			[Estado]
		from Choferes c with(nolock)
end
GO
/****** Object:  StoredProcedure [dbo].[SpListaUsuarios]    Script Date: 03/04/2024 16:32:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SpListaUsuarios]
as 
begin 
		select 
		c.Identificacion					[Identificación],
		c.Nombre							[Nombre]		,
		c.Apellidos							[Apellidos]		,
		c.Direccion							[Dirección]		,
		c.Nacionalidad						[Nacionalidad]	,
		c.Rol								[Rol]			,
		case when c.Estado =1 then 'Activo'	
		else 'Inactivo'						
		end									[Estado]
	from 
		Choferes		c with(nolock),
		InicioSesion	i with(nolock)
	where 
		c.IdChofer		=i.IdChofer 
end
GO

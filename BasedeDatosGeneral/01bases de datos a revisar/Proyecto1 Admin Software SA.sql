USE [ProyectoI]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[NombreDepartamento] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[cedula] [int] NOT NULL,
	[nombre] [varchar](80) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NOT NULL,
	[nacionalidad] [varchar](20) NOT NULL,
	[idpuesto] [int] NOT NULL,
	[salario] [int] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[FechaIngreso] [date] NOT NULL,
	[Departamento] [int] NOT NULL,
	[Asociacion] [bit] NULL,
	[Estado] [varchar](10) NOT NULL,
	[Cuenta] [varchar](20) NOT NULL,
	[contrasena] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[incapacidad]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incapacidad](
	[cedula] [int] NOT NULL,
	[fechaInicio] [date] NULL,
	[fechaFinalizacion] [date] NULL,
	[DiasIncapacidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mensaje]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mensaje](
	[Idmensaje] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[cedula] [int] NOT NULL,
	[telefono] [int] NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
	[cedulaEmpleado] [int] NOT NULL,
	[estado] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idmensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puestos]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puestos](
	[CodigoPuesto] [int] IDENTITY(1,1) NOT NULL,
	[NombrePuesto] [varchar](50) NOT NULL,
	[Descripcion] [varchar](80) NOT NULL,
	[Estudios] [bit] NOT NULL,
	[SalarioMinimo] [int] NOT NULL,
	[SalarioMaximo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salario]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salario](
	[cedula] [int] NOT NULL,
	[salariobruto] [decimal](18, 1) NULL,
	[pagoIncapacidad] [decimal](18, 1) NULL,
	[pagoCCSS] [decimal](18, 1) NULL,
	[BancoPopular] [decimal](18, 1) NULL,
	[Asociacion] [decimal](18, 0) NULL,
	[SalarioNeto] [decimal](18, 1) NOT NULL,
	[Estado] [varchar](10) NOT NULL,
	[SalarioDiario] [decimal](18, 1) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([idDepartamento], [NombreDepartamento]) VALUES (1, N'contaduria')
INSERT [dbo].[Departamento] ([idDepartamento], [NombreDepartamento]) VALUES (5, N'consejeria')
INSERT [dbo].[Departamento] ([idDepartamento], [NombreDepartamento]) VALUES (6, N'Administracion')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
INSERT [dbo].[Empleado] ([cedula], [nombre], [apellido1], [apellido2], [nacionalidad], [idpuesto], [salario], [direccion], [telefono], [FechaIngreso], [Departamento], [Asociacion], [Estado], [Cuenta], [contrasena]) VALUES (305160774, N'andrey', N'sanchez', N'zuñiga', N'costarricense', 5, 1000000, N'Cartago', 63455593, CAST(N'2000-12-12' AS Date), 6, 1, N'activo', N'Cr3352467997979', N'andreyszcr')
INSERT [dbo].[Empleado] ([cedula], [nombre], [apellido1], [apellido2], [nacionalidad], [idpuesto], [salario], [direccion], [telefono], [FechaIngreso], [Departamento], [Asociacion], [Estado], [Cuenta], [contrasena]) VALUES (305160775, N'pedro', N'marquz', N'martinez', N'costarricense', 4, 250000, N'San Jose', 89801010, CAST(N'1987-03-30' AS Date), 1, 0, N'inactivo', N'CR454564646464', N'pedro')
GO
SET IDENTITY_INSERT [dbo].[puestos] ON 

INSERT [dbo].[puestos] ([CodigoPuesto], [NombrePuesto], [Descripcion], [Estudios], [SalarioMinimo], [SalarioMaximo]) VALUES (1, N'secretario', N'recibir informacion de la empresa y reportes', 1, 150000, 300000)
INSERT [dbo].[puestos] ([CodigoPuesto], [NombrePuesto], [Descripcion], [Estudios], [SalarioMinimo], [SalarioMaximo]) VALUES (3, N'Programador', N'crea los programas ', 1, 350000, 600000)
INSERT [dbo].[puestos] ([CodigoPuesto], [NombrePuesto], [Descripcion], [Estudios], [SalarioMinimo], [SalarioMaximo]) VALUES (4, N'reuniones', N'sala para reunir a los administradores', 0, 125000, 300000)
INSERT [dbo].[puestos] ([CodigoPuesto], [NombrePuesto], [Descripcion], [Estudios], [SalarioMinimo], [SalarioMaximo]) VALUES (5, N'admin', N'supervisa la empresa', 1, 1000000, 1200000)
SET IDENTITY_INSERT [dbo].[puestos] OFF
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [fk_Departamento] FOREIGN KEY([Departamento])
REFERENCES [dbo].[Departamento] ([idDepartamento])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [fk_Departamento]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [fk_Puesto] FOREIGN KEY([idpuesto])
REFERENCES [dbo].[puestos] ([CodigoPuesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [fk_Puesto]
GO
ALTER TABLE [dbo].[incapacidad]  WITH CHECK ADD  CONSTRAINT [fk_Incapacidad] FOREIGN KEY([cedula])
REFERENCES [dbo].[Empleado] ([cedula])
GO
ALTER TABLE [dbo].[incapacidad] CHECK CONSTRAINT [fk_Incapacidad]
GO
ALTER TABLE [dbo].[mensaje]  WITH CHECK ADD  CONSTRAINT [fk_Mensaje] FOREIGN KEY([cedulaEmpleado])
REFERENCES [dbo].[Empleado] ([cedula])
GO
ALTER TABLE [dbo].[mensaje] CHECK CONSTRAINT [fk_Mensaje]
GO
ALTER TABLE [dbo].[Salario]  WITH CHECK ADD  CONSTRAINT [fk_Salario] FOREIGN KEY([cedula])
REFERENCES [dbo].[Empleado] ([cedula])
GO
ALTER TABLE [dbo].[Salario] CHECK CONSTRAINT [fk_Salario]
GO
/****** Object:  StoredProcedure [dbo].[Calcular_DiasIncapacidad]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Calcular_DiasIncapacidad]
(
@cedula int,
@DiasIncapacidad int
)
AS
BEGIN
Set @DiasIncapacidad = (Select DATEDIFF(DAY, incapacidad.fechaInicio, incapacidad.fechaFinalizacion) as Dias_de_Incapacidad
	FROM incapacidad INNER JOIN Empleado
	ON incapacidad.cedula = Empleado.cedula)
	Update incapacidad Set DiasIncapacidad=@DiasIncapacidad where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[Calcular_PagoAsociacion]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Calcular_PagoAsociacion]
(
@cedula int,
@DiasIncapacidad int,
@AporteAsociacion decimal(18,1)
)
AS
BEGIN
Set @AporteAsociacion = (Select AVG(Salario.salariobruto * 0.03) OVER(partition by Salario.cedula) as Aporte_Asociacion
	FROM Salario)
	Update Salario Set Asociacion=@AporteAsociacion where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[Calcular_PagoBancoPopular]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[Calcular_PagoBancoPopular]
(
@cedula int,
@SalBruto decimal(18,1),
@pagoXincapacidad decimal(18,1),
@AporteBP decimal(18,1)
)
AS
BEGIN
Set @AporteBP = (Select AVG(Salario.salariobruto * 0.01) OVER(partition by Salario.cedula) as Aporte_Banco_Popular
	FROM Salario)
	Update Salario Set BancoPopular=@AporteBP where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[Calcular_PagoCCSS]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[Calcular_PagoCCSS]
(
@cedula int,
@SalBruto decimal(18,1),
@AporteCCSS decimal(18,1)
)
AS
BEGIN
Set @AporteCCSS = (Select AVG(Salario.salariobruto - 0.105) OVER(partition by Salario.cedula) as Aporte_CCSS
	FROM Salario)
	Update Salario Set pagoCCSS=@AporteCCSS where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[Calcular_PagoPorIncapacidad]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Calcular_PagoPorIncapacidad]
(
@cedula int,
@DiasIncapacidad int,
@SalBruto decimal(18,1),
@pagoXincapacidad decimal(18,1)
)
AS
BEGIN
Set @pagoXincapacidad = (Select AVG(incapacidad.DiasIncapacidad * Salario.salariobruto * 0.5) OVER(partition by Empleado.Salario) as Pago_por_Incapacidad
	FROM Empleado INNER JOIN incapacidad
	ON Empleado.cedula = incapacidad.cedula JOIN Salario ON incapacidad.cedula = Salario.cedula)
	Update Salario Set pagoIncapacidad=@pagoXincapacidad where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[Calcular_SalarioPorDia]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Calcular_SalarioPorDia]
(
@cedula int,
@salDia decimal(18,1)
)
AS
BEGIN
Set @SalDia = (Select AVG(Empleado.salario / 30) OVER(partition by Empleado.Salario) as Salario_Al_Dia
	FROM Empleado) 
	Update Salario Set SalarioDiario=@SalDia where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[Calcular_SalrioBruto]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Calcular_SalrioBruto]
(
@cedula int,
@DiasIncapacidad int,
@salDia decimal(18,1),
@SalBruto decimal(18,1)
)
AS
BEGIN
Set @SalBruto = (Select AVG((7 - incapacidad.DiasIncapacidad)*Salario.SalarioDiario) OVER(partition by incapacidad.DiasIncapacidad) as Salario_Bruto
	FROM Empleado JOIN incapacidad
	ON Empleado.cedula = incapacidad.cedula JOIN Salario ON incapacidad.cedula = Salario.cedula)
	Update Salario Set salariobruto=@SalBruto where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartamento]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[DeleteDepartamento]
(
@idDepartamento int 
)
as 
begin
	delete from Departamento
	where idDepartamento=@idDepartamento
end
GO
/****** Object:  StoredProcedure [dbo].[DeletePuesto]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeletePuesto]
(
@CodigoPuesto int,
@cMensaje VARCHAR(100) OUTPUT
)
as 
begin 
	DELETE FROM puestos
	WHERE CodigoPuesto = @CodigoPuesto
	SET @cMensaje = 'Se realizo el proceso con exito';
end
GO
/****** Object:  StoredProcedure [dbo].[EliminarEmpleados]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarEmpleados]
(
@cedula Bigint,
@cMensaje VARCHAR(100) OUTPUT 
)
AS
IF NOT EXISTS (SELECT 1 FROM Empleado WHERE cedula = @cedula) 
BEGIN 
	SET @cMensaje = 'El empleado con esa cedula no existe';
END
ELSE 
BEGIN 
	DELETE FROM Empleado 
	WHERE cedula = @cedula
	SET @cMensaje = 'Se realizo el proceso con exito';
END 

IF @@ERROR != 0
BEGIN 
	SET @cMensaje ='Se produjo un error durante el procedimiento'
END 
GO
/****** Object:  StoredProcedure [dbo].[EnvioMensaje]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EnvioMensaje]
(
@nombre varchar (50),
@cedula int,
@telefono int,
@descripcion varchar(200),
@cedulaEmpleado int,
@estado varchar(10)
)
AS
BEGIN
	insert into mensaje (nombre,cedula,telefono,descripcion,cedulaEmpleado,estado) 
	values(@nombre,@cedula,@telefono,@descripcion,@cedulaEmpleado,@estado);
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarEmpleados]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarEmpleados] 
(
	@cedula int, 
	@nombre varchar (50), 
	@apellido1 varchar(50), 
	@apellido2 varchar(50), 
	@nacionalidad varchar(20),
	@idpuesto int ,
	@salario int,
	@direccion varchar(50),
	@telefono int,
	@FechaIngreso date,
	@Departamento int,
	@Asociacion bit,
	@Estado varchar(10),
	@Cuenta varchar(20),
	@contrasena varchar(20),
	@cMensaje VARCHAR(100) OUTPUT
)
AS
IF EXISTS (SELECT 1 FROM [Empleado] WHERE cedula = @cedula) 
BEGIN 
	SET @cMensaje = 'El empleado con esa cedula ya existe';
END
ELSE 
BEGIN 
	INSERT INTO [Empleado](cedula,nombre,apellido1,apellido2,nacionalidad,idpuesto,salario,direccion ,telefono,FechaIngreso,Departamento,Asociacion,Estado,Cuenta,contrasena)
	VALUES ( @cedula,@nombre,@apellido1 , 
	@apellido2 , 
	@nacionalidad,
	@idpuesto,
	@salario,
	@direccion ,
	@telefono,
	@FechaIngreso,
	@Departamento,
	@Asociacion,
	@Estado,
	@Cuenta,
	@contrasena)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDepartamento]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertDepartamento]
@NombreDepartamento varchar(20)
as
begin
	insert into Departamento (NombreDepartamento)
	values(@NombreDepartamento)

end
GO
/****** Object:  StoredProcedure [dbo].[InsertPuesto]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertPuesto]
(
@NombrePuesto varchar(50),
@Descripcion varchar(80),
@Estudios bit,
@SalarioMinimo int,
@SalarioMaximo int
)
as 
begin 
	insert into puestos (NombrePuesto,Descripcion,Estudios,SalarioMinimo,SalarioMaximo) 
	values(@NombrePuesto,@Descripcion,@Estudios,@SalarioMinimo,@SalarioMaximo);

end
GO
/****** Object:  StoredProcedure [dbo].[ModificarEmpleados]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ModificarEmpleados]
(
	@cedula int, 
	@nombre varchar (50), 
	@apellido1 varchar(50), 
	@apellido2 varchar(50), 
	@nacionalidad varchar(20),
	@idpuesto int ,
	@salario int,
	@direccion varchar(50),
	@telefono int,
	@FechaIngreso date,
	@Departamento int,
	@Asociacion bit,
	@Estado varchar(10),
	@Cuenta varchar(20),
	@contrasena varchar(20),
	@cMensaje VARCHAR(100) OUTPUT
)
AS
IF NOT EXISTS (SELECT 1 FROM Empleado WHERE cedula = @cedula) 
BEGIN 
	SET @cMensaje = 'El cliente con esa cedula no existe';
END
ELSE 
BEGIN 
	UPDATE Empleado 
	SET 
	
	cedula = @cedula,
	nombre = @nombre,
	apellido1 = @apellido1,
	apellido2 = @apellido2,
	nacionalidad = @nacionalidad,
	idpuesto = @idpuesto,
	salario=  @salario,
	direccion = @direccion,
	telefono = @telefono,
	FechaIngreso = @FechaIngreso,
	Departamento = @Departamento,
	Asociacion = @Asociacion,
	Estado = @Estado,
	Cuenta=  @Cuenta,
	contrasena= @contrasena
	WHERE cedula = @cedula
	SET @cMensaje = 'Se ha realizado la modificacion';
END 

IF @@ERROR != 0
BEGIN 
	SET @cMensaje ='Se produjo un error durante la modificacion'
END 

GO
/****** Object:  StoredProcedure [dbo].[ModifyPuesto]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ModifyPuesto]
(
@CodigoPuesto int,
@NombrePuesto varchar(50),
@Descripcion varchar(80),
@Estudios bit,
@SalarioMinimo int,
@SalarioMaximo int,
@cMensaje VARCHAR(100) OUTPUT
)
as 
IF NOT EXISTS (SELECT 1 FROM puestos WHERE  CodigoPuesto= @CodigoPuesto) 	
BEGIN 
	SET @cMensaje = 'El cliente con esa cedula no existe';
END
ELSE 
BEGIN 
	UPDATE puestos
	SET 
	
	NombrePuesto = @NombrePuesto,
	Descripcion = @Descripcion, 
	Estudios= @Estudios, 
	SalarioMinimo=@SalarioMinimo, 
	SalarioMaximo=@SalarioMaximo
	WHERE CodigoPuesto = @CodigoPuesto
	SET @cMensaje = 'Se ha realizado la modificacion';
end
GO
/****** Object:  StoredProcedure [dbo].[SeleccionCedulaEmpleado]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[SeleccionCedulaEmpleado]
AS
BEGIN
	select cedula from Empleado
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionCodigoDepartamento]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SeleccionCodigoDepartamento]
@NombreDepartamento varchar(20)
as 
begin 
	select NombreDepartamento 
	from Departamento
	where  idDepartamento=@NombreDepartamento
end
GO
/****** Object:  StoredProcedure [dbo].[SeleccionDepartamento]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SeleccionDepartamento]
as 
begin 
	select NombreDepartamento from Departamento
end
GO
/****** Object:  StoredProcedure [dbo].[SelectPuesto]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectPuesto] 
as 
begin 
	select NombrePuesto from puestos
end
GO
/****** Object:  StoredProcedure [dbo].[ValidacionLogin]    Script Date: 24/2/2021 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ValidacionLogin]
@cedula int,
@contrasena varchar(20)
as 
begin 
	select cedula,contrasena 
	from Empleado
	where cedula=@cedula and contrasena=@contrasena
end
GO

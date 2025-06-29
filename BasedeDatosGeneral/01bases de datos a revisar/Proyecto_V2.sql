Create database Proyecto_V2

Use Proyecto_V2

create table Empleado
(
  idEmpleado int primary key identity(1,1)not null,
  cedula int not null,
  nombre varchar(50) not null,
  apellido1 varchar(50) not null,
  apellido2 varchar(50) not null,
  estudios varchar(200)not null,
  idpuesto int not null,
  idsalario  int not null,
  direccion varchar(50) not null,
  telefono int not null,
  idDepartamento int not null,
  idCuenta int not null
  foreign key (idpuesto) references puestos (IDpuesto),
  foreign key (idsalario) references Salarios (idSalario),
  foreign key (idDepartamento) references Departamentos (idDepartamento),
  foreign key (idCuenta) references Cuenta (idcuenta)
);

--***************************
--tabla de puestos  
create table puestos
(
IDpuesto int primary key not null,
puesto varchar(50) not null
);
--***************************
--tabla de salarios
create table Salarios
(
idSalario int primary key identity(1,1) not null,
cedula int not null,
SalarioMinimo decimal(18,1) not null,
SallarioMaximo decimal(18,1)not null
);
--***************************
-- TABLA DE DEPARTAMENTOS 
create table Departamentos
(
	idDepartamento int primary key  not null,
	FechaIngreso date  not null,
	NombreDepartamento varchar(50)not null,
	Asociacion bit not null,
	estado varchar(10)not null
);
--***************************
create table Cuenta
(
idcuenta int primary key not null,
cuenta int not null
);
--***************************

create table Calculo
(
idEmpleado int primary key,
salario_bruto money, 
incapacidad int null,
aporte_CCSS money not null, 
aporte_Banco money not null,
aporte_asociacion money null,
salario_neto money 
foreign key (idEmpleado) references Empleado (idEmpleado)
);
--***************************

----Procedimientos Almacenados
--*Empleado
 create procedure CRUD_Empleado
(
  @idEmpleado int,
  @cedula int,
  --@nacionalidad varchar(50),
  @nombre varchar(150),
  @apellido1 varchar(150),
  @apellido2 varchar(150),
  @Estudios varchar (50),
  @idpuesto int, 
  @idsalario money, 
  @direccion varchar(150),
  @telefono int, 
  --@fecha_ingreso date,
  @idDepartamento varchar(50),
  @idCuenta varchar(50),
  @modo  varchar(9)
) 

AS 
    if @modo = 'Insert'
    BEGIN 
        INSERT INTO Empleado  (idEmpleado, cedula, nombre, apellido1, apellido2, estudios, idpuesto, idsalario, direccion, telefono, idDepartamento, idCuenta)
        VALUES (@idEmpleado, @cedula, @nombre, @apellido1, @apellido2, @Estudios, @idpuesto, @idsalario, @direccion, @telefono, @idDepartamento, @idCuenta)
    END

	if @modo = 'Update'
	BEGIN
		Update Empleado Set cedula=@cedula, nombre=@nombre, apellido1=@apellido1, apellido2=@apellido2, estudios=@Estudios, idpuesto=@idpuesto, idsalario=@idsalario, direccion=@direccion, telefono=@telefono, idDepartamento=@idDepartamento, idCuenta=@idCuenta where idEmpleado=@idEmpleado
	END

	if @modo = 'Delete'
	BEGIN
		Delete from Empleado where idEmpleado=@idEmpleado 
	END
GO


--*Cuentas Login
 create procedure CRUD_Cuenta
(
  @idcuenta int,
  @cuenta int,
  @modo varchar(7)
) 

AS 
    if @modo = 'Insert'
    BEGIN 
        INSERT INTO Cuenta(idcuenta, cuenta)
        VALUES (@idcuenta, @cuenta)
    END

	if @modo = 'Update'
	BEGIN
		Update Cuenta Set cuenta=@cuenta where idcuenta=@idcuenta
	END

	if @modo = 'Delete'
	BEGIN
		Delete from Cuenta where idcuenta=@idcuenta
	END
GO

--*Puestos
 create procedure CRUD_Puestos
(
  @IDpuesto int,
  @puesto varchar(50),
  @modo varchar(7)
) 

AS 
    if @modo = 'Insert'
    BEGIN 
        INSERT INTO puestos(IDpuesto, puesto)
        VALUES (@IDpuesto, @puesto)
    END

	if @modo = 'Update'
	BEGIN
		Update puestos Set puesto=@puesto where IDpuesto=@IDpuesto
	END

	if @modo = 'Delete'
	BEGIN
		Delete from puestos where IDpuesto=@IDpuesto
	END
GO

--*Salarios
 create procedure CRUD_Salarios
(
  @idSalario int,
  @cedula int,
  @SalarioMinimo decimal(18,1),
  @SallarioMaximo decimal(18,1),			--Salario Máximo
  @modo varchar(7)
) 

AS 
    if @modo = 'Insert'
    BEGIN 
        INSERT INTO Salarios(idSalario, cedula, SalarioMinimo)
        VALUES (@idSalario, @cedula, @SalarioMinimo)
    END

	if @modo = 'Update'
	BEGIN
		Update puestos Set puesto=@puesto where IDpuesto=@IDpuesto
	END

	if @modo = 'Delete'
	BEGIN
		Delete from puestos where IDpuesto=@IDpuesto
	END
GO

--*Departamento


--*Calculo

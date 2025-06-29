create database Proyecto_V1
go

use Proyecto_V1
go

-------------------------------------------------------

create table Puestos
(  
codigo_puesto int primary key,
nombre_puesto varchar(150) not null,
descripcion_puesto varchar(150) not null,
estudios_universitarios varchar(150) not null,
salario_minimo money not null,
salario_maximo money not null
)
go
-------------------------------------------------------

create table Empleado
(
identificacion int primary key,
nacionalidad varchar(50) not null,
nombre varchar(150) not null,
primer_apellido varchar(150) not null,
segundo_apellido varchar(150) not null,
codigo_puesto int, 
salario money, 
direccion varchar(150) not null,
teléfono int,
fecha_ingreso date, 
departamento varchar(50) not null,
asociación varchar(50) not null,
estado_empleado varchar(50) not null,
cuenta_bancaria varchar(50) not null,
foreign key (codigo_puesto) references Puestos (codigo_puesto)
)
go

-------------------------------------------------------

create table Calculo
(
id_empleado int primary key,
salario_bruto money, 
incapacidad int null,
aporte_CCSS money not null, 
aporte_Banco money not null,
aporte_asociacion money null,
salario_neto money 
foreign key (id_empleado) references Empleado (identificacion)
)
go

-------------------------------------------------------
/*
create table Usuarios
(
identificacion int primary key,
rol varchar(50) not null,
pass varchar(100) not null
foreign key (identificacion) references Empleados (identificacion)
)
go
*/
-------------------------------------------------------

SELECT * FROM Puestos
SELECT * FROM Empleado
SELECT * FROM Calculo


-------------------------------------------------------

--Proc Almacenados

 create procedure Insertar_Empleado1
(
  @identificacion int,
  @nacionalidad varchar(50),
  @nombre varchar(150),
  @primer_apellido varchar(150),
  @segundo_apellido varchar(150),
  @codigo_puesto int, 
  @salario money, 
  @direccion varchar(150),
  @teléfono int, 
  @fecha_ingreso date,
  @departamento varchar(50),
  @asociacion varchar(50),
  @estado_empleado varchar(50),
  @cuenta_bancaria varchar(50)
) 

AS 
    BEGIN 
        INSERT INTO Empleado  (identificacion, nacionalidad, nombre, primer_apellido, segundo_apellido, codigo_puesto, direccion, salario, teléfono, fecha_ingreso, departamento, asociación, estado_empleado, cuenta_bancaria)
        VALUES (@identificacion, @nacionalidad, @nombre, @primer_apellido, @segundo_apellido, @codigo_puesto, @direccion, @salario, @teléfono, @fecha_ingreso, @departamento, @asociacion, @estado_empleado, @cuenta_bancaria)
    END

-------------------------------------------------------



	Exec Insertar_Empleado1 @identificacion='1', @nacionalidad='costarricense', @nombre='Frank', @primer_apellido='Castillo', @segundo_apellido='Montes', @codigo_puesto='025', @direccion='San Jose, Costa Rica', @salario='800', @teléfono='12354684', @fecha_ingreso='20150205', @departamento='TI', @asociacion='Si', @estado_empleado='activo', @cuenta_bancaria='135484563121541';

	Insert into Puestos values('025', 'Secretariado', 'Secretarias(os) personales', 'Bachiller medio', '500', '800')

	Select * from Puestos 

	Select * from Empleado
	
	Select Puestos.codigo_puesto, nombre from Puestos, Empleado


-------------------------------------------------------

 CREATE PROC Update_Empleado1
(
  @identificacion int,
  @nacionalidad varchar(50),
  @nombre varchar(150),
  @primer_apellido varchar(150),
  @segundo_apellido varchar(150),
  @codigo_puesto int, 
  @salario money, 
  @direccion varchar(150),
  @teléfono int, 
  @fecha_ingreso date,
  @departamento varchar(50),
  @asociacion varchar(50),
  @estado_empleado varchar(50),
  @cuenta_bancaria varchar(50)
) 

AS 
    BEGIN 
        Update Empleado Set identificacion=@identificacion, nacionalidad=@nacionalidad, nombre=@nombre, primer_apellido=@primer_apellido, segundo_apellido=@segundo_apellido, codigo_puesto=@codigo_puesto, direccion=@direccion, salario=@salario, teléfono=@teléfono, fecha_ingreso=@fecha_ingreso, departamento=@departamento, asociación=@asociacion, estado_empleado=@estado_empleado, cuenta_bancaria=@cuenta_bancaria
        --VALUES (@identificacion, @nacionalidad, @nombre, @primer_apellido, @segundo_apellido, @codigo_puesto, @direccion, @salario, @teléfono, @fecha_ingreso, @departamento, @asociacion, @estado_empleado, @cuenta_bancaria)
    END


-------------------------------------------------------

 CREATE PROC Delete_Empleado1
(
  @identificacion int,
  @nacionalidad varchar(50),
  @nombre varchar(150),
  @primer_apellido varchar(150),
  @segundo_apellido varchar(150),
  @codigo_puesto int, 
  @salario money, 
  @direccion varchar(150),
  @teléfono int, 
  @fecha_ingreso date,
  @departamento varchar(50),
  @asociacion varchar(50),
  @estado_empleado varchar(50),
  @cuenta_bancaria varchar(50)
) 

AS 
    BEGIN 
        Delete from Empleado where identificacion=@identificacion        
    END


-------------------------------------------------------


 create procedure Insertar_Puestos
(
  @codigo_puesto int,
  @nombre_puesto varchar(150),
  @descripcion_puesto varchar(150),
  @estudios_universitarios varchar(150),
  @salario_minimo money ,
  @salario_maximo money
) 

AS 
    BEGIN 
        INSERT INTO Puestos(codigo_puesto, nombre_puesto, descripcion_puesto, estudios_universitarios, salario_minimo, salario_maximo)
        VALUES (@codigo_puesto, @nombre_puesto, @descripcion_puesto, @estudios_universitarios, @salario_minimo, @salario_maximo)
    END

---

 create procedure Update_Puestos
(
  @codigo_puesto int,
  @nombre_puesto varchar(150),
  @descripcion_puesto varchar(150),
  @estudios_universitarios varchar(150),
  @salario_minimo money ,
  @salario_maximo money
) 

AS 
    BEGIN 
        Update Puestos Set codigo_puesto=@codigo_puesto, nombre_puesto=@nombre_puesto, descripcion_puesto=@descripcion_puesto, estudios_universitarios=@estudios_universitarios, salario_minimo=@salario_minimo, salario_maximo=@salario_maximo
        --VALUES (@codigo_puesto, @nombre_puesto, @descripcion_puesto, @estudios_universitarios, @salario_minimo, @salario_maximo)
    END

---

 create procedure Delete_Puestos
(
  @codigo_puesto int,
  @nombre_puesto varchar(150),
  @descripcion_puesto varchar(150),
  @estudios_universitarios varchar(150),
  @salario_minimo money ,
  @salario_maximo money
) 

AS 
    BEGIN 
        Delete from Puestos where codigo_puesto=@codigo_puesto
        --VALUES (@codigo_puesto, @nombre_puesto, @descripcion_puesto, @estudios_universitarios, @salario_minimo, @salario_maximo)
    END



-------------------------------------------------------


---TRIGGERS

CREATE TRIGGER Insert_Empleado 
ON Empleado 
AFTER Insert
AS
print 'Se ha actualizado la base de datos'

INSERT INTO Empleado  Values (2, 'Argentino', 'Pepe', 'Gonsalez', 'Del Monte', 025, 700, 'Capital', 12568496, '20151106', 'TI', 'Sí', 'Activo', 12313456481); 

Select * FROM Empleado
--FOR EACH ROW /*STATEMENT*/ EXECUTE
 
--PROCEDURE Insertar_Empleado1();


-------------------------------------------------------


CREATE TRIGGER Update_Empleado 
ON Empleado 
AFTER Update 
AS
print 'Se ha actualizado la base de datos'


-------------------------------------------------------


CREATE TRIGGER Delete_Empleado 
ON Empleado 
AFTER Delete 
AS
print 'Se ha actualizado la base de datos'
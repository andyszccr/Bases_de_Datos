USE [Automoviles]
GO
/****** Object:  Table [dbo].[AutoMovil]    Script Date: 10/04/2024 20:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoMovil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Placa] [varchar](100) NOT NULL,
	[Modelo] [varchar](100) NOT NULL,
	[Marca] [varchar](100) NOT NULL,
	[Capacidad] [int] NOT NULL,
	[TipoMarcha] [varchar](100) NOT NULL,
 CONSTRAINT [PK__AutoMovi__3214EC0789664915] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AutoMovil] ON 

INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (1, N'ABC123', N'Sedan', N'Toyota', 5, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (2, N'XYZ456', N'SUV', N'Ford', 7, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (3, N'DEF789', N'Hatchback', N'Honda', 5, N'Manual')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (4, N'GHI012', N'Pickup', N'Chevrolet', 4, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (5, N'JKL345', N'Coupe', N'BMW', 4, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (6, N'MNO678', N'Minivan', N'Chrysler', 8, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (7, N'PQR901', N'Convertible', N'Mazda', 2, N'Manual')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (8, N'STU234', N'Camión', N'Volvo', 3, N'Manual')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (9, N'VWX567', N'Familiar', N'Volkswagen', 5, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (10, N'YZA890', N'Deportivo', N'Ferrari', 2, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (11, N'CDE345', N'SUV', N'Subaru', 7, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (12, N'EFG678', N'Hatchback', N'Mitsubishi', 5, N'Manual')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (13, N'GHI901', N'Pickup', N'RAM', 4, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (14, N'IJK234', N'Coupe', N'Lamborghini', 4, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (15, N'KLM567', N'Minivan', N'Dodge', 8, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (16, N'OPQ890', N'Convertible', N'Jaguar', 2, N'Manual')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (17, N'RST012', N'Camión', N'MAN', 3, N'Manual')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (18, N'TUV345', N'Familiar', N'Seat', 5, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (19, N'VWX678', N'Deportivo', N'McLaren', 2, N'Automática')
INSERT [dbo].[AutoMovil] ([Id], [Placa], [Modelo], [Marca], [Capacidad], [TipoMarcha]) VALUES (20, N'YZA901', N'Sedan', N'Acura', 5, N'Automática')
SET IDENTITY_INSERT [dbo].[AutoMovil] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaAutomovil]    Script Date: 10/04/2024 20:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListaAutomovil]
as 
begin
	select * 
	from AutoMovil with(nolock)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaAutomovilFiltrado]    Script Date: 10/04/2024 20:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ListaAutomovilFiltrado]
(
@Placa varchar(100)
)
as 
begin
	select * 
	from AutoMovil with(nolock)
	where 
		Placa = @Placa
end
GO
/****** Object:  StoredProcedure [dbo].[SP_NuevoAutomovil]    Script Date: 10/04/2024 20:36:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_NuevoAutomovil]
(
@Placa varchar(100),
@Modelo varchar(100),
@Marca varchar(100),
@Capacidad int,
@TipoMarcha int
)
as 
begin
	insert into AutoMovil (Placa,Modelo,Marca,Capacidad,TipoMarcha)
	values(@Placa,@Modelo,@Marca,@Capacidad,@TipoMarcha)
end
GO

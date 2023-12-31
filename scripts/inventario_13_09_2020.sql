USE [master]
GO
/****** Object:  Database [Inventario_para_Archivo2]    Script Date: 13/09/2020 19:38:53 ******/
CREATE DATABASE [Inventario_para_Archivo2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inventario_para_Archivo2', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER2\MSSQL\DATA\Inventario_para_Archivo2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Inventario_para_Archivo2_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER2\MSSQL\DATA\Inventario_para_Archivo2_log.ldf' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Inventario_para_Archivo2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inventario_para_Archivo2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inventario_para_Archivo2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET RECOVERY FULL 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET  MULTI_USER 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inventario_para_Archivo2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Inventario_para_Archivo2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Inventario_para_Archivo2', N'ON'
GO
USE [Inventario_para_Archivo2]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auditoria_expediente]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auditoria_expediente](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_expediente] [nchar](10) NULL,
	[Nro_expediente] [varchar](50) NULL,
	[Nro_gde_electronico] [varchar](50) NULL,
	[Codigo_estado] [int] NULL,
	[Codigo_area] [int] NULL,
	[Observaciones] [varchar](50) NULL,
	[Fecha_modificado] [datetime] NULL,
	[Codigo_operacion] [int] NULL,
	[Codigo_usuario] [int] NULL,
	[Fecha_operacion] [datetime] NULL,
 CONSTRAINT [PK_Auditoria_expediente] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Autorizante]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autorizante](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Codigo_dependencia] [int] NOT NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Autorizante] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bitacora](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_usuario] [int] NULL,
	[Nombre_usuario] [varchar](50) NULL,
	[TipoLog] [varchar](50) NULL,
	[Accion] [varchar](50) NULL,
	[Mensaje] [varchar](50) NULL,
	[Fecha_operacion] [datetime] NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Caja]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Sala] [int] NULL,
	[Capacidad] [int] NULL,
	[Disponible] [float] NULL,
 CONSTRAINT [PK_Caja] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cuerpo]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cuerpo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nro_cuerpo] [int] NULL,
	[Fojas] [int] NULL,
	[Hojas] [int] NULL,
	[Codigo_estado] [int] NULL,
	[Codigo_expediente] [int] NULL,
	[Codigo_caja] [int] NULL,
	[Observaciones] [varchar](50) NULL,
 CONSTRAINT [PK_Cuerpo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cuerpo_estado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cuerpo_estado](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Cuerpo_estado] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dependencia]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dependencia](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Dependencia] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado_tipoRemito]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_tipoRemito](
	[Codigo_estado] [int] NOT NULL,
	[Tipo] [int] NOT NULL,
 CONSTRAINT [PK_Estado_tipoRemito] PRIMARY KEY CLUSTERED 
(
	[Codigo_estado] ASC,
	[Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Etiqueta]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Etiqueta](
	[Id_etiqueta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Etiqueta] PRIMARY KEY CLUSTERED 
(
	[Id_etiqueta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expediente](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nro_expediente] [varchar](50) NULL,
	[Nro_gde_electronico] [varchar](50) NULL,
	[Codigo_estado] [int] NULL,
	[Codigo_area] [int] NULL,
	[Observaciones] [varchar](50) NULL,
	[Fecha_modificado] [datetime] NULL,
 CONSTRAINT [PK_Expediente] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Expediente_estado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expediente_estado](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Expediente_estado] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Idioma](
	[Id_idioma] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Idioma_default] [bit] NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[Id_idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Intermediario]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Intermediario](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
 CONSTRAINT [PK_Intermediario] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permiso](
	[Nombre] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Permiso] [varchar](50) NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permiso_Permiso]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso_Permiso](
	[Id_Permiso_padre] [int] NULL,
	[Id_Permiso_hijo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Remito]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Remito](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nro_remito] [varchar](50) NULL,
	[Nota_gde] [varchar](50) NULL,
	[Codigo_autorizante] [int] NULL,
	[Codigo_intermediario] [int] NULL,
	[Codigo_estado] [int] NULL,
	[Codigo_area] [int] NULL,
	[Fecha] [datetime] NULL,
	[Observaciones] [varchar](50) NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_Remito] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Remito_estado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Remito_estado](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Remito_estado] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Remito_expedientes]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remito_expedientes](
	[Codigo_remito_expediente] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_remito] [int] NULL,
	[Codigo_expediente] [int] NULL,
 CONSTRAINT [PK_Remito_expedientes] PRIMARY KEY CLUSTERED 
(
	[Codigo_remito_expediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Remito_nros_comdoc]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Remito_nros_comdoc](
	[Codigo_remito_comdoc] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_remito] [int] NULL,
	[Nro_comdoc] [varchar](50) NULL,
 CONSTRAINT [PK_Remito_nros_comdoc] PRIMARY KEY CLUSTERED 
(
	[Codigo_remito_comdoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Traduccion]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Traduccion](
	[Id_idioma] [int] NULL,
	[Id_etiqueta] [int] NULL,
	[Traduccion] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_usuario] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contrasenia] [varchar](50) NULL,
	[Id_idioma] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario_Permiso]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Permiso](
	[Codigo_usuario] [int] NOT NULL,
	[Id_permiso] [int] NOT NULL,
 CONSTRAINT [PK_Usuario_Permiso] PRIMARY KEY CLUSTERED 
(
	[Codigo_usuario] ASC,
	[Id_permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarDisponibleCaja]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_ActualizarDisponibleCaja]
@Codigo int,
@Disponible float
as
begin
update Caja set Disponible = @Disponible 
where Codigo = @Codigo

end
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarRemitoAsociado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ActualizarRemitoAsociado]
@Codigo_remito int,
@Codigo_expediente int
as 
begin
update Remito_expedientes set Codigo_remito= @Codigo_remito 
where Codigo_expediente = @Codigo_expediente
end

GO
/****** Object:  StoredProcedure [dbo].[sp_AltaArea]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AltaArea]
@Nombre varchar (50)
as
BEGIN
	Insert into Area
	(Nombre) 
	values 
	(@Nombre)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaAutorizante]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AltaAutorizante]
@Nombre varchar (50),
@Apellido varchar (50),
@Dni int,
@Codigo_dependencia varchar(50),
@Activo Bit
as
BEGIN
	Insert into Autorizante
	(Nombre,Apellido,Dni,Codigo_dependencia,Activo) 
	values(@Nombre, @Apellido, @Dni,@Codigo_dependencia,@Activo)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_altaBitacora]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_altaBitacora]
@Codigo_usuario int,
@Nombre_usuario varchar(50),
@TipoLog varchar(50),
@Accion varchar(50),
@Mensaje nvarchar(1000),
@Fecha_operacion datetime
AS
BEGIN
	INSERT INTO Bitacora(Codigo_usuario, Nombre_usuario, TipoLog, Accion,Mensaje,Fecha_operacion) 
	values (@Codigo_usuario, @Nombre_usuario, @TipoLog, @Accion, @Mensaje,@Fecha_operacion)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaCuerpo]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AltaCuerpo]
@Nro_cuerpo int,
@Fojas int,
@Hojas int,
@Codigo_estado int,
@Codigo_expediente int,
@Codigo_caja int,
@Observaciones varchar(50)
as 
begin
insert into Cuerpo (Nro_cuerpo, Fojas, Hojas, Codigo_estado, Codigo_expediente, Codigo_caja, Observaciones)
values(@Nro_cuerpo,@Fojas,@Hojas,@Codigo_estado,@Codigo_expediente,@Codigo_caja,@Observaciones)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaDependencia]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_AltaDependencia]
@Nombre varchar (50)
as
BEGIN
	Insert into Dependencia
	(Nombre) 
	values 
	(@Nombre)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaEtiqueta]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AltaEtiqueta]
@Nombre varchar (50)
as
BEGIN
	Insert into Etiqueta
	(Nombre) 
	values 
	(@Nombre)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaExpediente]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AltaExpediente]
@Nro_expediente varchar(50),
@Nro_gde_electronico varchar(50),
@Codigo_estado int,
@Codigo_area int,
@Observaciones varchar(50),
@Fecha_modificado datetime
as 
begin
insert into Expediente (Nro_expediente,Nro_gde_electronico,Codigo_estado,Codigo_area,Observaciones,Fecha_modificado)
values(@Nro_expediente, @Nro_gde_electronico, @Codigo_estado,@Codigo_area, @Observaciones,@Fecha_modificado);
SELECT Codigo FROM Expediente WHERE Codigo = @@Identity;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_AltaIdioma]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AltaIdioma]
@Nombre varchar (50),
@Idioma_default bit
as
BEGIN
	Insert into Idioma
	(Nombre, Idioma_default) 
	values 
	(@Nombre, @Idioma_default)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaRemito]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AltaRemito]
 @Nro_remito varchar (50),
 @Nota_gde varchar(50),
 @Codigo_autorizante int,
 @Codigo_intermediario int,
 @Codigo_estado int,
 @Codigo_area int,
 @Fecha Datetime,
 @Observaciones varchar(50),
 @Tipo int
as
BEGIN
	Insert into Remito (Nro_remito,Nota_gde,Codigo_Autorizante,Codigo_intermediario,Codigo_estado,Codigo_area,Fecha,Observaciones, Tipo) 
	values 
	(@Nro_remito, @Nota_gde, @Codigo_autorizante,@Codigo_intermediario,@Codigo_estado,@Codigo_area, @Fecha,@Observaciones, @Tipo);

	SELECT Codigo FROM Remito WHERE Codigo = @@Identity;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AltaTraduccion]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_AltaTraduccion]
@Id_etiqueta int,
@Id_idioma int,
@Texto varchar(100)
as
BEGIN
	Insert into Traduccion
	(Id_etiqueta, Id_idioma,Traduccion) 
	values 
	(@Id_etiqueta, @Id_idioma, @Texto)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AuditarExp]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_AuditarExp]
@Codigo_expediente int, 
@Nro_expediente varchar(50),
@Nro_gde_electronico varchar(50),
@Codigo_estado int,
@Codigo_area int,
@Observaciones varchar(50),
@Fecha_modificado datetime,
@Codigo_operacion int,
@Codigo_usuario varchar(50)
as
BEGIN
	Insert into Auditoria_expediente(Codigo_expediente,Nro_expediente,Nro_gde_electronico,Codigo_estado,Codigo_area,Observaciones,Fecha_modificado,Codigo_operacion,Codigo_usuario,Fecha_operacion)
	 values(@Codigo_expediente,@Nro_expediente,@Nro_gde_electronico,@Codigo_estado,@Codigo_area,@Observaciones,@Fecha_modificado,@Codigo_operacion,@Codigo_usuario,SYSDATETIME())
end


GO
/****** Object:  StoredProcedure [dbo].[sp_BajaArea]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BajaArea]
 @Codigo int
AS
BEGIN

	DELETE	Area
	WHERE	Codigo = @Codigo
END

GO
/****** Object:  StoredProcedure [dbo].[sp_BajaAutorizante]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BajaAutorizante]
	@Codigo int
	
AS
BEGIN
   UPDATE Autorizante
   SET Activo = 'False'
       WHERE Codigo= @Codigo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_BajaDependencia]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BajaDependencia]
 @Codigo int
AS
BEGIN

	DELETE	Dependencia
	WHERE	Codigo = @Codigo
END

GO
/****** Object:  StoredProcedure [dbo].[sp_BajaEtiqueta]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BajaEtiqueta]
 @Id_etiqueta int
AS
BEGIN

	DELETE	Etiqueta
	WHERE	Id_etiqueta = @Id_etiqueta
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BajaIdioma]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BajaIdioma]
 @Id_idioma int
AS
BEGIN

	DELETE	Idioma
	WHERE	Id_idioma = @Id_idioma
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BajaTraduccion]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BajaTraduccion]
 @Id_idioma int,
 @Id_etiqueta int
AS
BEGIN

	DELETE	Traduccion
	WHERE	Id_etiqueta = @Id_etiqueta AND Id_idioma = @Id_idioma
END
GO
/****** Object:  StoredProcedure [dbo].[sp_borrarPadre]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_borrarPadre]
@Id int
as
Begin
delete from Permiso_Permiso where Id_Permiso_padre=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_borrarPermisoUsuario]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_borrarPermisoUsuario]
@Codigo_usuario int
as
begin
delete from Usuario_Permiso where Codigo_usuario=@Codigo_usuario
end
GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarCodigoEstado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BuscarCodigoEstado]
@Estado varchar(50),
@tipoRemito int
as
BEGIN
	select Codigo from Remito_estado
	where Estado = @Estado AND Tipo_remito = @tipoRemito
end
GO
/****** Object:  StoredProcedure [dbo].[sp_buscarEstadoPorCodigo]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_buscarEstadoPorCodigo]
@CodigoEstado int
as 
begin
select Estado from Remito_estado
where Codigo = @CodigoEstado
end
GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarIdiomaPorId]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BuscarIdiomaPorId]
@Id int
AS
BEGIN
	
	select Id_idioma, Nombre
	from Idioma
	where Id_idioma = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarRtoComdoc]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BuscarRtoComdoc]
@RtoComdoc varchar(50)
as
BEGIN
	select Nro_comdoc from Remito_nros_comdoc
	where Nro_comdoc = @RtoComdoc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarUltimoRemito]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BuscarUltimoRemito]
AS
BEGIN
	
	select TOP 1 Codigo
	from Remito
	order by Codigo desc
	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarUsuario]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BuscarUsuario]
@Nombre_usuario varchar(50),
@Contrasenia varchar(50)
AS
BEGIN
	
	select Codigo,Nombre_usuario, Email, Contrasenia, Idioma.Id_idioma, Nombre as Nombre_idioma
	from Usuario
	inner join Idioma on Usuario.Id_idioma = Idioma.Id_idioma
	where Nombre_usuario = @Nombre_usuario AND Contrasenia = @Contrasenia
END

GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarUsuarioPorNombre]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BuscarUsuarioPorNombre]
@Nombre_usuario varchar(50)
AS
BEGIN
	
	select Codigo,Nombre_usuario, Email, Contrasenia,Idioma.Id_idioma, Nombre as Nombre_idioma
	from Usuario
	inner join Idioma on Usuario.id_idioma = Idioma.id_idioma
	where Nombre_usuario = @Nombre_usuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CambiarEstadoExpediente]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_CambiarEstadoExpediente]
@Codigo int,
@Codigo_estado int
as
BEGIN
	update Expediente set Codigo_estado = @Codigo_estado, Fecha_modificado = SYSDATETIME()
	where Codigo = @Codigo
end

GO
/****** Object:  StoredProcedure [dbo].[sp_CargarNrosComdoc]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_CargarNrosComdoc]
@Codigo_remito int,
@Nro_comdoc varchar (50)
as
BEGIN
	Insert into Remito_nros_comdoc(Codigo_remito,Nro_comdoc) 
	values 
	(@Codigo_remito, @Nro_comdoc)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_CargarRemitoExpedientes]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_CargarRemitoExpedientes]
@Codigo_remito int,
@Codigo_expediente varchar (50)
as
BEGIN
	Insert into Remito_expedientes(Codigo_remito,Codigo_expediente) 
	values 
	(@Codigo_remito, @Codigo_expediente)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarPadreHijo]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_GuardarPadreHijo]
@Id_Permiso_padre int,
@Id_Permiso_hijo int
as
begin
insert into Permiso_Permiso (Id_Permiso_padre,Id_Permiso_hijo) values (@Id_Permiso_padre,@Id_Permiso_hijo)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarPermiso]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GuardarPermiso]
@Nombre varchar(50),
@Permiso varchar(50)
AS
BEGIN
INSERT into Permiso (Nombre,Permiso) values (@Nombre,@Permiso);  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarPermisoUsuario]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_GuardarPermisoUsuario]
@Codigo_usuario int,
@Id_permiso int
as
begin
insert into Usuario_Permiso(Codigo_usuario,Id_permiso) values (@Codigo_usuario,@Id_permiso)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarRemitoDevolucion]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_InsertarRemitoDevolucion]

@Nro_remito varchar(50),
@Nota_gde varchar(50),
@Codigo_autorizante int,
@Codigo_intermediario int,
@Codigo_estado int,
@Codigo_area int,
@Observaciones varchar(50),
@Tipo int
as
begin

insert into Remito(Nro_remito,Nota_gde, Codigo_autorizante,Codigo_intermediario,Codigo_estado,Codigo_area, Fecha, observaciones, Tipo)
			values(@Nro_remito, @Nota_gde, @Codigo_autorizante,@Codigo_intermediario,@Codigo_estado,@Codigo_area, SYSDATETIME(),@Observaciones,@Tipo);
			
			select Codigo from Remito where Codigo = @@IDENTITY;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_insertarRemitoExpediente]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_insertarRemitoExpediente]
@Codigo_expediente int,
@Codigo_remito int
as
begin
insert into Remito_expedientes (Codigo_remito,Codigo_expediente) values(@Codigo_remito,@Codigo_expediente)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_areas]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Listar_areas]
as
begin
select * from Area;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_autorizantes]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Listar_autorizantes]
as
begin
select Aut.Codigo,Dni,Aut.Nombre,Apellido,Aut.Codigo_dependencia,Dep.Nombre as Dependencia
from Autorizante as Aut
inner join Dependencia as Dep on
Dep.Codigo = Aut.Codigo_dependencia
where Activo = 'true';
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_dependencias]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Listar_dependencias]
as
begin
select * from Dependencia;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_etiquetas]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Listar_etiquetas]
as
begin
select * from Etiqueta;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_idiomas]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Listar_idiomas]
as
begin
select * from Idioma;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_intermediarios]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Listar_intermediarios]
as
begin
select * from Intermediario;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_traducciones]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Listar_traducciones]
as
begin
select Etiqueta.Id_etiqueta, Etiqueta.Nombre, Traduccion.Id_idioma, Traduccion from Traduccion
inner join Etiqueta on Traduccion.Id_etiqueta = Etiqueta.Id_etiqueta
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarCajas]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ListarCajas]
as
begin
select * from Caja
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarCuerpoEstados]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ListarCuerpoEstados]
as
begin
select * from Cuerpo_estado
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarEstadosExpediente]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ListarEstadosExpediente]
as
begin
select * from Expediente_estado where Codigo != 3;
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarExpedientes]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ListarExpedientes]
as
begin
select	Expediente.Codigo,Nro_expediente,Expediente.Nro_gde_electronico, Expediente_estado.Codigo as Codigo_estado,
		Expediente_estado.Estado, Area.Codigo as Codigo_area, Area.Nombre as Nombre_area,
		Cuerpo.Nro_cuerpo, Cuerpo.Hojas, Cuerpo.Fojas, Cuerpo.Observaciones, Cuerpo_estado.Codigo as Codigo_cuerpo_estado,
		Cuerpo_estado.Estado as Estado_cuerpo, Caja.Codigo as Codigo_caja, Caja.Sala,
		Expediente.Observaciones as Observaciones_expediente, Expediente.Fecha_modificado

 from Expediente
 inner join
 Expediente_estado on
 Expediente_estado.Codigo = Expediente.Codigo_estado

 inner join 
 Area on
 Area.Codigo = Expediente.Codigo_area

 inner join

 Cuerpo on
 Cuerpo.Codigo_expediente = Expediente.Codigo 

 inner join Cuerpo_estado on
 Cuerpo_estado.Codigo = Cuerpo.Codigo_estado

inner join Caja on
Caja.Codigo = Cuerpo.Codigo_caja


end

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarExpedientesSinCuerpos]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_ListarExpedientesSinCuerpos]
as
begin
select	Expediente.Codigo,Nro_expediente,Expediente.Nro_gde_electronico, Expediente_estado.Codigo as Codigo_estado,
		Expediente_estado.Estado, Area.Codigo as Codigo_area, Area.Nombre as Nombre_area,
		Expediente.Observaciones as Observaciones_expediente, Expediente.Fecha_modificado

 from Expediente
 inner join
 Expediente_estado on
 Expediente_estado.Codigo = Expediente.Codigo_estado

 inner join 
 Area on
 Area.Codigo = Expediente.Codigo_area
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ListarNotasGdeIngreso]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ListarNotasGdeIngreso]
as 
begin
select Codigo, Nota_gde from Remito
where tipo = 1 AND (Codigo_estado = 1 OR Codigo_estado= 2)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ListarRemitos]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ListarRemitos]
as
BEGIN
	Select Remito.Codigo, Nro_remito, Nota_gde, Autorizante.Codigo as Codigo_Autorizante,
	Autorizante.Nombre as Nombre_autorizante, Autorizante.Apellido as Apellido_autorizante,
	 Autorizante.Dni as Dni_autorizante,Dependencia.Codigo as Codigo_dependencia, Dependencia.Nombre As Nombre_dependencia, Intermediario.Codigo as Codigo_intermediario, Intermediario.Nombre as Nombre_intermediario,Intermediario.Apellido as Apellido_intermediario,
	  Intermediario.Dni as Dni_intermediario, Remito.Codigo_estado as Codigo_estado, Remito_estado.Estado, Area.Codigo As Codigo_area,
	 Area.Nombre as Nombre_area, Fecha, Observaciones, Remito.Tipo
	from Remito
	inner join Autorizante on
	Remito.Codigo_autorizante=Autorizante.Codigo
	inner join Dependencia on
	Autorizante.Codigo_dependencia = Dependencia.Codigo
	inner join Intermediario on
	Remito.Codigo_intermediario = Intermediario.Codigo
	inner join Area on
	Remito.Codigo_area = Area.Codigo
	inner join Remito_estado on
	Remito_estado.Codigo = Remito.Codigo_estado
	inner join Estado_tipoRemito on
	Estado_tipoRemito.Codigo_estado = Remito_estado.Codigo and Estado_tipoRemito.Tipo = Remito.Tipo 
	

	where Autorizante.Activo = 'true'
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarArea]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ModificarArea]
	@Codigo int,
	@Nombre varchar (100)
AS
BEGIN
   UPDATE Area
   SET Nombre = @Nombre
       WHERE Codigo = @Codigo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarAutorizante]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ModificarAutorizante]
	@Codigo int,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@Dni int,
	@Codigo_dependencia int,
	@Activo bit
AS
BEGIN
   UPDATE Autorizante
   SET Nombre = @Nombre, Apellido = @Apellido, Dni = @Dni, Codigo_dependencia = @Codigo_dependencia, Activo = @Activo
       WHERE Codigo = @Codigo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarDependencia]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ModificarDependencia]
	@Codigo int,
	@Nombre varchar (100)
AS
BEGIN
   UPDATE Dependencia
   SET Nombre = @Nombre
       WHERE Codigo = @Codigo
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarEtiqueta]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ModificarEtiqueta]
	@Id_etiqueta int,
	@Nombre varchar (100)
AS
BEGIN
   UPDATE Etiqueta
   SET Nombre = @Nombre
       WHERE Id_etiqueta = @Id_etiqueta
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarIdioma]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ModificarIdioma]
	@Id_idioma int,
	@Nombre varchar (100),
	@Idioma_default bit
AS
BEGIN
   UPDATE Idioma
   SET Nombre = @Nombre,
		Idioma_default = @Idioma_default
       WHERE Id_idioma = @Id_idioma
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarRemito]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ModificarRemito]
	@Codigo int,
	@Codigo_estado int,
    @Nro_remito varchar(50),
	@Codigo_area int,
    @Fecha datetime,
    @Codigo_autorizante int,
    @Nota_gde varchar(50),
    @Codigo_intermediario int,
    @Observaciones varchar(50),
    @Tipo int
AS
BEGIN
   UPDATE Remito
   SET Codigo_estado = @Codigo_estado, Nro_remito = @Nro_remito, Codigo_area = @Codigo_area,
		Fecha = @Fecha, Codigo_autorizante = @Codigo_autorizante, Nota_gde = @Nota_gde, Codigo_intermediario = @Codigo_intermediario,
		Observaciones = @Observaciones, Tipo = @Tipo
       WHERE Codigo = @Codigo
end


GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarTraduccion]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ModificarTraduccion]
	@Id_etiqueta int,
	@Id_idioma int,
	@Texto varchar(100)
AS
BEGIN
   UPDATE Traduccion
   SET Traduccion = @Texto
   WHERE Id_etiqueta = @Id_etiqueta and Id_idioma= @Id_idioma
end
GO
/****** Object:  StoredProcedure [dbo].[sp_obtenerCuerposPorCaja]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_obtenerCuerposPorCaja]
@Codigo_caja int
as
begin
select Cuerpo.Codigo, Cuerpo.Codigo_expediente, Cuerpo.Nro_cuerpo, Cuerpo.Hojas, Cuerpo.Fojas, 
Cuerpo.Codigo_caja, Cuerpo.Observaciones
from Cuerpo
inner join Caja on
Caja.Codigo = Cuerpo.Codigo_caja
where Caja.Codigo =  @Codigo_caja
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RecuperarExpedienteDeAuditoria]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_RecuperarExpedienteDeAuditoria]
@Nro_expediente varchar(50)
as
begin
select Auditoria_expediente.Codigo,Codigo_expediente, Nro_expediente,Nro_gde_electronico,Codigo_estado,Estado,Codigo_area, Nombre as Nombre_area,
Observaciones,Fecha_modificado,Codigo_operacion,Codigo_usuario,Nombre_usuario, Fecha_operacion
 from Auditoria_expediente 
inner join Expediente_estado on
Auditoria_expediente.Codigo_estado = Expediente_estado.Codigo
inner join Area on
Area.Codigo = Auditoria_expediente.Codigo_area
inner join Usuario on
Usuario.Codigo= Auditoria_expediente.Codigo_usuario
where Nro_expediente = @Nro_expediente
end
GO
/****** Object:  StoredProcedure [dbo].[sp_todasLasFamilias]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_todasLasFamilias]
as
begin
select * from Permiso where Permiso is null
end
GO
/****** Object:  StoredProcedure [dbo].[sp_todasLasPatentes]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_todasLasPatentes]
as
begin
select * from Permiso where Permiso is not null
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TodosLosUsuarios]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TodosLosUsuarios]
as
begin
select Codigo,Nombre_usuario, Email, Contrasenia, Idioma.Id_idioma, Nombre as Nombre_idioma
 from Usuario
 inner join Idioma on Usuario.Id_idioma = Idioma.Id_idioma
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Traducciones]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Traducciones]
@Id_idioma int
as
begin
select t.Id_idioma,t.Traduccion as Traduccion_Traduccion, e.Id_etiqueta, e.Nombre as Nombre_etiqueta from Traduccion t inner join Etiqueta e on t.Id_etiqueta=e.Id_etiqueta where t.Id_idioma = @Id_idioma
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerCuerposExp]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TraerCuerposExp]
@Codigo_exp int
as
begin
select Cuerpo.Codigo, Cuerpo.Nro_cuerpo, Cuerpo.Fojas, Cuerpo.Hojas,
 Cuerpo.Codigo_estado, Cuerpo_estado.Estado, Cuerpo.Codigo_caja, Caja.Sala, Caja.Capacidad, Caja.Disponible, Observaciones
from Cuerpo
inner join
Cuerpo_estado on
Cuerpo.Codigo_estado = Cuerpo_estado.Codigo
inner join Caja on
Caja.Codigo = Cuerpo.Codigo_caja

where Codigo_expediente = @Codigo_exp

end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerDatosEstado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TraerDatosEstado]
@Estado varchar(50),
@TipoRemito int
as
begin
select Codigo, Estado from Remito_estado
inner join Estado_tipoRemito on
Estado_tipoRemito.Codigo_estado = Remito_estado.Codigo
where Estado_tipoRemito.Tipo = @TipoRemito AND Remito_estado.Estado = @Estado;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerDatosRemitoPorNOTAGDE]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TraerDatosRemitoPorNOTAGDE]
@NotaGde varchar(50)
as
begin
select Remito.Codigo,Remito.Nro_remito, Remito.Nota_gde, Autorizante.Codigo as Codigo_Autorizante,
		Autorizante.Nombre as Nombre_autorizante, Autorizante.Apellido as Apellido_autorizante,
		Autorizante.Dni as Dni_autorizante, Dependencia.Codigo as Codigo_dependencia, 
		Dependencia.Nombre As Nombre_dependencia, Intermediario.Codigo as Codigo_intermediario, 
		Intermediario.Nombre as Nombre_intermediario,Intermediario.Apellido as Apellido_intermediario,
		Intermediario.Dni as Dni_intermediario, Remito.Codigo_estado as Codigo_estado, Remito_estado.Estado, Area.Codigo As Codigo_area,
		Area.Nombre as Nombre_area, Fecha, 
		Remito.Observaciones, Tipo

from Remito

		inner join Autorizante on
		Remito.Codigo_autorizante=Autorizante.Codigo
		inner join Dependencia on
		Autorizante.Codigo_dependencia = Dependencia.Codigo
		inner join Intermediario on
		Remito.Codigo_intermediario = Intermediario.Codigo
		
		inner join Area on
		Remito.Codigo_area = Area.Codigo

		inner join Remito_estado on
		Remito_estado.Codigo = Remito.Codigo_estado

where Tipo = 1 and Nota_gde = @NotaGde
end
GO
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosDevolucion]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_traerEstadosDevolucion]
as
begin
select Remito_estado.Codigo, Remito_estado.Estado from Remito_estado
inner join Estado_tipoRemito on
Remito_estado.Codigo = Estado_tipoRemito.Codigo_estado
where Estado_tipoRemito.Tipo= 3
end
GO
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosEgreso]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_traerEstadosEgreso]
as
begin
select Remito_estado.Codigo, Remito_estado.Estado from Remito_estado
inner join Estado_tipoRemito on
Remito_estado.Codigo = Estado_tipoRemito.Codigo_estado
where Estado_tipoRemito.Tipo= 2

end
GO
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosIngreso]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_traerEstadosIngreso]
as
begin
select Remito_estado.Codigo, Remito_estado.Estado from Remito_estado
inner join Estado_tipoRemito on
Remito_estado.Codigo = Estado_tipoRemito.Codigo_estado
where Estado_tipoRemito.Tipo= 1 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerExpediente]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerExpediente]
@NroDocumento varchar(50)
AS
BEGIN
select Expediente.Codigo, Nro_expediente, Nro_gde_electronico, Codigo_estado, Estado, Codigo_area, Nombre, Observaciones, Fecha_modificado
from Expediente
inner join Expediente_estado on
Expediente.Codigo_estado = Expediente_estado.Codigo
inner join Area on
Expediente.Codigo_area = Area.Codigo
where Nro_expediente= @NroDocumento;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientePorNroExp]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerExpedientePorNroExp]
@Nro_expediente varchar(50)
as
BEGIN
	select Codigo from Expediente
	where Nro_expediente = @Nro_expediente
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientePorRemitoDev]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerExpedientePorRemitoDev]
@Codigo_remito int
as
begin
select	Remito_expedientes.Codigo_expediente, Expediente.Nro_expediente, Expediente.Nro_gde_electronico, 
		Expediente_estado.Codigo as Codigo_estado, Expediente_estado.Estado as Estado,
		Area.Codigo as Codigo_area, Area.Nombre as Nombre_area,
		Expediente.Observaciones, Expediente.Fecha_modificado
  
  from Remito_expedientes
  
  inner join Expediente on
  Expediente.Codigo = Remito_expedientes.Codigo_expediente
  inner join Expediente_estado on
  Expediente_estado.Codigo = Expediente.Codigo_estado
  inner join Area on
  Area.Codigo = Expediente.Codigo_area

  where Remito_expedientes.Codigo_Remito = @Codigo_remito

end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientesPorCodigoRemito]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerExpedientesPorCodigoRemito]
@Codigo_remito int
as
begin
select Remito_expedientes.Codigo_expediente, Nro_expediente, Nro_gde_electronico, Expediente_estado.Codigo as Codigo_estado,
Expediente_estado.Estado as Estado, Area.Codigo as Codigo_area, Area.Nombre as Nombre_area, Expediente.Observaciones, Expediente.Fecha_modificado
from Remito_expedientes

inner join Expediente on
Expediente.Codigo = Remito_expedientes.Codigo_expediente
inner join Expediente_estado on
Expediente_estado.Codigo = Expediente.Codigo_estado
inner join Area on
Area.Codigo = Expediente.Codigo_area

where Remito_expedientes.Codigo_remito = @Codigo_remito



end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerIdiomas]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerIdiomas]
as
begin
select * from Idioma;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerNumerosComdocRemito]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TraerNumerosComdocRemito]
@Codigo_remito int
as
begin
select Nro_comdoc from Remito_nros_comdoc
where Codigo_remito = @Codigo_remito
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerPermisosUsuario]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerPermisosUsuario]
@Id int
as
begin
select P.* from Usuario_Permiso UP inner join Permiso P on UP.Id_permiso=P.Id where Codigo_usuario=@Id;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerRemitoAsociado]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TraerRemitoAsociado]
@Codigo_expediente int
as
BEGIN

select	Remito_expedientes.Codigo_remito, Remito.Nro_remito, Remito.Nota_gde, Autorizante.Codigo as Codigo_Autorizante,
		Autorizante.Nombre as Nombre_autorizante, Autorizante.Apellido as Apellido_autorizante,
		Autorizante.Dni as Dni_autorizante, Dependencia.Codigo as Codigo_dependencia, Dependencia.Nombre As Nombre_dependencia, Intermediario.Codigo as Codigo_intermediario, Intermediario.Nombre as Nombre_intermediario,Intermediario.Apellido as Apellido_intermediario,
		Intermediario.Dni as Dni_intermediario, Remito.Codigo_estado as Codigo_estado, Remito_estado.Estado, Area.Codigo As Codigo_area,
		Area.Nombre as Nombre_area, Fecha, Remito.Observaciones, Remito.Tipo
		
		from Remito_expedientes 
		
		inner join Remito on 
		Remito_expedientes.Codigo_remito = Remito.Codigo
		inner join Expediente on
		Remito_expedientes.Codigo_expediente = Expediente.Codigo

		inner join Autorizante on
		Remito.Codigo_autorizante=Autorizante.Codigo
		inner join Dependencia on
		Autorizante.Codigo_dependencia = Dependencia.Codigo
		inner join Intermediario on
		Remito.Codigo_intermediario = Intermediario.Codigo
		inner join Area on
		Remito.Codigo_area = Area.Codigo
		inner join Remito_estado on
		Remito.Codigo_estado = Remito_estado.Codigo
		inner join Estado_tipoRemito on
		Estado_tipoRemito.Codigo_estado = Remito_estado.Codigo and Estado_tipoRemito.Tipo = Remito.Tipo

where Codigo_expediente = @Codigo_expediente and Autorizante.Activo = 'true'

end
GO
/****** Object:  StoredProcedure [dbo].[sp_TraerTodo]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TraerTodo]
@familia varchar(100)
AS
BEGIN
DECLARE @query varchar(max) = '
						with recursivo as (
							select sp2.Id_Permiso_padre, 
							sp2.Id_Permiso_hijo 
						from Permiso_Permiso SP2
                        where sp2.Id_Permiso_padre ' + @familia + '
                        UNION ALL 
                        select sp.Id_Permiso_padre, sp.Id_Permiso_hijo from Permiso_Permiso sp 
                        inner join recursivo r on r.Id_Permiso_hijo= sp.Id_Permiso_padre
                        )
                        select r.Id_Permiso_padre,r.Id_Permiso_hijo,p.Id,p.Nombre, p.Permiso
                        from recursivo r 
                        inner join Permiso p on r.Id_Permiso_hijo = p.Id';

exec(@query)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_traerUltimoID]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_traerUltimoID]
as
BEGIN
SELECT Id FROM Permiso WHERE Id = @@Identity;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_VerificarEstadoSala2]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_VerificarEstadoSala2]
as
begin 
select Codigo, Estado from Expediente_estado where Estado in ('IngresoARevisar', 'Devolucion', 'PorRetirar')
end
GO
/****** Object:  StoredProcedure [dbo].[sp_VerificarNotaGDE]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_VerificarNotaGDE]
@Nota_gde varchar(50)
as
BEGIN
	select Nota_gde from Remito
	where Nota_gde = @Nota_gde
end
GO
/****** Object:  StoredProcedure [dbo].[sp_VerificarNroExpElectronico]    Script Date: 13/09/2020 19:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_VerificarNroExpElectronico]
@Nro_exp_electronico varchar(50)
as
begin
select Nro_gde_electronico from Expediente
where Nro_gde_electronico = @Nro_exp_electronico

end
GO
USE [master]
GO
ALTER DATABASE [Inventario_para_Archivo2] SET  READ_WRITE 
GO

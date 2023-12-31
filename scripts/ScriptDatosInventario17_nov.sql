CREATE DATABASE Inventario_para_Archivo2;
USE [Inventario_para_Archivo2]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Auditoria_autorizante]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auditoria_autorizante](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_autorizante] [int] NULL,
	[Dni] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Codigo_dependencia] [int] NULL,
	[Codigo_operacion] [int] NULL,
	[Codigo_usuario] [int] NULL,
	[Fecha_operacion] [datetime] NULL,
 CONSTRAINT [PK_Auditoria_autorizante] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auditoria_expediente]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Autorizante]    Script Date: 17/11/2020 10:08:41 ******/
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
 CONSTRAINT [PK_Autorizante] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Caja]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Cuerpo]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Cuerpo_estado]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Dependencia]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[DVV]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DVV](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[NombreTabla] [varchar](50) NULL,
	[ValorDigitoVV] [bigint] NULL,
 CONSTRAINT [PK_DVV] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Estado_tipoRemito]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Etiqueta]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Expediente]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Expediente_estado]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Idioma]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Intermediario]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Permiso]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Permiso_Permiso]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso_Permiso](
	[Id_Permiso_padre] [int] NULL,
	[Id_Permiso_hijo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Remito]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Remito_estado]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Remito_expedientes]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Remito_nros_comdoc]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Traduccion]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Dni] [int] NULL,
	[Nombre_usuario] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contrasenia] [varchar](50) NULL,
	[Id_idioma] [int] NULL CONSTRAINT [DF_Usuario_Id_idioma]  DEFAULT ((1)),
	[Activo] [bit] NULL,
	[Dvh] [bigint] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario_Permiso]    Script Date: 17/11/2020 10:08:41 ******/
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
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (1, N'Gestión Económica')
INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (2, N'CNRT')
INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (4, N'Ministerio de interior de la nacon')
INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (5, N'Informatica Logica')
INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (7, N'Gestion Economica')
INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (8, N'RRHH')
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[Auditoria_autorizante] ON 

INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1010, 9, 32318670, N'Micaela', N'Sánchez', 1003, 1, 1, CAST(N'2020-11-03 00:15:51.947' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1011, 9, 31222333, N'Micaela', N'Sánchez', 1003, 3, 1, CAST(N'2020-11-03 00:16:21.600' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1012, 9, 32318670, N'Micaela', N'Sánchez', 1003, 4, 1, CAST(N'2020-11-03 00:16:39.990' AS DateTime))
SET IDENTITY_INSERT [dbo].[Auditoria_autorizante] OFF
SET IDENTITY_INSERT [dbo].[Auditoria_expediente] ON 

INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1, N'1         ', N'MEMO-S02:3333333/2020', N'EX-2019-55645678- -APN-DSDD#MTR', 4, 4, N'ingreso a revisar expediente', CAST(N'2020-01-10 15:26:13.350' AS DateTime), 1, 1, CAST(N'2020-01-10 15:26:13.427' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2, N'2         ', N'TRI-S02:9929388/2019', N'EX-2019-99887666- -APN-DSD#MTR', 4, 1, N'ingrso a revisar', CAST(N'2020-01-10 15:33:45.760' AS DateTime), 1, 1, CAST(N'2020-01-10 15:33:45.767' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (3, N'3         ', N'ACTU-S02:3339998/2019', N'EX-2019-88877654- -APN-FDG#MTR', 1, 1, N'archivo figitalizado', CAST(N'2020-01-10 15:46:26.440' AS DateTime), 1, 1, CAST(N'2020-01-10 15:46:26.450' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4, N'2         ', N'TRI-S02:9929388/2019', N'EX-2019-99887666- -APN-DSD#MTR', 3, 1, N'ingrso a revisar', CAST(N'2020-01-10 16:04:30.073' AS DateTime), 3, 1, CAST(N'2020-01-10 16:04:32.800' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (5, N'3         ', N'ACTU-S02:3339998/2019', N'EX-2019-88877654- -APN-FDG#MTR', 3, 1, N'archivo figitalizado', CAST(N'2020-01-10 16:04:41.107' AS DateTime), 3, 1, CAST(N'2020-01-10 16:04:42.143' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (6, N'4         ', N'TRI-S02:0000000/2020', N'EX-2019-92929292- -APN-DFSS#MTR', 5, 5, N'devuelvo expediente porue esta incompleto', CAST(N'2020-01-10 16:09:49.683' AS DateTime), 1, 1, CAST(N'2020-01-10 16:09:49.703' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (8, N'5         ', N'TRI-S02:4998777/2019', N'EX-2019-00099999- -APN-HDD#MTR', 3, 1, N'Expediente digitalizado', CAST(N'2020-08-10 17:14:14.743' AS DateTime), 3, 1, CAST(N'2020-08-10 17:14:14.810' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1010, N'1007      ', N'MEMO-S02:9998888/2020', N'EX-2019-33339339- -APN-DFFF#JTR', 4, 1, N'ingreso a revisar expdiente', CAST(N'2020-11-04 14:13:15.807' AS DateTime), 1, 1, CAST(N'2020-11-04 14:13:15.853' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1011, N'1008      ', N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 4, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:08:02.393' AS DateTime), 1, 1, CAST(N'2020-11-15 11:08:02.430' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1012, N'1008      ', N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 2, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:09:47.103' AS DateTime), 3, 1, CAST(N'2020-11-15 11:09:49.463' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1013, N'1008      ', N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 5, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:15:22.150' AS DateTime), 3, 1, CAST(N'2020-11-15 11:15:22.847' AS DateTime))
SET IDENTITY_INSERT [dbo].[Auditoria_expediente] OFF
SET IDENTITY_INSERT [dbo].[Autorizante] ON 

INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (1, 32318670, N'Laura', N'Mancuso', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (2, 34332434, N'Sonia', N'Petrona', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (3, 32318567, N'Pamela', N'San Pedro', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (4, 32323223, N'Carla', N'Surace', 1002)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (5, 32543459, N'Laura', N'Mancuso', 1003)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (6, 3222222, N'Andrea', N'Ledesma', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (7, 2322111, N'Maria', N'Sanchez', 1003)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (8, 39223882, N'Carlos', N'Suarez', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (9, 32318670, N'Micaela', N'Sánchez', 1003)
SET IDENTITY_INSERT [dbo].[Autorizante] OFF
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (1, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 13:43:36.513' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (2, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-01-10 15:26:13.430' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (3, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 15:30:51.657' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (4, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Ingrese los formatos correctos', CAST(N'2020-01-10 15:33:24.660' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (5, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-01-10 15:33:45.773' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (6, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 15:42:36.183' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-01-10 15:46:26.477' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 15:55:16.227' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-01-10 16:09:49.707' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (10, 4, N'lalonzo', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 16:21:12.117' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11, 0, N'Sin usuario', N'Evento', N'Logout', N'Logout correcto', CAST(N'2020-01-10 16:21:20.993' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 20:58:02.737' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (13, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 21:59:04.893' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (14, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 22:05:20.937' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (15, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 22:07:51.103' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (16, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 22:09:11.473' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (17, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 22:46:42.267' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (18, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 23:17:15.657' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (19, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 23:19:25.963' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (20, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 23:23:43.117' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (21, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 23:29:11.523' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (22, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 23:39:11.273' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (23, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-01-10 23:42:17.173' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (24, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-01-10 23:42:27.657' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (25, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-01-10 23:42:35.423' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (26, 0, N'Sin usuario', N'Evento', N'Logout', N'Logout correcto', CAST(N'2020-01-10 23:44:45.883' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (27, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-01-10 23:45:08.347' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (28, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-02-10 19:05:02.087' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (29, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-02-10 19:43:49.277' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (30, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-02-10 20:07:56.437' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (31, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 13:05:16.247' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (32, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 13:08:32.033' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (33, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 14:29:10.237' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (34, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 15:52:31.993' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (35, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 15:58:09.347' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (36, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 16:31:34.310' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (37, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 17:11:56.913' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (38, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 17:17:22.233' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (39, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-03-10 17:35:49.760' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (40, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-04-10 13:50:29.917' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (41, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-04-10 14:03:18.327' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (42, 1, N'msanchez', N'Evento', N'Restauración', N'Se restauró la base de datos correctamente', CAST(N'2020-07-10 12:47:04.437' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (43, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-07-10 13:02:51.447' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (44, 1, N'msanchez', N'Evento', N'Restauración', N'Se restauró la base de datos correctamente', CAST(N'2020-07-10 14:13:17.440' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (45, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-07-10 14:39:18.507' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (46, 1, N'msanchez', N'Evento', N'Restauración', N'Se restauró la base de datos correctamente', CAST(N'2020-07-10 22:54:39.537' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (47, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-07-10 22:56:19.710' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (48, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-07-10 23:00:50.900' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (49, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-07-10 23:07:14.250' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (50, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-07-10 23:11:04.130' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (51, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-08-10 17:03:25.537' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (52, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Falta añadir cuerpos', CAST(N'2020-08-10 17:04:06.143' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (53, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Ingrese los formatos correctos', CAST(N'2020-08-10 17:07:23.673' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (54, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Ingrese los formatos correctos', CAST(N'2020-08-10 17:10:39.403' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (55, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-08-10 17:11:18.993' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (56, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-08-10 17:11:19.067' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (57, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-08-10 17:11:40.960' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (58, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Egreso masivo hecho correctamente', CAST(N'2020-08-10 17:14:14.737' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (59, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-08-10 17:14:14.803' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (60, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Pdf creado correctamente!', CAST(N'2020-08-10 17:14:20.950' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (61, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-08-10 17:55:24.313' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (62, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-08-10 17:55:53.457' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (63, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-08-10 18:04:09.643' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (64, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-08-10 18:10:06.220' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (65, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-10-10 21:09:24.717' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (66, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-10-10 21:22:56.353' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (67, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-10 20:31:02.593' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7091, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-02 02:26:28.327' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7092, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-02 19:24:15.853' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7093, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:14:54.037' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7094, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:24:36.690' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7095, 1, N'msanchez', N'Excepcion', N'Usuario', N'El usuario ingresado ya existe', CAST(N'2020-11-03 00:29:15.313' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7096, 1, N'msanchez', N'Evento', N'Usuario', N'Usuario modificado corrrectamente', CAST(N'2020-11-03 00:30:21.977' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7097, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:32:07.063' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7098, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:32:47.050' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7099, 1, N'msanchez', N'Evento', N'Usuario', N'Usuario modificado corrrectamente', CAST(N'2020-11-03 00:33:14.247' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7100, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:36:27.233' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7101, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:42:05.017' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7103, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:42:59.127' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7104, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:43:44.767' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7106, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:45:38.453' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7107, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:46:56.720' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7108, 1, N'msanchez', N'Evento', N'Usuario', N'Alta usuario correcto', CAST(N'2020-11-03 00:47:39.613' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7110, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:51:08.147' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7111, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-03 00:52:53.190' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7112, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 14:09:19.773' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7113, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Ingrese los formatos correctos', CAST(N'2020-11-04 14:13:04.223' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7114, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-04 14:13:15.840' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7115, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-04 14:13:15.860' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7116, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-04 14:13:20.797' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7117, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 15:32:40.783' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7118, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 16:37:32.437' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7119, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 16:41:06.610' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7120, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 20:24:13.990' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7121, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 20:32:54.297' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7122, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 20:44:03.433' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7123, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 21:26:01.463' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7124, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 21:33:45.233' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7125, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 22:22:54.583' AS DateTime))
GO
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7126, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 22:38:04.217' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7127, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 23:00:54.210' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7128, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-04 23:08:14.707' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7129, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-05 00:58:02.760' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7130, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-05 01:10:00.230' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7131, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-05 01:18:40.440' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7132, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-11-05 01:48:32.780' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7133, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-11-05 01:49:44.043' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7134, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-11-05 01:51:06.120' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7135, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 22:29:29.537' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7136, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 23:25:42.263' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7137, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 23:33:38.197' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7138, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 23:36:52.203' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7139, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 23:39:29.403' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7140, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 23:42:38.353' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7141, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 23:56:32.700' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7142, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-07 23:58:10.870' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7143, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 00:01:14.783' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7144, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 00:22:17.393' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7145, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 00:25:30.420' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7146, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 00:28:22.770' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7147, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 10:58:48.120' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7148, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 11:16:45.260' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7149, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 11:53:33.827' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7150, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 12:28:56.360' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7151, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 12:29:47.123' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7152, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 12:34:11.320' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7153, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 21:02:37.013' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7154, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 22:25:20.510' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7155, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 22:30:31.763' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7156, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 22:40:37.693' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7157, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 22:43:02.163' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7158, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 23:07:23.787' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7159, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 23:23:19.013' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7160, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 23:48:33.817' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7161, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 23:55:08.643' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (7162, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-08 23:59:49.187' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8154, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-12 21:31:11.603' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8155, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-13 18:33:41.590' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8156, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-13 18:34:03.057' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8157, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-13 19:39:26.883' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8158, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-13 19:54:11.450' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8159, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-13 19:56:56.817' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8160, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-13 19:59:09.510' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8161, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-13 20:07:42.707' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8162, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 10:14:10.523' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8163, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-11-14 10:30:03.620' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8164, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 10:30:11.780' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8165, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 10:35:59.483' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8166, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 10:37:00.977' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8167, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-11-14 10:40:25.183' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8168, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 10:40:32.987' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8169, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 10:54:15.420' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8170, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 10:57:53.403' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8171, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 11:33:17.663' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8172, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 11:34:14.627' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8173, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 11:41:21.303' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8174, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 12:02:03.137' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8175, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 12:03:04.660' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8176, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 12:34:53.707' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8177, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 12:36:32.353' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8178, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 12:44:38.860' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8179, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 12:48:17.323' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8180, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 12:58:31.217' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8181, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 13:20:57.357' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8182, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 13:57:47.310' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8183, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 14:09:17.123' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8184, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 14:15:19.167' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8185, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 14:17:55.550' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8186, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 14:28:05.777' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8187, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 14:42:46.333' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8188, 1, N'msanchez', N'Evento', N'Reporte', N'Pdf generado corrtamente', CAST(N'2020-11-14 14:43:02.530' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8189, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 14:48:26.407' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8190, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 16:33:53.653' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8191, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-14 17:02:34.497' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8192, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-15 11:06:33.377' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8193, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-15 11:08:02.417' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8194, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-15 11:08:02.433' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8195, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-15 11:08:11.873' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8196, 1, N'msanchez', N'Evento', N'Modificación', N'Modificación Documento correcta', CAST(N'2020-11-15 11:09:51.700' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8197, 1, N'msanchez', N'Evento', N'Modificación', N'Modificación Documento correcta', CAST(N'2020-11-15 11:15:23.443' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8198, 1, N'msanchez', N'Evento', N'Asociacion Remito Devolución', N'Asociación Remito devolución correcta', CAST(N'2020-11-15 11:15:36.153' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (8199, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-11-15 11:15:39.303' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9155, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-16 17:52:01.113' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9156, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 01:01:45.843' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9157, 1, N'msanchez', N'Evento', N'Usuario', N'Alta usuario correcto', CAST(N'2020-11-17 01:06:10.933' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9158, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 01:19:02.880' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9159, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 01:51:42.757' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9160, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 01:52:49.097' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9161, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 01:54:56.597' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
SET IDENTITY_INSERT [dbo].[Caja] ON 

INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (1, 2, 2000, 1924)
INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (2, 1, 2000, 1992)
INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (3, 3, 2000, 2000)
INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (4, 4, 2000, 2000)
INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (5, 5, 2000, 2000)
SET IDENTITY_INSERT [dbo].[Caja] OFF
SET IDENTITY_INSERT [dbo].[Cuerpo] ON 

INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (1, 1, 2, 2, 2, 1, 1, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2, 2, 2, 2, 2, 1, 1, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (3, 1, 22, 22, 1, 2, 1, N'faltaante')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (4, 1, 2, 2, 2, 3, 2, N'dadasd')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (5, 2, 2, 2, 2, 3, 2, N'dadasd')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (6, 1, 2, 2, 1, 4, 1, N'czcxc')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (7, 1, 2, 2, 2, 5, 2, N'sdadsad')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (8, 1, 2, 2, 1, 6, 2, N'adadad')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (1008, 1, 2, 2, 1, 1006, 2, N'awqewqe')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (1009, 1, 2, 2, 2, 1007, 1, N'aeae')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (1010, 1, 2, 2, 2, 1008, 1, N'ingreso de 1 cuerpo')
SET IDENTITY_INSERT [dbo].[Cuerpo] OFF
SET IDENTITY_INSERT [dbo].[Cuerpo_estado] ON 

INSERT [dbo].[Cuerpo_estado] ([Codigo], [Estado]) VALUES (1, N'Faltante')
INSERT [dbo].[Cuerpo_estado] ([Codigo], [Estado]) VALUES (2, N'Completo')
SET IDENTITY_INSERT [dbo].[Cuerpo_estado] OFF
SET IDENTITY_INSERT [dbo].[Dependencia] ON 

INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (2, N'Ministerio de transporte')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1002, N'Min de produccion')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1003, N'hacienda')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1004, N'Vialidaddd')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1005, N'Produccion ambiental')
SET IDENTITY_INSERT [dbo].[Dependencia] OFF
SET IDENTITY_INSERT [dbo].[DVV] ON 

INSERT [dbo].[DVV] ([Codigo], [NombreTabla], [ValorDigitoVV]) VALUES (1, N'Usuario', 23300)
SET IDENTITY_INSERT [dbo].[DVV] OFF
INSERT [dbo].[Estado] ([codigo], [descripcion]) VALUES (1, N'ARevisar')
INSERT [dbo].[Estado] ([codigo], [descripcion]) VALUES (2, N'Aceptado')
INSERT [dbo].[Estado] ([codigo], [descripcion]) VALUES (3, N'Rechazado')
INSERT [dbo].[Estado] ([codigo], [descripcion]) VALUES (4, N'Anulado')
INSERT [dbo].[Estado_tipoRemito] ([Codigo_estado], [Tipo]) VALUES (1, 1)
INSERT [dbo].[Estado_tipoRemito] ([Codigo_estado], [Tipo]) VALUES (2, 1)
INSERT [dbo].[Estado_tipoRemito] ([Codigo_estado], [Tipo]) VALUES (2, 2)
INSERT [dbo].[Estado_tipoRemito] ([Codigo_estado], [Tipo]) VALUES (2, 3)
INSERT [dbo].[Estado_tipoRemito] ([Codigo_estado], [Tipo]) VALUES (3, 1)
INSERT [dbo].[Estado_tipoRemito] ([Codigo_estado], [Tipo]) VALUES (4, 3)
SET IDENTITY_INSERT [dbo].[Etiqueta] ON 

INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1, N'salir')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (2, N'ingresar')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (3, N'usuario')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (4, N'password')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (5, N'iniciar sesion')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (6, N'LabelUsuarios')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (7, N'Labelprueba')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (9, N'lalalallala')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (10, N'FormUsuarios')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (11, N'grpUsuarios')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (12, N'bntAgrPatUsu')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (13, N'configurarUsu')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (14, N'LabelAgregarPatentes')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (15, N'labelAgregarFamiliasUsu')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (16, N'cmdGuardarFamilia')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (17, N'Inicio')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (18, N'CerrarSesion')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (19, N'Idiomas')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (20, N'ConfiguracionPerfiles')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (21, N'GestionPatentesyFamilias')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (22, N'GestionUsuarios')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (23, N'AdminIngresoEgresoMasivo')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (24, N'RegistrarIngresoMasivo')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (25, N'AdminDeServicios')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (26, N'GestorIdiomas')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (27, N'GestorEtiquetas')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (28, N'GestorTraducciones')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (29, N'groupBoxEtiqueta')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (30, N'gestorDeEtiquetaForm')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (31, N'labelCodEtiqueta')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (32, N'LabelNombEtiqueta')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (33, N'BotNuevEtiqueta')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (34, N'BotModEtiqueta')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (35, N'BotElimEtiqueta')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (36, N'BotLimpiarEti')
SET IDENTITY_INSERT [dbo].[Etiqueta] OFF
SET IDENTITY_INSERT [dbo].[Expediente] ON 

INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (1, N'MEMO-S02:3333333/2020', N'EX-2019-55645678- -APN-DSDD#MTR', 4, 4, N'ingreso a revisar expediente', CAST(N'2020-01-10 15:26:13.350' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2, N'TRI-S02:9929388/2019', N'EX-2019-99887666- -APN-DSD#MTR', 3, 1, N'ingrso a revisar', CAST(N'2020-01-10 16:04:30.073' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (3, N'ACTU-S02:3339998/2019', N'EX-2019-88877654- -APN-FDG#MTR', 3, 1, N'archivo figitalizado', CAST(N'2020-01-10 16:04:41.107' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (4, N'TRI-S02:0000000/2020', N'EX-2019-92929292- -APN-DFSS#MTR', 5, 5, N'devuelvo expediente porue esta incompleto', CAST(N'2020-01-10 16:09:49.683' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (5, N'TRI-S02:4998777/2019', N'EX-2019-00099999- -APN-HDD#MTR', 3, 1, N'Expediente digitalizado', CAST(N'2020-08-10 17:14:14.743' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (1007, N'MEMO-S02:9998888/2020', N'EX-2019-33339339- -APN-DFFF#JTR', 5, 1, N'ingreso a revisar expdiente', CAST(N'2020-11-05 01:37:56.300' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (1008, N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 5, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:15:22.520' AS DateTime))
SET IDENTITY_INSERT [dbo].[Expediente] OFF
SET IDENTITY_INSERT [dbo].[Expediente_estado] ON 

INSERT [dbo].[Expediente_estado] ([Codigo], [Estado]) VALUES (1, N'Digitalizado')
INSERT [dbo].[Expediente_estado] ([Codigo], [Estado]) VALUES (2, N'NoDigitalizado')
INSERT [dbo].[Expediente_estado] ([Codigo], [Estado]) VALUES (3, N'Desarchivado')
INSERT [dbo].[Expediente_estado] ([Codigo], [Estado]) VALUES (4, N'IngresoARevisar')
INSERT [dbo].[Expediente_estado] ([Codigo], [Estado]) VALUES (5, N'Devolucion')
INSERT [dbo].[Expediente_estado] ([Codigo], [Estado]) VALUES (6, N'PorRetirar')
SET IDENTITY_INSERT [dbo].[Expediente_estado] OFF
SET IDENTITY_INSERT [dbo].[Idioma] ON 

INSERT [dbo].[Idioma] ([Id_idioma], [Nombre], [Idioma_default]) VALUES (1, N'Español', 1)
INSERT [dbo].[Idioma] ([Id_idioma], [Nombre], [Idioma_default]) VALUES (2, N'English', 0)
INSERT [dbo].[Idioma] ([Id_idioma], [Nombre], [Idioma_default]) VALUES (4, N'lolololosfdfsf', 0)
INSERT [dbo].[Idioma] ([Id_idioma], [Nombre], [Idioma_default]) VALUES (5, N'Polaco', 0)
SET IDENTITY_INSERT [dbo].[Idioma] OFF
SET IDENTITY_INSERT [dbo].[Intermediario] ON 

INSERT [dbo].[Intermediario] ([Codigo], [Dni], [Nombre], [Apellido]) VALUES (1, 3232233, N'Jose', N'Lopez')
INSERT [dbo].[Intermediario] ([Codigo], [Dni], [Nombre], [Apellido]) VALUES (2, 3233221, N'Carlos ', N'Payares')
SET IDENTITY_INSERT [dbo].[Intermediario] OFF
SET IDENTITY_INSERT [dbo].[Permiso] ON 

INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Puede gestionar perfiles', 1, N'ConfiguracionPerfiles')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Puede Administrar Ingreso y Egreso Masivo', 2, N'AdminIngreso_EgresoMasivo')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Puede Administrar Servicios ', 3, N'AdminDeServicios')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Puede Gestionar Remitos', 4, N'Remitos')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Puede Gestionar Expedientes', 5, N'GestionExpedientes')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Puede Gestionar Por documento', 6, N'Por_Documento')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Administrador', 7, NULL)
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Operador', 8, NULL)
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'PuedeVerBitacora', 9, N'Bitacora')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Prueba', 10, N'ConfiguracionPerfiles')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'Prueba2', 11, N'ConfiguracionPerfiles')
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'PuedeHacerBuckupYRestore', 1012, N'BuckupYRestore')
SET IDENTITY_INSERT [dbo].[Permiso] OFF
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 1)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 2)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 3)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 4)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 5)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 6)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (8, 2)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (8, 4)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (8, 6)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 9)
SET IDENTITY_INSERT [dbo].[Remito] ON 

INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1, N'S02: 0000001/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 2, 1, CAST(N'2020-01-10 14:27:42.000' AS DateTime), N'se kngresa a revisar los siguientes comdoc', 1)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (2, N'S02: 0000002/2020', N'NO-2020-66655555-APN-HGFG#MTR', 3, 1, 2, 1, CAST(N'2020-01-10 16:04:13.483' AS DateTime), N'egreso de exp', 2)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (3, N'S02:0000003/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 4, 1, CAST(N'2020-01-10 16:10:11.000' AS DateTime), N'Se devuelve porque esta incorrecto y tiene faltant', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (4, N'S02: 0000004/2020', N'NO-2020-88754444-DDF-DFFF#MFD', 3, 1, 2, 1, CAST(N'2020-08-10 17:14:14.663' AS DateTime), N'se desarchiva expediente por pedido de gestión eco', 2)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (5, N'S02:0000005/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 4, 1, CAST(N'2020-11-05 01:38:30.000' AS DateTime), N'devolucion de exp 1007', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (6, N'S02:0000006/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 2, 1, CAST(N'2020-11-15 11:15:36.140' AS DateTime), N'', 3)
SET IDENTITY_INSERT [dbo].[Remito] OFF
SET IDENTITY_INSERT [dbo].[Remito_estado] ON 

INSERT [dbo].[Remito_estado] ([Codigo], [Estado]) VALUES (1, N'ARevisar')
INSERT [dbo].[Remito_estado] ([Codigo], [Estado]) VALUES (2, N'Aceptado')
INSERT [dbo].[Remito_estado] ([Codigo], [Estado]) VALUES (3, N'Rechazado')
INSERT [dbo].[Remito_estado] ([Codigo], [Estado]) VALUES (4, N'Anulado')
SET IDENTITY_INSERT [dbo].[Remito_estado] OFF
SET IDENTITY_INSERT [dbo].[Remito_expedientes] ON 

INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1, 2, 2)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (2, 2, 3)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (3, 1, 4)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (4, 3, 4)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (5, 4, 5)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (6, 1, 1006)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (7, 1, 1007)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (8, 5, 1007)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (9, 1, 1008)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (10, 6, 1008)
SET IDENTITY_INSERT [dbo].[Remito_expedientes] OFF
SET IDENTITY_INSERT [dbo].[Remito_nros_comdoc] ON 

INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (1, 1, N'RTO-S02:3333222/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (2, 1, N'RTO-S02:1111111/2020')
SET IDENTITY_INSERT [dbo].[Remito_nros_comdoc] OFF
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1, N'Salir')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1, N'Exit')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 2, N'Ingresar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 2, N'Enter')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 3, N'Usuario')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 3, N'User')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 4, N'Contraseña')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 4, N'Password')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 6, N'Todos los usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 6, N'All users')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 10, N'Gestión de Usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 10, N'User Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 12, N'Agregar>>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 12, N'Add>>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 15, N'Agregar Familias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 15, N'Add families')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 16, N'Guardar cambios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 16, N'Save Changes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 17, N'Inicio')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 17, N'Start')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 18, N'Cerrar Sesión')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 18, N'Sign off')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 19, N'Idiomas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 19, N'Languages')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 20, N'Configuración Perfiles')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 20, N'Profiles Configuration')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 21, N'Configuración Patentes y Familias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 21, N'Patent and Family Configuration')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 22, N'Gestión de Usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 22, N'User Management')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 23, N'Administrador de Ingreso/Egreso Masivo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 23, N'Administration of income mass exit')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 24, N'Registrar Ingreso Masivo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 24, N'Register Mass Income')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 25, N'Administrador de Servicios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 25, N'Service Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 26, N'Gestor de Idiomas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 26, N'Language Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 27, N'Gestor de Etiquetas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 27, N'Tag Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 28, N'Gestor de Traducciones')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 28, N'Translation Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 29, N'Etiquetas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 29, N'Labels')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 30, N'Gestor de Etiquetas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 30, N'Tag Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 31, N'Codigo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 31, N'Code')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 32, N'Nombre')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 32, N'Name')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 33, N'Nuevo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 33, N'New')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 34, N'Modificar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 34, N'Modify')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 35, N'Eliminar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 35, N'Delete')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 36, N'Limpiar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 36, N'Clean')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 11, N'Usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 11, N'Users')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 13, N'Configurar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 13, N'Config')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 14, N'Agregar Patentes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 14, N'Add Patents')
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (1, N'Micaerla', N'Sánchez', 32318670, N'msanchez', N'msanchez@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2458)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (2, N'Lorena', N'Acosta', 43333333, N'lacosta', N'lacosta', N'2EOAG8NbGRU=', 1, 1, 2285)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (3, N'Marcos', N'Suarez', 323333, N'msuarez', N'msuarez@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2277)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (4, N'Andrea', N'Ledesma', 3233333, N'aledesma', N'aledesma@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2378)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (5, N'Carla', N'Acosta', 111111, N'cacosta', N'cacosta', N'2EOAG8NbGRU=', 1, 1, 2195)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (6, N'Omar', N'Aguirre', 22222222, N'oaguirre', N'oaguirre@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2446)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (7, N'Laura', N'Mancuso', 322222, N'lmancuso', N'lmancuso', N'2EOAG8NbGRU=', 1, 1, 2340)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (8, N'Carmen', N'Gomez', 222222, N'gomez', N'cgomez', N'2EOAG8NbGRU=', 1, 0, 2330)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (9, N'Pepe', N'Sifredo', 322223, N'psifredo', N'psifredo@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2119)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (10, N'Esmeralda', N'Arredondo', 3233222, N'earredondo', N'earredondo@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2472)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (1, 7)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (1, 1012)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (2, 8)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (3, 8)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (4, 7)
/****** Object:  StoredProcedure [dbo].[DVActualizarDVH]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DVActualizarDVH]
(
@NombreTabla varchar(50),
@Codigo int,
@ValorAcum bigint,
@NomColumna varchar(50)
)

AS
BEGIN

DECLARE @SQL NVARCHAR(max),@Nom VARCHAR(128), @IdF int, @Val bigint, @Col varchar(50)

SET @SQL=
REPLACE(REPLACE(REPLACE(REPLACE(
'UPDATE [@Nom] SET Dvh = @Val WHERE [@Col] = @IdF','@Nom',@NombreTabla),
'@Val',@ValorAcum),'@Col',@NomColumna),'@IdF',@Codigo)	
        EXECUTE(@SQL)

END

GO
/****** Object:  StoredProcedure [dbo].[DVActualizarDVV]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DVActualizarDVV]
(
	@NombreTabla varchar(30),
	@ValorDVV nvarchar(300)
)


AS
BEGIN

UPDATE DVV 
SET ValorDigitoVV = @ValorDVV
WHERE NombreTabla = @NombreTabla


END

GO
/****** Object:  StoredProcedure [dbo].[DVCalcularDVV]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DVCalcularDVV]
(
	@NombreTabla varchar(30)
)


AS
BEGIN
DECLARE @SQL NVARCHAR(max), @Nom VARCHAR(30)

SET @SQL=
REPLACE(
'SELECT SUM(Dvh) as Dvh FROM @Nom','@Nom',@NombreTabla)
        EXECUTE(@SQL)

END


GO
/****** Object:  StoredProcedure [dbo].[DVInsertarDVV]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DVInsertarDVV]
(
	@NombreTabla varchar(30),
	@ValorDVV nvarchar(300)
)


AS
BEGIN

-- insert into DVV (NombreTabla,ValorDigitoVV) values(@NombreTabla,@ValorDVV)
IF EXISTS (SELECT NombreTabla=@NombreTabla FROM DVV)	
	UPDATE DVV SET ValorDigitoVV=@ValorDVV
	WHERE NombreTabla = @NombreTabla

ELSE INSERT into DVV(NombreTabla,ValorDigitoVV) values(@NombreTabla,@ValorDVV)

END


GO
/****** Object:  StoredProcedure [dbo].[DVTraerDVHSuma]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DVTraerDVHSuma]
(
	@NombreTabla varchar(30)
)


AS
BEGIN
DECLARE @SQL NVARCHAR(max), @Nom VARCHAR(30)

SET @SQL=
REPLACE(
'SELECT [Dvh] FROM [@Nom]','@Nom',@NombreTabla)
        EXECUTE(@SQL)

END

GO
/****** Object:  StoredProcedure [dbo].[DVTraerDVV]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DVTraerDVV]
(
	@NombreTabla varchar(30)
)


AS
BEGIN
DECLARE @SQL NVARCHAR(max), @Nom VARCHAR(30)

/*SET @SQL=
REPLACE(
'SELECT ValorDigitoVV FROM DVV where NombreTabla = [@Nom]','@Nom',@NombreTabla)
        EXECUTE(@SQL)
*/	

SELECT ValorDigitoVV FROM DVV where NombreTabla = @NombreTabla

END


GO
/****** Object:  StoredProcedure [dbo].[ListarTodosAutorizantes]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ListarTodosAutorizantes]
as
begin
select Autorizante.Codigo,Dni,Autorizante.Nombre,Apellido,Autorizante.Codigo_dependencia,Dependencia.Nombre as Dependencia
from Autorizante
inner join Dependencia on
Dependencia.Codigo = Autorizante.Codigo_dependencia
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarDisponibleCaja]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarRemitoAsociado]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaArea]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaAutorizante]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AltaAutorizante]
@Nombre varchar (50),
@Apellido varchar (50),
@Dni int,
@Codigo_dependencia varchar(50)
as
BEGIN
	Insert into Autorizante
	(Nombre,Apellido,Dni,Codigo_dependencia) 
	values(@Nombre, @Apellido, @Dni,@Codigo_dependencia)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_altaBitacora]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaCuerpo]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaDependencia]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaEtiqueta]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaExpediente]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaIdioma]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaRemito]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaTraduccion]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaUsuario]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AltaUsuario]
@Nombre varchar (50),
@Apellido varchar(50),
@Dni int,
@Nombre_usuario varchar(50),
@Email varchar(50),
@Contrasenia varchar(50),
@Id_idioma int
as
BEGIN
	Insert into Usuario
	(Nombre,Apellido, Dni, Nombre_usuario,Email, Contrasenia, Id_idioma, Activo) 
	values 
	(@Nombre,@Apellido,@Dni,@Nombre_usuario,@Email,@Contrasenia, @Id_idioma,'true')
	SELECT Codigo FROM Usuario WHERE Codigo = @@Identity;
end       


GO
/****** Object:  StoredProcedure [dbo].[sp_AuditarAutorizante]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AuditarAutorizante]
@Codigo_autorizante int, 
@Dni int,
@Nombre varchar(50),
@Apellido varchar(50),
@Codigo_dependencia int,
@Codigo_operacion int,
@Codigo_usuario int
as
BEGIN
	Insert into Auditoria_autorizante(Codigo_autorizante,Dni,Nombre,Apellido,Codigo_dependencia,Codigo_operacion,Codigo_usuario,Fecha_operacion)
	 values(@Codigo_autorizante,@Dni,@Nombre,@Apellido,@Codigo_dependencia,@Codigo_operacion,@Codigo_usuario,SYSDATETIME())
end

GO
/****** Object:  StoredProcedure [dbo].[sp_AuditarExp]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaArea]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaDependencia]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaEtiqueta]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaIdioma]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaTraduccion]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaUsuario]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BajaUsuario]
@Codigo int
as
begin
update Usuario set Activo = 'false'
where Codigo = @Codigo
end

GO
/****** Object:  StoredProcedure [dbo].[sp_BaseDatosRespaldar]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_BaseDatosRespaldar]
	(@Nombre varchar(50),
	@Destino varchar(300)
)


AS
BEGIN

BACKUP DATABASE Inventario_para_Archivo2 TO DISK = @Destino WITH NAME = @Nombre

END


GO
/****** Object:  StoredProcedure [dbo].[sp_BitacoraListar]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BitacoraListar]
as
begin
select * from Bitacora
left join Usuario on
Bitacora.Codigo_usuario = Usuario.Codigo
end

GO
/****** Object:  StoredProcedure [dbo].[sp_BitacoraVerLogs]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_BitacoraVerLogs]
@TipoLog varchar(50),
@FechaInicio datetime,
@FechaFin datetime
as
begin
select * from Bitacora where TipoLog=@TipoLog AND
Fecha_operacion between @FechaInicio and @FechaFin
end

GO
/****** Object:  StoredProcedure [dbo].[sp_borrarPadre]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_borrarPermisoUsuario]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_buscarEstadoPorCodigo]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarIdiomaPorId]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarRtoComdoc]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarUltimoRemito]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarUsuario]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BuscarUsuario]
@Nombre_usuario varchar(50),
@Contrasenia varchar(50)
AS
BEGIN
	
	select Codigo, Usuario.Nombre, Apellido, Dni, Nombre_usuario, Email, Contrasenia, Idioma.Id_idioma, Idioma.Nombre as Nombre_idioma, Activo
	from Usuario
	inner join Idioma on Usuario.Id_idioma = Idioma.Id_idioma
	where Nombre_usuario = @Nombre_usuario AND Contrasenia = @Contrasenia
END


GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarUsuarioPorNombre]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BuscarUsuarioPorNombre]
@Nombre_usuario varchar(50)
AS
BEGIN
	
	select Codigo, Usuario.Nombre, Apellido, Dni, Nombre_usuario, Email, Contrasenia,Idioma.Id_idioma, Idioma.Nombre as Nombre_idioma, Activo
	from Usuario
	inner join Idioma on Usuario.id_idioma = Idioma.id_idioma
	where Nombre_usuario = @Nombre_usuario
END

GO
/****** Object:  StoredProcedure [dbo].[sp_CambiarEstadoExpediente]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CargarNrosComdoc]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CargarRemitoExpedientes]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CodigoCajaSala2]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_CodigoCajaSala2]
as
begin
select Codigo From Caja
where Sala = 2
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ExpedienteVerReporte]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ExpedienteVerReporte]
-- @Nro_expediente varchar(50),
--@CodEstado int,
--@CodArea int,
--@CodUsuario int,
--@FechaInicio datetime,
--@FechaFin datetime
as
begin
select Auditoria_expediente.Codigo, Expediente.Codigo as Codigo_expediente,Expediente.Nro_expediente, Expediente.Nro_gde_electronico,
Expediente.Fecha_modificado, Expediente_estado.Codigo as Codigo_estado, Expediente_estado.Estado, Expediente.Observaciones,
area.Codigo as Codigo_area, Area.Nombre as Nombre_area, Usuario.Codigo as Codigo_usuario, Usuario.Nombre_usuario,
Auditoria_expediente.Codigo_operacion, Auditoria_expediente.Fecha_operacion

from Expediente
left join Auditoria_expediente  on
Auditoria_expediente.Codigo_expediente = Expediente.Codigo
inner join Area on
Area.Codigo = Auditoria_expediente.Codigo_area
inner join Expediente_estado on
Expediente_estado.Codigo = Auditoria_expediente.Codigo_estado
inner join Usuario on
Usuario.Codigo = Auditoria_expediente.Codigo_usuario

-- where Expediente.Nro_expediente = @Nro_expediente
-- and Expediente.Fecha_modificado between @FechaInicio and @FechaFin
-- and Expediente.Codigo_estado = @CodEstado 
-- and Expediente.Codigo_area = @CodArea 
-- and Usuario.Codigo=@CodUsuario 

end
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarPadreHijo]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GuardarPermiso]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GuardarPermisoUsuario]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarRemitoDevolucion]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_insertarRemitoExpediente]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LiberarEspacio]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_LiberarEspacio]
@Codigo_caja int,
@valor int
as
begin
update Caja set Disponible = (Disponible + @valor)
where Codigo = @Codigo_caja
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_areas]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_autorizantes]    Script Date: 17/11/2020 10:08:41 ******/
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
end


GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_dependencias]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_etiquetas]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_idiomas]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_intermediarios]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_traducciones]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarCajas]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarCuerpoEstados]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarEstadosExpediente]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarExpedientes]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarExpedientesSinCuerpos]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarNotasGdeIngreso]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarRemitos]    Script Date: 17/11/2020 10:08:41 ******/
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
end


GO
/****** Object:  StoredProcedure [dbo].[sp_ListarTodosEstadosExpediente]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ListarTodosEstadosExpediente]
as
begin
select * from Expediente_estado
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarArea]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarAutorizante]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ModificarAutorizante]
	@Codigo int,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@Dni int,
	@Codigo_dependencia int
AS
BEGIN
   UPDATE Autorizante
   SET Nombre = @Nombre, Apellido = @Apellido, Dni = @Dni, Codigo_dependencia = @Codigo_dependencia
       WHERE Codigo = @Codigo
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarDependencia]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarEtiqueta]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarIdioma]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarRemito]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarTraduccion]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarUsuario]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ModificarUsuario]
@Codigo int,
@Nombre varchar(50),
@Apellido varchar(50),
@Dni int,
@Nombre_usuario varchar(50),
@Contrasenia varchar(50),
@Email varchar(50),
@Id_idioma int
AS
BEGIN
   UPDATE Usuario
   SET Nombre = @Nombre, Apellido = @Apellido, Dni = @Dni, Nombre_usuario = @Nombre_usuario, Contrasenia = @Contrasenia,
   Email = @Email, Id_idioma = @Id_idioma
       WHERE Codigo = @Codigo
end

GO
/****** Object:  StoredProcedure [dbo].[sp_MoverASala2]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_MoverASala2]
@Codigo_caja int,
@Codigo_expediente int
as
begin
update Cuerpo set Codigo_caja= @Codigo_caja
where Codigo_expediente = @Codigo_expediente
end
GO
/****** Object:  StoredProcedure [dbo].[sp_obtenerCuerposPorCaja]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_QuitarEspacioSala2]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_QuitarEspacioSala2]
@Codigo_sala int,
@valor int
as
begin
update Caja set Disponible = (Disponible - @valor)
where Codigo = @Codigo_sala
end
GO
/****** Object:  StoredProcedure [dbo].[sp_RecuperarAutorizanteDeAuditoria]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_RecuperarAutorizanteDeAuditoria]
@Codigo_autorizante int
as
begin
select Auditoria_autorizante.Codigo,Codigo_autorizante,Auditoria_autorizante.Dni,Auditoria_autorizante.Nombre,Auditoria_autorizante.Apellido, Dependencia.Codigo as Codigo_dependencia,
Dependencia.Nombre as Nombre_dependencia,Codigo_operacion,Codigo_usuario,Nombre_usuario, Fecha_operacion
 from Auditoria_autorizante 
inner join Dependencia on
Dependencia.Codigo = Auditoria_autorizante.Codigo_dependencia
inner join Usuario on
Usuario.Codigo= Auditoria_autorizante.Codigo_usuario
inner join Autorizante on
Autorizante.Codigo = Auditoria_autorizante.Codigo_autorizante
where Codigo_autorizante = @Codigo_autorizante
end

GO
/****** Object:  StoredProcedure [dbo].[sp_RecuperarExpedienteDeAuditoria]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_RecuperarExpedienteDeAuditoria]
@Nro_expediente varchar(50)
as
begin
select Auditoria_expediente.Codigo,Auditoria_expediente.Codigo_expediente, Auditoria_expediente.Nro_expediente,Auditoria_expediente.Nro_gde_electronico,Auditoria_expediente.Codigo_estado,Estado,Auditoria_expediente.Codigo_area, Area.Nombre as Nombre_area,
Auditoria_expediente.Observaciones,Auditoria_expediente.Fecha_modificado,Codigo_operacion,Codigo_usuario,Nombre_usuario, Fecha_operacion
 from Auditoria_expediente 
inner join Expediente_estado on
Auditoria_expediente.Codigo_estado = Expediente_estado.Codigo
inner join Area on
Area.Codigo = Auditoria_expediente.Codigo_area
inner join Usuario on
Usuario.Codigo= Auditoria_expediente.Codigo_usuario
inner join Expediente on
Expediente.Nro_expediente = Auditoria_expediente.Nro_expediente
where Auditoria_expediente.Nro_expediente = @Nro_expediente
end

GO
/****** Object:  StoredProcedure [dbo].[sp_todasLasFamilias]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_todasLasPatentes]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TodosLosUsuarios]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TodosLosUsuarios]
as
begin
select Codigo, Usuario.Nombre, Apellido, Dni, Nombre_usuario, Email, Contrasenia, Idioma.Id_idioma, Idioma.Nombre as Nombre_idioma, Activo
 from Usuario
 inner join Idioma on Usuario.Id_idioma = Idioma.Id_idioma
 where Activo = 'true';
end


GO
/****** Object:  StoredProcedure [dbo].[sp_TodosLosUsuariosActivosyNoActivos]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TodosLosUsuariosActivosyNoActivos]
as
begin
select Codigo, Usuario.Nombre, Apellido, Dni, Nombre_usuario, Email, Contrasenia, Idioma.Id_idioma, Idioma.Nombre as Nombre_idioma, Activo, Dvh
 from Usuario
 inner join Idioma on Usuario.Id_idioma = Idioma.Id_idioma
end


GO
/****** Object:  StoredProcedure [dbo].[sp_Traducciones]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerCodUltimoAutorizante]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerCodUltimoAutorizante]
as
begin
SELECT top 1 Codigo FROM Autorizante
Order by Codigo desc
end

GO
/****** Object:  StoredProcedure [dbo].[sp_TraerCuerposExp]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerDatosEstado]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerDatosRemitoPorNOTAGDE]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerDisponibilidadCaja]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_TraerDisponibilidadCaja]
@Codigo_caja int
as
begin
select Disponible from Caja
where Codigo = @Codigo_caja
end
GO
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosDevolucion]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosEgreso]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosIngreso]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpediente]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientePorNroExp]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientePorRemitoDev]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientesPorCodigoRemito]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerIdiomas]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerNumerosComdocRemito]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerPermisosUsuario]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerRemitoAsociado]    Script Date: 17/11/2020 10:08:41 ******/
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

where Codigo_expediente = @Codigo_expediente

end

GO
/****** Object:  StoredProcedure [dbo].[sp_TraerTodo]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_traerUltimoID]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_traerUltimoID]
as
BEGIN
-- ESTO ESTA MAL
SELECT Id FROM Permiso WHERE Id = @@Identity;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_VerificarEstadoSala2]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_VerificarNombreUsu]    Script Date: 17/11/2020 10:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_VerificarNombreUsu]
@Nombre_usuario varchar (50)
as
BEGIN
	select * from Usuario 
	where Nombre_usuario = @Nombre_usuario
end       


GO
/****** Object:  StoredProcedure [dbo].[sp_VerificarNotaGDE]    Script Date: 17/11/2020 10:08:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_VerificarNroExpElectronico]    Script Date: 17/11/2020 10:08:41 ******/
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

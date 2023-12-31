USE [Inventario_para_Archivo2]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Auditoria_autorizante]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Auditoria_expediente]    Script Date: 15/12/2020 20:25:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auditoria_expediente](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_expediente] [int] NULL,
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
/****** Object:  Table [dbo].[Autorizante]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Bitacora]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Caja]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Cuerpo]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Cuerpo_estado]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Dependencia]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[DVV]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Estado_tipoRemito]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Etiqueta]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Expediente]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Expediente_estado]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Idioma]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Intermediario]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Permiso]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Permiso_Permiso]    Script Date: 15/12/2020 20:25:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso_Permiso](
	[Id_Permiso_padre] [int] NOT NULL,
	[Id_Permiso_hijo] [int] NOT NULL,
 CONSTRAINT [PK_Permiso_Permiso] PRIMARY KEY CLUSTERED 
(
	[Id_Permiso_padre] ASC,
	[Id_Permiso_hijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Remito]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Remito_estado]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Remito_expedientes]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Remito_nros_comdoc]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Traduccion]    Script Date: 15/12/2020 20:25:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Traduccion](
	[Id_idioma] [int] NOT NULL,
	[Id_etiqueta] [int] NOT NULL,
	[Traduccion] [varchar](50) NULL,
 CONSTRAINT [PK_Traduccion] PRIMARY KEY CLUSTERED 
(
	[Id_idioma] ASC,
	[Id_etiqueta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 15/12/2020 20:25:52 ******/
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
/****** Object:  Table [dbo].[Usuario_Permiso]    Script Date: 15/12/2020 20:25:52 ******/
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
INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (9, N'Administracion')
INSERT [dbo].[Area] ([Codigo], [Nombre]) VALUES (1010, N'Convenios')
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[Auditoria_autorizante] ON 

INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1010, 9, 32318670, N'Micaela', N'Sánchez', 1003, 1, 1, CAST(N'2020-11-03 00:15:51.947' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1011, 9, 31222333, N'Micaela', N'Sánchez', 1003, 3, 1, CAST(N'2020-11-03 00:16:21.600' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1012, 9, 32318670, N'Micaela', N'Sánchez', 1003, 4, 1, CAST(N'2020-11-03 00:16:39.990' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1013, 8, 3933333, N'Carlos', N'Suarez', 2, 3, 1, CAST(N'2020-11-19 13:34:06.347' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1014, 10, 32333222, N'Ines', N'Gonzalez', 1006, 1, 1, CAST(N'2020-11-21 22:18:56.793' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1015, 10, 3122222, N'Ines', N'Gonzalez', 1006, 3, 1, CAST(N'2020-11-22 20:32:27.783' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1016, 10, 32111111, N'Ines', N'Gonzalez', 1006, 3, 1, CAST(N'2020-11-22 20:32:44.443' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1017, 11, 2222222, N'Mario', N'Suarez', 1004, 1, 1, CAST(N'2020-11-22 20:33:37.327' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1018, 10, 3122222, N'Ines', N'Gonzalez', 1006, 4, 1, CAST(N'2020-11-22 20:34:10.910' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1019, 11, 111111, N'Mario', N'Suarez', 1004, 3, 1, CAST(N'2020-11-22 20:34:49.217' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1020, 11, 2222222, N'Mario', N'Suarez', 1004, 4, 1, CAST(N'2020-11-22 20:35:06.977' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2014, 1010, 21111222, N'Andrea', N'Rodriguez', 1004, 1, 1, CAST(N'2020-12-05 12:04:31.967' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2015, 10, 312998888, N'Ines', N'Gonzalez', 1006, 3, 1, CAST(N'2020-12-05 12:04:57.307' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2016, 1010, 3222333, N'Andrea', N'Rodriguez', 1004, 3, 1, CAST(N'2020-12-05 12:06:25.697' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2017, 1010, 21111222, N'Andrea', N'Rodriguez', 1004, 4, 1, CAST(N'2020-12-05 12:07:27.617' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2018, 1011, 322233, N'Roberto', N'Tallarico', 2, 1, 1, CAST(N'2020-12-05 13:32:58.263' AS DateTime))
INSERT [dbo].[Auditoria_autorizante] ([Codigo], [Codigo_autorizante], [Dni], [Nombre], [Apellido], [Codigo_dependencia], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2019, 1011, 322233, N'Roberto', N'Tallarico', 2006, 3, 1, CAST(N'2020-12-05 13:33:09.583' AS DateTime))
SET IDENTITY_INSERT [dbo].[Auditoria_autorizante] OFF
SET IDENTITY_INSERT [dbo].[Auditoria_expediente] ON 

INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1, 1, N'MEMO-S02:3333333/2020', N'EX-2019-55645678- -APN-DSDD#MTR', 4, 4, N'ingreso a revisar expediente', CAST(N'2020-01-10 15:26:13.350' AS DateTime), 1, 1, CAST(N'2020-01-10 15:26:13.427' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2, 2, N'TRI-S02:9929388/2019', N'EX-2019-99887666- -APN-DSD#MTR', 4, 1, N'ingrso a revisar', CAST(N'2020-01-10 15:33:45.760' AS DateTime), 1, 1, CAST(N'2020-01-10 15:33:45.767' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (3, 3, N'ACTU-S02:3339998/2019', N'EX-2019-88877654- -APN-FDG#MTR', 1, 1, N'archivo figitalizado', CAST(N'2020-01-10 15:46:26.440' AS DateTime), 1, 1, CAST(N'2020-01-10 15:46:26.450' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4, 2, N'TRI-S02:9929388/2019', N'EX-2019-99887666- -APN-DSD#MTR', 3, 1, N'ingrso a revisar', CAST(N'2020-01-10 16:04:30.073' AS DateTime), 3, 1, CAST(N'2020-01-10 16:04:32.800' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (5, 3, N'ACTU-S02:3339998/2019', N'EX-2019-88877654- -APN-FDG#MTR', 3, 1, N'archivo figitalizado', CAST(N'2020-01-10 16:04:41.107' AS DateTime), 3, 1, CAST(N'2020-01-10 16:04:42.143' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (6, 4, N'TRI-S02:0000000/2020', N'EX-2019-92929292- -APN-DFSS#MTR', 5, 5, N'devuelvo expediente porue esta incompleto', CAST(N'2020-01-10 16:09:49.683' AS DateTime), 1, 1, CAST(N'2020-01-10 16:09:49.703' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (8, 5, N'TRI-S02:4998777/2019', N'EX-2019-00099999- -APN-HDD#MTR', 3, 1, N'Expediente digitalizado', CAST(N'2020-08-10 17:14:14.743' AS DateTime), 3, 1, CAST(N'2020-08-10 17:14:14.810' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1010, 1007, N'MEMO-S02:9998888/2020', N'EX-2019-33339339- -APN-DFFF#JTR', 4, 1, N'ingreso a revisar expdiente', CAST(N'2020-11-04 14:13:15.807' AS DateTime), 1, 1, CAST(N'2020-11-04 14:13:15.853' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1011, 1008, N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 4, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:08:02.393' AS DateTime), 1, 1, CAST(N'2020-11-15 11:08:02.430' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1012, 1008, N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 2, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:09:47.103' AS DateTime), 3, 1, CAST(N'2020-11-15 11:09:49.463' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (1013, 1008, N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 5, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:15:22.150' AS DateTime), 3, 1, CAST(N'2020-11-15 11:15:22.847' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2011, 2008, N'EXP-S02:9876655/2019', N'EX-2020-99776666- -APN-DSFD#MTR', 4, 2, N'Expediente Ingreso a Revisar', CAST(N'2020-11-17 13:56:33.707' AS DateTime), 1, 1, CAST(N'2020-11-17 13:56:33.747' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2012, 2009, N'TRI-S02:4432290/2020', N'EX-2019-66678999- -APN-DSD#MTR', 1, 1, N'Se ingresa expediente digitalizado', CAST(N'2020-11-17 16:28:59.440' AS DateTime), 1, 1, CAST(N'2020-11-17 16:28:59.463' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2013, 2008, N'EXP-S02:9876655/2019', N'EX-2020-99776666- -APN-DSFD#MTR', 3, 2, N'Expediente Ingreso a Revisar', CAST(N'2020-11-17 16:39:51.633' AS DateTime), 3, 1, CAST(N'2020-11-17 16:39:51.640' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2014, 2009, N'TRI-S02:4432290/2020', N'EX-2019-66678999- -APN-DSD#MTR', 3, 1, N'Se ingresa expediente digitalizado', CAST(N'2020-11-17 16:39:53.340' AS DateTime), 3, 1, CAST(N'2020-11-17 16:39:53.357' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2015, 2010, N'TRI-S02:2299300/2018', N'EX-2019-99988877- -KJL-DSS#MTR', 5, 8, N'Se devuelve Expediente por faltante en cuerpos', CAST(N'2020-11-17 17:32:58.023' AS DateTime), 1, 1, CAST(N'2020-11-17 17:32:58.033' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2016, 2011, N'TRI-S02:8844555/2020', N'EX-2018-88887777- -APN-AAH#HJY', 1, 1, N'Se digitaliza documento', CAST(N'2020-11-17 17:55:22.253' AS DateTime), 1, 1, CAST(N'2020-11-17 17:55:22.277' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2017, 2011, N'TRI-S02:8844555/2020', N'EX-2018-88887777- -APN-AAH#HJY', 5, 1, N'Se digitaliza documento', CAST(N'2020-11-17 18:25:28.977' AS DateTime), 3, 1, CAST(N'2020-11-17 18:25:28.997' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2018, 2012, N'TRI-S02:0003333/2020', N'EX-2019-43334433- -APN-ULL#MTR', 1, 1, N'Documento digitalizado', CAST(N'2020-11-18 15:38:45.920' AS DateTime), 1, 1, CAST(N'2020-11-18 15:38:45.953' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2019, 2012, N'TRI-S02:0003333/2020', N'EX-2019-43334433- -APN-ULL#MTR', 5, 1, N'Documento digitalizado', CAST(N'2020-11-18 19:40:36.117' AS DateTime), 3, 1, CAST(N'2020-11-18 19:40:36.127' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2020, 2013, N'EXP-S02:3344223/2020', N'EX-2020-29222288- -APD-JHJ#MTR', 2, 8, N'Faltan digitalizar', CAST(N'2020-11-18 21:39:55.923' AS DateTime), 1, 1, CAST(N'2020-11-18 21:39:55.957' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2021, 2014, N'NOTA-S02:8999299/2019', N'EX-2020-88882228- -APN-DKK#MTR', 1, 8, N'Expediente digitralizado', CAST(N'2020-11-18 21:59:29.713' AS DateTime), 1, 1, CAST(N'2020-11-18 21:59:29.733' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2022, 2013, N'EXP-S02:3344223/2020', N'EX-2020-29222288- -APD-JHJ#MTR', 3, 8, N'Faltan digitalizar', CAST(N'2020-11-18 22:26:17.603' AS DateTime), 3, 1, CAST(N'2020-11-18 22:26:17.603' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2023, 2014, N'NOTA-S02:8999299/2019', N'EX-2020-88882228- -APN-DKK#MTR', 3, 8, N'Expediente digitralizado', CAST(N'2020-11-18 22:26:19.157' AS DateTime), 3, 1, CAST(N'2020-11-18 22:26:19.170' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (2024, 2015, N'TRI-S02:2244444/2020', N'EX-2019-88777777- -APN-DSS#MTR', 1, 1, N'se digitaliza documento', CAST(N'2020-11-21 14:19:26.330' AS DateTime), 1, 1, CAST(N'2020-11-21 14:19:26.380' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (3024, 2015, N'TRI-S02:2244444/2020', N'EX-2019-88777777- -APN-DSS#MTR', 3, 1, N'se digitaliza documento', CAST(N'2020-11-23 20:57:48.290' AS DateTime), 3, 1, CAST(N'2020-11-23 20:57:48.293' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (3025, 3015, N'ACTU-S02:2222221/2020', N'EX-2019-99988877- -APN-DSS#MTR', 5, 1, N'se devuelve exp ', CAST(N'2020-11-23 21:39:13.643' AS DateTime), 1, 1, CAST(N'2020-11-23 21:39:13.667' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (3026, 3016, N'EXP-S02:9998888/2019', N'EX-2019-99677666- -APN-HDD#MTR', 1, 1, N'se digitaliza expediente', CAST(N'2020-11-26 16:26:08.477' AS DateTime), 1, 1, CAST(N'2020-11-26 16:26:08.537' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (3027, 3016, N'EXP-S02:9998888/2019', N'EX-2019-99677666- -APN-HDD#MTR', 5, 1, N'se digitaliza expediente', CAST(N'2020-11-26 16:31:01.840' AS DateTime), 3, 1, CAST(N'2020-11-26 16:31:01.860' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (3028, 3017, N'ACTU-S02:3332299/2020', N'EX-2019-44443333- -AJL-FDD#MTR', 4, 2, N'Se ingresa a revisar', CAST(N'2020-11-26 16:39:02.850' AS DateTime), 1, 1, CAST(N'2020-11-26 16:39:02.883' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4026, 4016, N'EXP-S02:3332222/2019', N'EX-2019-33332223- -APN-DFF#MTR', 4, 2, N'ingreso a revisar de exp', CAST(N'2020-12-06 15:18:36.270' AS DateTime), 1, 1, CAST(N'2020-12-06 15:18:37.970' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4027, 4016, N'EXP-S02:3332222/2019', N'EX-2019-33332223- -APN-DFF#MTR', 5, 2, N'ingreso a revisar de exp', CAST(N'2020-12-06 15:43:38.390' AS DateTime), 3, 1, CAST(N'2020-12-06 15:43:40.363' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4028, 4017, N'TRI-S02:3320022/2018', N'EX-2019-00092299- -APN-DSD#MTR', 5, 9, N'se devuelve por revision y faltantes', CAST(N'2020-12-06 19:29:19.067' AS DateTime), 1, 1, CAST(N'2020-12-06 19:29:20.923' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4029, 4018, N'ACTU-S02:9999900/2018', N'EX-2019-00099222- -APN-FDD#MDT', 1, 2, N'expediente digitalizado', CAST(N'2020-12-06 20:27:29.787' AS DateTime), 1, 1, CAST(N'2020-12-06 20:27:31.727' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4030, 4019, N'EXP-S02:3322200/2018', N'EX-2020-11122222- -APN-FDD#MDT', 2, 2, N'expediente sin digitalizar', CAST(N'2020-12-06 20:37:27.213' AS DateTime), 1, 1, CAST(N'2020-12-06 20:37:29.507' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4031, 4018, N'ACTU-S02:9999900/2018', N'EX-2019-00099222- -APN-FDD#MDT', 3, 2, N'expediente digitalizado', CAST(N'2020-12-06 20:39:49.507' AS DateTime), 3, 1, CAST(N'2020-12-06 20:39:49.510' AS DateTime))
INSERT [dbo].[Auditoria_expediente] ([Codigo], [Codigo_expediente], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado], [Codigo_operacion], [Codigo_usuario], [Fecha_operacion]) VALUES (4032, 4019, N'EXP-S02:3322200/2018', N'EX-2020-11122222- -APN-FDD#MDT', 3, 2, N'expediente sin digitalizar', CAST(N'2020-12-06 20:39:51.483' AS DateTime), 3, 1, CAST(N'2020-12-06 20:39:51.503' AS DateTime))
SET IDENTITY_INSERT [dbo].[Auditoria_expediente] OFF
SET IDENTITY_INSERT [dbo].[Autorizante] ON 

INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (1, 32318670, N'Laura', N'Mancuso', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (2, 34332434, N'Sonia', N'Petrona', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (3, 32318567, N'Pamela', N'San Pedro', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (4, 32323223, N'Carla', N'Surace', 1002)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (5, 32543459, N'Laura', N'Mancuso', 1003)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (6, 3222222, N'Andrea', N'Ledesma', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (7, 2322111, N'Maria', N'Sanchez', 1003)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (8, 3933333, N'Carlos', N'Suarez', 2)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (9, 32318670, N'Micaela', N'Sánchez', 1003)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (10, 312998888, N'Ines', N'Gonzalez', 1006)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (11, 2222222, N'Mario', N'Suarez', 1004)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (1010, 21111222, N'Andrea', N'Rodriguez', 1004)
INSERT [dbo].[Autorizante] ([Codigo], [Dni], [Nombre], [Apellido], [Codigo_dependencia]) VALUES (1011, 322233, N'Roberto', N'Tallarico', 2006)
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
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9162, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 10:48:58.423' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9163, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-11-17 13:05:07.140' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9164, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-11-17 13:05:33.653' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9165, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-17 13:56:33.730' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9166, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-17 13:56:33.747' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9167, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-17 13:57:35.937' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9168, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Ingreso Masivo Comdoc correcto', CAST(N'2020-11-17 14:10:59.970' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9169, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-11-17 14:28:48.087' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9170, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-11-17 14:45:13.880' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9171, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-17 16:28:59.457' AS DateTime))
GO
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9172, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-17 16:28:59.467' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9173, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-17 16:29:05.147' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9174, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Egreso masivo hecho correctamente', CAST(N'2020-11-17 16:39:51.630' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9175, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-11-17 16:39:51.637' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9176, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-11-17 16:39:53.353' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9177, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Pdf creado correctamente!', CAST(N'2020-11-17 16:41:32.570' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9178, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-17 17:32:58.030' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9179, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-17 17:32:58.033' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9180, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-17 17:40:36.133' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9181, 1, N'msanchez', N'Evento', N'Alta Documento', N'Asociación con remito devolución correcta', CAST(N'2020-11-17 17:40:42.940' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9182, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-11-17 17:44:26.237' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9183, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-17 17:55:22.273' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9184, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-17 17:55:22.283' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9185, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-17 17:55:27.903' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9186, 1, N'msanchez', N'Evento', N'Modificación', N'Modificación Documento correcta', CAST(N'2020-11-17 18:25:29.000' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9187, 1, N'msanchez', N'Evento', N'Asociacion Remito Devolución', N'Asociación Remito devolución correcta', CAST(N'2020-11-17 18:29:53.107' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9188, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-11-17 18:44:21.350' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9189, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 20:46:51.907' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9190, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 21:32:06.677' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9191, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-17 21:35:29.360' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9192, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-18 13:34:33.793' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9193, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Ingreso Masivo Comdoc correcto', CAST(N'2020-11-18 14:00:28.117' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9194, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Pdf generado corrtamente', CAST(N'2020-11-18 14:00:32.800' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9195, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Ingrese los formatos correctos', CAST(N'2020-11-18 15:38:30.180' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9196, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-18 15:38:45.953' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9197, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-18 15:38:45.953' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9198, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-18 15:40:32.010' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9199, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-11-18 17:20:21.963' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9200, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-11-18 17:39:17.433' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9201, 1, N'msanchez', N'Evento', N'Modificación', N'Modificación Documento correcta', CAST(N'2020-11-18 19:40:36.127' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9202, 1, N'msanchez', N'Evento', N'Asociacion Remito Devolución', N'Asociación Remito devolución correcta', CAST(N'2020-11-18 19:42:55.587' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9203, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-11-18 19:42:57.593' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9204, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-11-18 20:42:42.300' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9205, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-11-18 20:59:29.900' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9206, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-18 21:33:59.033' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9207, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-18 21:39:55.940' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9208, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-18 21:39:55.953' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9209, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-18 21:40:06.860' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9210, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Ingrese los formatos correctos', CAST(N'2020-11-18 21:59:11.847' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9211, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-18 21:59:29.733' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9212, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-18 21:59:29.733' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9213, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-18 22:02:10.800' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9214, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Egreso masivo hecho correctamente', CAST(N'2020-11-18 22:26:17.603' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9215, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-11-18 22:26:17.603' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9216, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-11-18 22:26:19.153' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9217, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Pdf creado correctamente!', CAST(N'2020-11-18 22:28:05.587' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9218, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 13:20:41.163' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9219, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 13:24:33.110' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9220, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 13:33:21.530' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9221, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 13:50:59.490' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9222, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 14:20:50.997' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9223, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 16:47:10.600' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9224, 1, N'msanchez', N'Evento', N'Reporte', N'Pdf generado corrtamente', CAST(N'2020-11-19 16:51:53.047' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9225, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 16:53:19.170' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9226, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 17:02:59.770' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9227, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 17:25:32.017' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9228, 1, N'msanchez', N'Excepcion', N'Usuario', N'El usuario ingresado ya existe', CAST(N'2020-11-19 17:26:48.140' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9229, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 17:45:30.977' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9230, 1, N'msanchez', N'Evento', N'Reporte', N'Pdf generado corrtamente', CAST(N'2020-11-19 17:49:00.833' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9231, 1, N'msanchez', N'Evento', N'Reporte', N'Pdf generado corrtamente', CAST(N'2020-11-19 17:50:25.657' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9232, 1, N'msanchez', N'Excepcion', N'Ingreso Masivo', N'Ingrese los datos correctos para continuar', CAST(N'2020-11-19 17:58:08.487' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9233, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Ingreso Masivo Comdoc correcto', CAST(N'2020-11-19 17:58:23.463' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9234, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Pdf generado corrtamente', CAST(N'2020-11-19 17:58:28.290' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9235, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 18:09:50.030' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9236, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-19 19:04:26.977' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9237, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-21 14:17:36.947' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9238, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-21 14:19:26.360' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9239, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-21 14:19:26.390' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (9240, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-21 14:20:38.567' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (10227, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-21 17:50:12.333' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (10228, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-21 22:15:28.623' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (10229, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-21 22:17:48.267' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (10230, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-22 12:38:55.740' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (10231, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-22 18:29:11.300' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (10232, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-22 20:32:09.100' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11227, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-22 23:47:00.053' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11228, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-23 13:45:10.630' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11229, 1, N'msanchez', N'Evento', N'Usuario', N'Alta usuario correcto', CAST(N'2020-11-23 13:45:56.773' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11230, 1, N'msanchez', N'Evento', N'Usuario', N'Usuario modificado corrrectamente', CAST(N'2020-11-23 13:46:13.940' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11231, 1, N'msanchez', N'Evento', N'Usuario', N'Usuario dado de baja correctamente', CAST(N'2020-11-23 13:46:19.800' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11232, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-23 18:53:31.700' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11233, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Ingreso Masivo Comdoc correcto', CAST(N'2020-11-23 18:54:48.343' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11234, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-23 20:56:13.423' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11235, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Egreso masivo hecho correctamente', CAST(N'2020-11-23 20:57:48.287' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11236, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-11-23 20:57:48.290' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11237, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Pdf creado correctamente!', CAST(N'2020-11-23 20:57:52.893' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11238, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-23 20:58:40.813' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11239, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-11-23 20:59:04.437' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11240, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-11-23 20:59:13.423' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11241, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-23 21:36:22.697' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11242, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-23 21:38:12.490' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11243, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-23 21:39:13.657' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11244, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-23 21:39:13.670' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11245, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-23 21:39:33.613' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11246, 1, N'msanchez', N'Evento', N'Alta Documento', N'Asociación con remito devolución correcta', CAST(N'2020-11-23 21:39:35.297' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11247, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-11-23 21:39:39.817' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11248, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-11-23 21:41:04.193' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11249, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-24 14:48:14.663' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11250, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-11-26 16:06:43.567' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11251, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-26 16:26:08.523' AS DateTime))
GO
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11252, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-26 16:26:08.547' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11253, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-11-26 16:26:13.610' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11254, 1, N'msanchez', N'Evento', N'Modificación', N'Modificación Documento correcta', CAST(N'2020-11-26 16:31:01.867' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11255, 1, N'msanchez', N'Evento', N'Asociacion Remito Devolución', N'Asociación Remito devolución correcta', CAST(N'2020-11-26 16:32:35.070' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11256, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-11-26 16:32:37.383' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11257, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-11-26 16:39:02.870' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (11258, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-11-26 16:39:02.893' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12250, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-01 00:22:31.843' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12251, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-02 01:29:30.813' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12252, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-04 16:32:20.187' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12253, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-04 19:27:16.293' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12254, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-04 19:54:28.770' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12255, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-04 19:59:00.180' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12256, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 11:34:15.737' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12257, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 12:03:31.903' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12258, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 15:46:01.593' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12259, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 15:47:13.447' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12260, 1, N'msanchez', N'Evento', N'Gestion de Usuarios', N'Usuario y permiso guardado correctamente', CAST(N'2020-12-05 15:48:21.327' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12261, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:00:10.820' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12262, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:00:55.727' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12263, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:06:34.057' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12264, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:07:26.477' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12265, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:16:01.997' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12266, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:34:51.907' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12267, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:41:20.970' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12268, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:42:32.787' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12269, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:44:19.407' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12270, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:53:41.810' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12271, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 16:58:35.107' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12272, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 17:12:22.347' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12273, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-12-05 21:14:18.967' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12274, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 21:14:25.133' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12275, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 21:54:58.590' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12276, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 21:56:01.953' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12277, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 21:56:52.107' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12278, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 21:57:28.653' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12279, 1, N'msanchez', N'Evento', N'Usuario', N'Usuario modificado corrrectamente', CAST(N'2020-12-05 21:57:46.853' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12280, 1, N'msanchez', N'Evento', N'Gestion de Usuarios', N'Usuario y permiso guardado correctamente', CAST(N'2020-12-05 21:58:23.120' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12281, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:00:58.493' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12282, 1, N'msanchez', N'Evento', N'Buckup', N'Buckup realizado correctamente', CAST(N'2020-12-05 22:02:01.027' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12283, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:03:47.060' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12284, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:32:47.317' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12285, 1, N'msanchez', N'Evento', N'Reporte', N'Pdf generado corrtamente', CAST(N'2020-12-05 22:33:34.013' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12286, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-12-05 22:40:36.373' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12287, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:40:44.513' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12288, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:41:24.043' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12289, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:47:01.050' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12290, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:47:59.003' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12291, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:49:32.483' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12292, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:50:13.760' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12293, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 22:55:28.323' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12294, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:02:19.507' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12295, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:19:33.883' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12296, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:20:14.137' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12297, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:23:41.343' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12298, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:25:50.347' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12299, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:32:55.017' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12300, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:35:23.227' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12301, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:46:50.230' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12302, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:54:04.277' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12303, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-05 23:57:40.707' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12304, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:02:23.373' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12305, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:06:31.110' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12306, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:11:38.360' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12307, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:21:31.290' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12308, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:25:44.687' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12309, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:29:00.887' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12310, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:33:41.503' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12311, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:36:34.473' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12312, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 00:37:17.513' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12313, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:12:08.640' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12317, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:13:04.277' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12318, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:14:57.057' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12319, 1, N'msanchez', N'Evento', N'Usuario', N'Alta usuario correcto', CAST(N'2020-12-06 12:16:51.707' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12320, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:18:51.700' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12321, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:20:53.280' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12322, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:28:16.233' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12323, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:35:47.013' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12324, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:37:51.097' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12325, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:41:33.047' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12326, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:42:11.103' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12327, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-12-06 12:45:04.753' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12328, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:45:11.197' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12329, 1, N'msanchez', N'Evento', N'Usuario', N'Usuario modificado corrrectamente', CAST(N'2020-12-06 12:45:28.000' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12330, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:45:50.717' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12331, 1, N'msanchez', N'Evento', N'Usuario', N'Usuario dado de baja correctamente', CAST(N'2020-12-06 12:46:01.500' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12332, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 12:46:51.107' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12333, 0, N'Sin usuario', N'Evento', N'Logout', N'Logout correcto', CAST(N'2020-12-06 12:49:56.410' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12334, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-12-06 12:50:07.637' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12335, 0, N'Sin usuario', N'Excepcion', N'Login', N'Usuario Inactivo', CAST(N'2020-12-06 12:50:20.650' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12336, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 13:49:37.303' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12337, 0, N'Sin usuario', N'Evento', N'Logout', N'Logout correcto', CAST(N'2020-12-06 13:49:44.830' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12338, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 13:50:24.637' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12339, 0, N'Sin usuario', N'Evento', N'Logout', N'Logout correcto', CAST(N'2020-12-06 13:50:33.583' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12340, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 13:54:17.350' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12341, 0, N'Sin usuario', N'Excepcion', N'Login', N'Usuario incorrecto', CAST(N'2020-12-06 15:03:09.130' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12342, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 15:03:17.510' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12343, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Ingreso Masivo Comdoc correcto', CAST(N'2020-12-06 15:06:49.710' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12344, 1, N'msanchez', N'Evento', N'Ingreso Masivo', N'Pdf generado corrtamente', CAST(N'2020-12-06 15:06:52.613' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12345, 1, N'msanchez', N'Excepcion', N'Alta Documento', N'Ingrese los formatos correctos', CAST(N'2020-12-06 15:18:23.520' AS DateTime))
GO
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12346, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-12-06 15:18:37.933' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12347, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-12-06 15:18:37.980' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12348, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-12-06 15:19:10.763' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12349, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-12-06 15:34:10.037' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12350, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 15:35:09.533' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12351, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-12-06 15:35:50.110' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12352, 1, N'msanchez', N'Evento', N'Modificación', N'Modificación Documento correcta', CAST(N'2020-12-06 15:43:40.377' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12353, 1, N'msanchez', N'Evento', N'Asociacion Remito Devolución', N'Asociación Remito devolución correcta', CAST(N'2020-12-06 15:43:46.957' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12354, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-12-06 15:43:48.687' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12355, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 15:47:04.250' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12356, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-12-06 15:47:19.313' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12357, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-12-06 15:47:42.087' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12358, 1, N'msanchez', N'Evento', N'Remitos', N'Remito modificado correctamente', CAST(N'2020-12-06 15:47:44.953' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12359, 1, N'msanchez', N'Evento', N'Remitos', N'Pdf generado corrtamente', CAST(N'2020-12-06 15:47:51.327' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12360, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-12-06 19:29:20.893' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12361, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-12-06 19:29:20.927' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12362, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-12-06 19:29:52.837' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12363, 1, N'msanchez', N'Evento', N'Alta Documento', N'Asociación con remito devolución correcta', CAST(N'2020-12-06 19:29:52.850' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12364, 1, N'msanchez', N'Evento', N'Por documento', N'Pdf generado corrtamente', CAST(N'2020-12-06 19:29:58.413' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12365, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 19:52:59.013' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12366, 0, N'Sin usuario', N'Evento', N'Logout', N'Logout correcto', CAST(N'2020-12-06 19:54:47.743' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12367, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-12-06 19:54:58.683' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12368, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-12-06 19:55:08.063' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12369, 0, N'Sin usuario', N'Excepcion', N'Login', N'Password incorrecto', CAST(N'2020-12-06 19:55:18.600' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12370, 0, N'Sin usuario', N'Excepcion', N'Login', N'Usuario incorrecto', CAST(N'2020-12-06 19:55:28.003' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12371, 0, N'Sin usuario', N'Excepcion', N'Login', N'Usuario Inactivo', CAST(N'2020-12-06 19:55:52.477' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12372, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-06 19:56:04.320' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12373, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-12-06 20:27:31.710' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12374, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-12-06 20:27:31.733' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12375, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-12-06 20:27:41.860' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12376, 1, N'msanchez', N'Evento', N'Alta Documento', N'Alta Documento correcto', CAST(N'2020-12-06 20:37:29.490' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12377, 1, N'msanchez', N'Evento', N'Alta Documento', N'Actualización dispponible caja', CAST(N'2020-12-06 20:37:29.507' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12378, 1, N'msanchez', N'Evento', N'Alta Documento', N'Remito asociado correctamente', CAST(N'2020-12-06 20:37:37.733' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12379, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Egreso masivo hecho correctamente', CAST(N'2020-12-06 20:39:49.503' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12380, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-12-06 20:39:49.507' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12381, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Expediente desarchivado correctamente', CAST(N'2020-12-06 20:39:51.500' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12382, 1, N'msanchez', N'Evento', N'Egreso masivo', N'Pdf creado correctamente!', CAST(N'2020-12-06 20:39:54.750' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12383, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-08 21:17:08.190' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12384, 3, N'msuarez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-08 21:29:58.480' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12385, 0, N'Sin usuario', N'Evento', N'Logout', N'Logout correcto', CAST(N'2020-12-08 21:30:47.450' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12386, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-08 21:31:01.613' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12387, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-08 21:47:10.873' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12388, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 11:28:49.910' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12389, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 11:41:26.333' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12390, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 11:52:41.577' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12391, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:10:24.623' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12392, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:13:16.307' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12393, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:14:54.673' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12394, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:23:33.030' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12395, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:25:23.763' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12396, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:42:15.377' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12397, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:50:51.700' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12398, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 12:59:09.783' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12399, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 14:29:36.763' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12400, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-10 14:34:37.073' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12404, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-13 19:46:41.027' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12405, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-14 14:58:24.470' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12406, 0, N'Sin usuario', N'Excepcion', N'Login', N'Usuario incorrecto', CAST(N'2020-12-15 12:24:21.673' AS DateTime))
INSERT [dbo].[Bitacora] ([Codigo], [Codigo_usuario], [Nombre_usuario], [TipoLog], [Accion], [Mensaje], [Fecha_operacion]) VALUES (12407, 1, N'msanchez', N'Evento', N'Login', N'Logueo correcto', CAST(N'2020-12-15 12:24:33.853' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
SET IDENTITY_INSERT [dbo].[Caja] ON 

INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (1, 2, 2000, 1750)
INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (2, 1, 2000, 1076)
INSERT [dbo].[Caja] ([Codigo], [Sala], [Capacidad], [Disponible]) VALUES (3, 3, 2000, 1993)
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
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (1009, 1, 2, 2, 2, 1007, 1, N'aeae')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (1010, 1, 2, 2, 2, 1008, 1, N'ingreso de 1 cuerpo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2010, 1, 2, 2, 2, 2008, 3, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2011, 2, 4, 4, 2, 2008, 3, N'cuerpo completo 2')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2012, 1, 2, 2, 2, 2009, 2, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2013, 2, 2, 2, 2, 2009, 2, N'cuerpo completo 2')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2014, 1, 2, 2, 1, 2010, 1, N'cuerpo uno le faltan hojas')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2015, 2, 3, 3, 1, 2010, 1, N'le faltan hojas')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2016, 1, 2, 2, 2, 2011, 1, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2017, 1, 2, 2, 2, 2012, 1, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2018, 2, 2, 2, 2, 2012, 1, N'cuerpo completo 2')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2019, 1, 2, 2, 2, 2013, 3, N'sin observaciones')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2020, 2, 1, 2, 2, 2013, 3, N'sin observaciones')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2021, 1, 2, 2, 2, 2014, 2, N'sin obs')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2022, 2, 3, 3, 2, 2014, 2, N'sin obs')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (2023, 1, 2, 2, 2, 2015, 2, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (3023, 1, 2, 2, 2, 3015, 1, N'completo ok')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (3024, 1, 2, 2, 2, 3016, 1, N'cuerpo completo')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (3025, 1, 2, 2, 2, 3017, 1, N'completo ok')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (4024, 1, 2, 2, 1, 4016, 1, N'faltan')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (4025, 2, 2, 2, 1, 4016, 1, N'faltan')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (4026, 1, 2, 2, 1, 4017, 1, N'cuerpo 1 le faltan fojas')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (4027, 1, 2, 2, 2, 4018, 2, N'sin obs')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (4028, 2, 2, 2, 2, 4018, 2, N'sin obs')
INSERT [dbo].[Cuerpo] ([Codigo], [Nro_cuerpo], [Fojas], [Hojas], [Codigo_estado], [Codigo_expediente], [Codigo_caja], [Observaciones]) VALUES (4029, 1, 2, 2, 2, 4019, 2, N'')
SET IDENTITY_INSERT [dbo].[Cuerpo] OFF
SET IDENTITY_INSERT [dbo].[Cuerpo_estado] ON 

INSERT [dbo].[Cuerpo_estado] ([Codigo], [Estado]) VALUES (1, N'Faltante')
INSERT [dbo].[Cuerpo_estado] ([Codigo], [Estado]) VALUES (2, N'Completo')
SET IDENTITY_INSERT [dbo].[Cuerpo_estado] OFF
SET IDENTITY_INSERT [dbo].[Dependencia] ON 

INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (2, N'Ministerio de transporte')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1002, N'Min de produccion')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1003, N'hacienda')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1004, N'Vialidad')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1005, N'Produccion ambiental')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (1006, N'Portuarios')
INSERT [dbo].[Dependencia] ([Codigo], [Nombre]) VALUES (2006, N'Secretaría General Tecnica')
SET IDENTITY_INSERT [dbo].[Dependencia] OFF
SET IDENTITY_INSERT [dbo].[DVV] ON 

INSERT [dbo].[DVV] ([Codigo], [NombreTabla], [ValorDigitoVV]) VALUES (1, N'Usuario', 28112)
SET IDENTITY_INSERT [dbo].[DVV] OFF
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
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (9, N'pruebapreba')
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
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1037, N'LabelPrueba224')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1038, N'RegUsuarios')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1040, N'Bitacora')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1041, N'GestionBuckupRestore')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1042, N'Serializacion')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1043, N'RegEgresoMasivo')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1044, N'GestorIdiomas')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1045, N'GestionRemitos')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1046, N'AdminExpedientes')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1047, N'GestionAreas')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1048, N'GestionAutorizantes')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1049, N'HistoricoAuto')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1050, N'GestionDepen')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1051, N'GestionPorDocumento')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1052, N'PorDocumento')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1053, N'ListadoExpedientes')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1054, N'HistoricoExp')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1055, N'EditarDocumento')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1056, N'ReporteExp')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1057, N'FormGestPatentesFamilias')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1058, N'gpPatentes')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1059, N'LblTodasPatentes')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1060, N'BtAgregarPatente')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1061, N'gpNueva')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1062, N'lblPerm')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1063, N'blNombrePate')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1064, N'btnGuardarPat')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1065, N'GrpFamilias')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1066, N'LabTodasFamilias')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1067, N'BtPatentesConf')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1068, N'BotFamiliasAgregar')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1069, N'gpNuevaFam')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1070, N'lbNombreFam')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1071, N'btGuardarFam')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1072, N'gpConfFamil')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1073, N'FormIngMasivo')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1074, N'lblEstadoRemito')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1075, N'LabelOblig')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1076, N'lblArea')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1077, N'lblDirectAut')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1078, N'lblApeNom')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1079, N'lblObs')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1080, N'lblAgregarNumComdoc')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1081, N'lblAgregarComd')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1082, N'lblLimpComdoc')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1083, N'btGuardar')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1084, N'btGenerarPDF')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1085, N'btSalir')
INSERT [dbo].[Etiqueta] ([Id_etiqueta], [Nombre]) VALUES (1086, N'FormPrincipalMaster      ')
SET IDENTITY_INSERT [dbo].[Etiqueta] OFF
SET IDENTITY_INSERT [dbo].[Expediente] ON 

INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (1, N'MEMO-S02:3333333/2020', N'EX-2019-55645678- -APN-DSDD#MTR', 4, 4, N'ingreso a revisar expediente', CAST(N'2020-01-10 15:26:13.350' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2, N'TRI-S02:9929388/2019', N'EX-2019-99887666- -APN-DSD#MTR', 3, 1, N'ingrso a revisar', CAST(N'2020-01-10 16:04:30.073' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (3, N'ACTU-S02:3339998/2019', N'EX-2019-88877654- -APN-FDG#MTR', 3, 1, N'archivo figitalizado', CAST(N'2020-01-10 16:04:41.107' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (4, N'TRI-S02:0000000/2020', N'EX-2019-92929292- -APN-DFSS#MTR', 5, 5, N'devuelvo expediente porue esta incompleto', CAST(N'2020-01-10 16:09:49.683' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (5, N'TRI-S02:4998777/2019', N'EX-2019-00099999- -APN-HDD#MTR', 3, 1, N'Expediente digitalizado', CAST(N'2020-08-10 17:14:14.743' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (1007, N'MEMO-S02:9998888/2020', N'EX-2019-33339339- -APN-DFFF#JTR', 5, 1, N'ingreso a revisar expdiente', CAST(N'2020-11-05 01:37:56.300' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (1008, N'EXP-S02:9998877/2020', N'EX-2020-88877777- -APN-DSS#FMD', 5, 2, N'expediente ing a revisar', CAST(N'2020-11-15 11:15:22.520' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2008, N'EXP-S02:9876655/2019', N'EX-2020-99776666- -APN-DSFD#MTR', 3, 2, N'Expediente Ingreso a Revisar', CAST(N'2020-11-17 16:39:51.633' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2009, N'TRI-S02:4432290/2020', N'EX-2019-66678999- -APN-DSD#MTR', 3, 1, N'Se ingresa expediente digitalizado', CAST(N'2020-11-17 16:39:53.340' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2010, N'TRI-S02:2299300/2018', N'EX-2019-99988877- -KJL-DSS#MTR', 5, 8, N'Se devuelve Expediente por faltante en cuerpos', CAST(N'2020-11-17 17:32:58.023' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2011, N'TRI-S02:8844555/2020', N'EX-2018-88887777- -APN-AAH#HJY', 5, 1, N'Se digitaliza documento', CAST(N'2020-11-17 18:25:28.983' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2012, N'TRI-S02:0003333/2020', N'EX-2019-43334433- -APN-ULL#MTR', 5, 1, N'Documento digitalizado', CAST(N'2020-11-18 19:40:36.120' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2013, N'EXP-S02:3344223/2020', N'EX-2020-29222288- -APD-JHJ#MTR', 3, 8, N'Faltan digitalizar', CAST(N'2020-11-18 22:26:17.603' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2014, N'NOTA-S02:8999299/2019', N'EX-2020-88882228- -APN-DKK#MTR', 3, 8, N'Expediente digitralizado', CAST(N'2020-11-18 22:26:19.157' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (2015, N'TRI-S02:2244444/2020', N'EX-2019-88777777- -APN-DSS#MTR', 3, 1, N'se digitaliza documento', CAST(N'2020-11-23 20:57:48.290' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (3015, N'ACTU-S02:2222221/2020', N'EX-2019-99988877- -APN-DSS#MTR', 5, 1, N'se devuelve exp ', CAST(N'2020-11-23 21:39:13.643' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (3016, N'EXP-S02:9998888/2019', N'EX-2019-99677666- -APN-HDD#MTR', 5, 1, N'se digitaliza expediente', CAST(N'2020-11-26 16:31:01.857' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (3017, N'ACTU-S02:3332299/2020', N'EX-2019-44443333- -AJL-FDD#MTR', 4, 2, N'Se ingresa a revisar', CAST(N'2020-11-26 16:39:02.850' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (4016, N'EXP-S02:3332222/2019', N'EX-2019-33332223- -APN-DFF#MTR', 5, 2, N'ingreso a revisar de exp', CAST(N'2020-12-06 15:43:38.403' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (4017, N'TRI-S02:3320022/2018', N'EX-2019-00092299- -APN-DSD#MTR', 5, 9, N'se devuelve por revision y faltantes', CAST(N'2020-12-06 19:29:19.067' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (4018, N'ACTU-S02:9999900/2018', N'EX-2019-00099222- -APN-FDD#MDT', 3, 2, N'expediente digitalizado', CAST(N'2020-12-06 20:39:49.507' AS DateTime))
INSERT [dbo].[Expediente] ([Codigo], [Nro_expediente], [Nro_gde_electronico], [Codigo_estado], [Codigo_area], [Observaciones], [Fecha_modificado]) VALUES (4019, N'EXP-S02:3322200/2018', N'EX-2020-11122222- -APN-FDD#MDT', 3, 2, N'expediente sin digitalizar', CAST(N'2020-12-06 20:39:51.483' AS DateTime))
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
INSERT [dbo].[Idioma] ([Id_idioma], [Nombre], [Idioma_default]) VALUES (4, N'Ruso', 0)
INSERT [dbo].[Idioma] ([Id_idioma], [Nombre], [Idioma_default]) VALUES (5, N'Polaco', 0)
INSERT [dbo].[Idioma] ([Id_idioma], [Nombre], [Idioma_default]) VALUES (6, N'Italiano', 0)
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
INSERT [dbo].[Permiso] ([Nombre], [Id], [Permiso]) VALUES (N'PuedeHacerBuckupYRestore', 1012, N'BuckupYRestore')
SET IDENTITY_INSERT [dbo].[Permiso] OFF
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 1)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 2)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 3)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 4)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 5)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 6)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (7, 9)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (8, 2)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (8, 4)
INSERT [dbo].[Permiso_Permiso] ([Id_Permiso_padre], [Id_Permiso_hijo]) VALUES (8, 6)
SET IDENTITY_INSERT [dbo].[Remito] ON 

INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1, N'S02: 0000001/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 2, 1, CAST(N'2020-01-10 14:27:42.000' AS DateTime), N'se kngresa a revisar los siguientes comdoc', 1)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (2, N'S02: 0000002/2020', N'NO-2020-66655555-APN-HGFG#MTR', 3, 1, 2, 1, CAST(N'2020-01-10 16:04:13.483' AS DateTime), N'egreso de exp', 2)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (3, N'S02:0000003/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 4, 1, CAST(N'2020-01-10 16:10:11.000' AS DateTime), N'Se devuelve porque esta incorrecto y tiene faltant', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (4, N'S02: 0000004/2020', N'NO-2020-88754444-DDF-DFFF#MFD', 3, 1, 2, 1, CAST(N'2020-08-10 17:14:14.663' AS DateTime), N'se desarchiva expediente por pedido de gestión eco', 2)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (5, N'S02:0000005/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 4, 1, CAST(N'2020-11-05 01:38:30.000' AS DateTime), N'devolucion de exp 1007', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (6, N'S02:0000006/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 2, 1, CAST(N'2020-11-15 11:15:36.140' AS DateTime), N'', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1006, N'S02: 0000007/2020', N'NO-2020-33332223-APL-DSDD#MTR', 7, 1, 2, 1, CAST(N'2020-11-17 14:10:59.000' AS DateTime), N'Remito con Ingreso a Revisar', 1)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1007, N'S02: 0001007/2020', N'NO-2019-88760098-SAS-FGDD#MTR', 5, 1, 2, 2, CAST(N'2020-11-17 16:39:51.567' AS DateTime), N'Egreso de expedientes por pedido de área solicitan', 2)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1008, N'S02:0001008/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 2, 1, CAST(N'2020-11-17 17:40:42.923' AS DateTime), N'Se devuelve por faltante de cuerpos, al area gesti', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1009, N'S02:0001009/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 2, 1, CAST(N'2020-11-17 18:29:53.093' AS DateTime), N'Se devuelve porque se trajo por equivocación', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1010, N'S02: 0001010/2020', N'NO-2020-88777766-AFN-DFFFF#MTR', 6, 1, 2, 2, CAST(N'2020-11-18 14:00:28.000' AS DateTime), N'Se ingresa documentación a revisar', 1)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1011, N'S02:0001011/2020', N'NO-2020-88777766-AFN-DFFFF#MTR', 6, 1, 4, 2, CAST(N'2020-11-18 19:42:55.000' AS DateTime), N'Se devuelve expediente por un error del intermedia', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1012, N'S02: 0001012/2020', N'NO-2020-99900009-APN-DFTTH#MTR', 7, 2, 2, 8, CAST(N'2020-11-18 22:26:17.557' AS DateTime), N'Se desarchivan expedientes por pedido de RRHH', 2)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (1013, N'S02: 0001013/2020', N'NO-2020-99933332-APN-DSSS#MTR', 1, 1, 1, 1, CAST(N'2020-11-19 17:58:23.457' AS DateTime), N'A revisar', 1)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (2013, N'S02: 0001014/2020', N'NO-2019-55544433-ASN-DFFT#MTR', 7, 1, 2, 5, CAST(N'2020-11-23 18:54:48.000' AS DateTime), N'se ingresa a revisar la documentacion', 1)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (2014, N'S02: 0002014/2020', N'NO-2020-43322223-APN-JDDD#MTR', 1, 2, 2, 1, CAST(N'2020-11-23 20:57:48.257' AS DateTime), N'se le da salida al expediente', 2)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (2015, N'S02:0002015/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 4, 1, CAST(N'2020-11-23 21:39:35.000' AS DateTime), N'se devuelve por inconsistencias', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (2016, N'S02:0002016/2020', N'NO-2019-33333333-APM-FDFF#MTR', 3, 1, 2, 1, CAST(N'2020-11-26 16:32:35.057' AS DateTime), N'se devuelve expoedente', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (3016, N'S02: 0002017/2020', N'NO-2019-99833884-ASD-FDDD#MTR', 9, 1, 3, 2, CAST(N'2020-12-06 15:06:46.000' AS DateTime), N'Se rechaza por faltante en cuerpos', 1)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (3017, N'S02:0003017/2020', N'NO-2019-99833884-ASD-FDDD#MTR', 9, 1, 4, 2, CAST(N'2020-12-06 15:43:46.000' AS DateTime), N'se devuelven porque tienen faltantes', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (3018, N'S02:0003018/2020', N'NO-2020-99933332-APN-DSSS#MTR', 1, 1, 2, 1, CAST(N'2020-12-06 19:29:52.850' AS DateTime), N'Se devuelve por faltante de fojas', 3)
INSERT [dbo].[Remito] ([Codigo], [Nro_remito], [Nota_gde], [Codigo_autorizante], [Codigo_intermediario], [Codigo_estado], [Codigo_area], [Fecha], [Observaciones], [Tipo]) VALUES (3019, N'S02: 0003019/2020', N'NO-2020-99933200-APN-DFFF#MTR', 4, 1, 2, 8, CAST(N'2020-12-06 20:39:49.440' AS DateTime), N'se desarchivan dos expedientes para RRHH', 2)
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
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (7, 1, 1007)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (8, 5, 1007)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (9, 1, 1008)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (10, 6, 1008)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1009, 1007, 2008)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1010, 1007, 2009)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1011, 1, 2010)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1012, 1008, 2010)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1013, 1, 2011)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1014, 1009, 2011)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1015, 1010, 2012)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1016, 1011, 2012)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1017, 1012, 2013)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1018, 1012, 2014)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (1019, 2014, 2015)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (2019, 1, 3015)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (2020, 2015, 3015)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (2021, 1, 3016)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (2022, 2016, 3016)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (3021, 3016, 4016)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (3022, 3017, 4016)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (3023, 1013, 4017)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (3024, 3018, 4017)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (3025, 3019, 4018)
INSERT [dbo].[Remito_expedientes] ([Codigo_remito_expediente], [Codigo_remito], [Codigo_expediente]) VALUES (3026, 3019, 4019)
SET IDENTITY_INSERT [dbo].[Remito_expedientes] OFF
SET IDENTITY_INSERT [dbo].[Remito_nros_comdoc] ON 

INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (1, 1, N'RTO-S02:3333222/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (2, 1, N'RTO-S02:1111111/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (3, 1006, N'RTO-S02:2322221/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (4, 1006, N'RTO-S02:2329874/2029')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (5, 1010, N'RTO-S02:8877666/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (6, 1010, N'RTO-S02:0000776/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (7, 1013, N'RTO-S02:2222222/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (1007, 2013, N'RTO-S02:8883333/2020')
INSERT [dbo].[Remito_nros_comdoc] ([Codigo_remito_comdoc], [Codigo_remito], [Nro_comdoc]) VALUES (1008, 3016, N'RTO-S02:3332211/2020')
SET IDENTITY_INSERT [dbo].[Remito_nros_comdoc] OFF
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1, N'Salir')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 2, N'Ingresar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 3, N'Usuario')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 4, N'Contraseña')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 6, N'Todos los usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 10, N'Gestión de Usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 11, N'Usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 12, N'Agregar>>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 13, N'Configurar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 14, N'Agregar Patentes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 15, N'Agregar Familias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 16, N'Guardar cambios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 17, N'Inicio')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 18, N'Cerrar Sesión')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 19, N'Idiomas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 20, N'Configuración Perfiles')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 21, N'Configuración Patentes y Familias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 22, N'Gestión de Usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 23, N'Administrador de Ingreso/Egreso Masivo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 24, N'Registrar Ingreso Masivo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 25, N'Administrador de Servicios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 26, N'Gestor de Idiomas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 27, N'Gestor de Etiquetas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 28, N'Gestor de Traducciones')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 29, N'Etiquetas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 30, N'Gestor de Etiquetas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 31, N'Codigo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 32, N'Nombre')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 33, N'Nuevo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 34, N'Modificar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 35, N'Eliminar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 36, N'Limpiar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1037, N'probando')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1038, N'Registrar Usuarios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1040, N'Bitácora')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1041, N'Gestión de Buckup Y Restauración')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1042, N'Serialización')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1043, N'Registrar Egreso Masivo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1045, N'Gestión de Remitos')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1046, N'Administración de Expedientes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1047, N'Gestionar Areas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1048, N'Gestionar Autorizantes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1049, N'Ver Historico')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1050, N'Gestionar Dependencias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1051, N'Gestión Por Documento')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1052, N'Por Documento')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1053, N'Listado de Expedientes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1054, N'Ver Historico')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1055, N'Editar Documento')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1056, N'Reporte')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1057, N'Gestión de Patentes y Familias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1058, N'Patentes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1059, N'Todas las Patentes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1060, N'Agregar >>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1061, N'Nueva')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1062, N'Permiso')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1063, N'Nombre')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1064, N'Guardar Patente')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1065, N'Familias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1066, N'Todas las Familias')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1067, N'Configurar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1068, N'Agregar >>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1069, N'Nueva')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1070, N'Nombre')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1071, N'Guardar Familia')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1072, N'Configurar Familia')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1073, N'Ingreso Masivo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1074, N'ESTADO DEL REMITO (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1075, N'Los datos marcados con (*) son obligatorios')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1076, N'AREA (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1077, N'DIRECTOR AUTORIZANTE (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1078, N'APELLIDO Y NOMBRE QUE ENTREGA/RECIBE (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1079, N'OBSERVACIONES')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1080, N'AGREGAR NÚMEROS DE REMITO COMDOC')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1081, N'Añadir')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1082, N'Limpiar')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1083, N'GUARDAR')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1084, N'Generar PDF')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1085, N'SALIR')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (1, 1086, N'Sistema de Inventario para Archivo')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1, N'Exit')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 2, N'Enter')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 3, N'User')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 4, N'Password')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 6, N'All users')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 10, N'User Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 11, N'Users')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 12, N'Add>>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 13, N'Config')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 14, N'Add Patents')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 15, N'Add families')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 16, N'Save Changes')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 17, N'Start')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 18, N'Sign off')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 19, N'Languages')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 20, N'Profiles Configuration')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 21, N'Patent and Family Configuration')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 22, N'User Management')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 23, N'Administration of income mass exit')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 24, N'Register Mass Income')
GO
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 25, N'Service Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 26, N'Language Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 27, N'Tag Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 28, N'Translation Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 29, N'Labels')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 30, N'Tag Manager')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 31, N'Code')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 32, N'Name')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 33, N'New')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 34, N'Modify')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 35, N'Delete')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 36, N'Clean')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1038, N'
Register Users')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1040, N'
Binnacle')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1041, N'Buckup and Restoration Management')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1042, N'
Serialization')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1043, N'
Register Mass Egress')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1045, N'
Remittance Management')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1046, N'
Records Administration')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1047, N'
Manage Areas')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1048, N'
Manage Authorizers')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1049, N'
View History')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1050, N'
Manage Dependencies')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1051, N'Management by Document')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1052, N'By Document')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1053, N'
List of Files')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1054, N'See History')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1055, N'Edit Document')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1056, N'Report')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1057, N'Patent and Family Management')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1058, N'Patents')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1059, N'All Patents')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1060, N'Add >>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1061, N'New')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1062, N'Permission')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1063, N'Name')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1064, N'Save Patent')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1065, N'
Families')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1066, N'Every family')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1067, N'Config')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1068, N'Add >>')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1069, N'New')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1070, N'Name')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1071, N'Save Family')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1072, N'Config Family')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1073, N'Mass Income')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1074, N'SHIPPING STATUS (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1075, N'The data marked with (*) are mandatory')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1076, N'AREA (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1077, N'
AUTHORIZING DIRECTOR (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1078, N'
LAST NAME AND NAME DELIVERING / RECEIVING (*)')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1079, N'
OBSERVATIONS')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1080, N'ADD COMDOC SENDING NUMBERS')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1081, N'Add')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1082, N'Clean')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1083, N'SAVE')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1084, N'Generate PDF')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1085, N'
LEAVE')
INSERT [dbo].[Traduccion] ([Id_idioma], [Id_etiqueta], [Traduccion]) VALUES (2, 1086, N'inventory system for file')
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (1, N'Micaerla', N'Sánchez', 32318670, N'msanchez', N'msanchez@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2458)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (2, N'Lorena', N'Acosta', 43333333, N'lacosta', N'lacosta', N'2EOAG8NbGRU=', 1, 1, 2285)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (3, N'Marcos', N'Suarez', 323333, N'msuarez', N'msuarez@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2277)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (4, N'Andrea', N'Ledesma', 6555555, N'aledesma', N'aledesma@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2465)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (5, N'Carla', N'Acosta', 111111, N'cacosta', N'cacosta', N'2EOAG8NbGRU=', 1, 1, 2195)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (6, N'Omar', N'Aguirre', 22222222, N'oaguirre', N'oaguirre@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2446)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (7, N'Laura', N'Mancuso', 322222, N'lmancuso', N'lmancuso', N'2EOAG8NbGRU=', 1, 1, 2340)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (8, N'Carmen', N'Gomez', 222222, N'gomez', N'cgomez', N'2EOAG8NbGRU=', 1, 0, 2330)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (9, N'Pepe', N'Sifredo', 322223, N'psifredo', N'psifredo@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2119)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (10, N'Esmeralda', N'Arredondo', 3233222, N'earredondo', N'earredondo@gmail.com', N'2EOAG8NbGRU=', 1, 1, 2472)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (11, N'Corrado', N'Lopez', 32444332, N'clopez', N'clopez@gmail.com', N'2EOAG8NbGRU=', 1, 0, 2283)
INSERT [dbo].[Usuario] ([Codigo], [Nombre], [Apellido], [Dni], [Nombre_usuario], [Email], [Contrasenia], [Id_idioma], [Activo], [Dvh]) VALUES (12, N'Carlos', N'Casares', 55555, N'ccasares', N'ccasares@gmail.com', N'2EOAG8NbGRU=', 1, 0, 2442)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (1, 7)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (1, 1012)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (2, 8)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (3, 8)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (4, 7)
INSERT [dbo].[Usuario_Permiso] ([Codigo_usuario], [Id_permiso]) VALUES (5, 8)
ALTER TABLE [dbo].[Auditoria_autorizante]  WITH CHECK ADD  CONSTRAINT [FK_Auditoria_autorizante_Autorizante] FOREIGN KEY([Codigo_autorizante])
REFERENCES [dbo].[Autorizante] ([Codigo])
GO
ALTER TABLE [dbo].[Auditoria_autorizante] CHECK CONSTRAINT [FK_Auditoria_autorizante_Autorizante]
GO
ALTER TABLE [dbo].[Auditoria_autorizante]  WITH CHECK ADD  CONSTRAINT [FK_Auditoria_autorizante_Dependencia] FOREIGN KEY([Codigo_dependencia])
REFERENCES [dbo].[Dependencia] ([Codigo])
GO
ALTER TABLE [dbo].[Auditoria_autorizante] CHECK CONSTRAINT [FK_Auditoria_autorizante_Dependencia]
GO
ALTER TABLE [dbo].[Auditoria_autorizante]  WITH CHECK ADD  CONSTRAINT [FK_Auditoria_autorizante_Usuario] FOREIGN KEY([Codigo_usuario])
REFERENCES [dbo].[Usuario] ([Codigo])
GO
ALTER TABLE [dbo].[Auditoria_autorizante] CHECK CONSTRAINT [FK_Auditoria_autorizante_Usuario]
GO
ALTER TABLE [dbo].[Auditoria_expediente]  WITH CHECK ADD  CONSTRAINT [FK_Auditoria_expediente_Area] FOREIGN KEY([Codigo_area])
REFERENCES [dbo].[Area] ([Codigo])
GO
ALTER TABLE [dbo].[Auditoria_expediente] CHECK CONSTRAINT [FK_Auditoria_expediente_Area]
GO
ALTER TABLE [dbo].[Auditoria_expediente]  WITH CHECK ADD  CONSTRAINT [FK_Auditoria_expediente_Expediente] FOREIGN KEY([Codigo_expediente])
REFERENCES [dbo].[Expediente] ([Codigo])
GO
ALTER TABLE [dbo].[Auditoria_expediente] CHECK CONSTRAINT [FK_Auditoria_expediente_Expediente]
GO
ALTER TABLE [dbo].[Auditoria_expediente]  WITH CHECK ADD  CONSTRAINT [FK_Auditoria_expediente_Expediente_estado] FOREIGN KEY([Codigo_estado])
REFERENCES [dbo].[Expediente_estado] ([Codigo])
GO
ALTER TABLE [dbo].[Auditoria_expediente] CHECK CONSTRAINT [FK_Auditoria_expediente_Expediente_estado]
GO
ALTER TABLE [dbo].[Auditoria_expediente]  WITH CHECK ADD  CONSTRAINT [FK_Auditoria_expediente_Usuario] FOREIGN KEY([Codigo_usuario])
REFERENCES [dbo].[Usuario] ([Codigo])
GO
ALTER TABLE [dbo].[Auditoria_expediente] CHECK CONSTRAINT [FK_Auditoria_expediente_Usuario]
GO
ALTER TABLE [dbo].[Autorizante]  WITH CHECK ADD  CONSTRAINT [FK_Autorizante_Dependencia] FOREIGN KEY([Codigo_dependencia])
REFERENCES [dbo].[Dependencia] ([Codigo])
GO
ALTER TABLE [dbo].[Autorizante] CHECK CONSTRAINT [FK_Autorizante_Dependencia]
GO
ALTER TABLE [dbo].[Cuerpo]  WITH CHECK ADD  CONSTRAINT [FK_Cuerpo_Caja] FOREIGN KEY([Codigo_caja])
REFERENCES [dbo].[Caja] ([Codigo])
GO
ALTER TABLE [dbo].[Cuerpo] CHECK CONSTRAINT [FK_Cuerpo_Caja]
GO
ALTER TABLE [dbo].[Cuerpo]  WITH CHECK ADD  CONSTRAINT [FK_Cuerpo_Cuerpo_estado] FOREIGN KEY([Codigo_estado])
REFERENCES [dbo].[Cuerpo_estado] ([Codigo])
GO
ALTER TABLE [dbo].[Cuerpo] CHECK CONSTRAINT [FK_Cuerpo_Cuerpo_estado]
GO
ALTER TABLE [dbo].[Cuerpo]  WITH CHECK ADD  CONSTRAINT [FK_Cuerpo_Expediente] FOREIGN KEY([Codigo_expediente])
REFERENCES [dbo].[Expediente] ([Codigo])
GO
ALTER TABLE [dbo].[Cuerpo] CHECK CONSTRAINT [FK_Cuerpo_Expediente]
GO
ALTER TABLE [dbo].[Estado_tipoRemito]  WITH CHECK ADD  CONSTRAINT [FK_Estado_tipoRemito_Remito_estado] FOREIGN KEY([Codigo_estado])
REFERENCES [dbo].[Remito_estado] ([Codigo])
GO
ALTER TABLE [dbo].[Estado_tipoRemito] CHECK CONSTRAINT [FK_Estado_tipoRemito_Remito_estado]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Area] FOREIGN KEY([Codigo_area])
REFERENCES [dbo].[Area] ([Codigo])
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Area]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_Expediente_Expediente_estado] FOREIGN KEY([Codigo_estado])
REFERENCES [dbo].[Expediente_estado] ([Codigo])
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_Expediente_Expediente_estado]
GO
ALTER TABLE [dbo].[Permiso_Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Permiso_Permiso_Permiso] FOREIGN KEY([Id_Permiso_padre])
REFERENCES [dbo].[Permiso] ([Id])
GO
ALTER TABLE [dbo].[Permiso_Permiso] CHECK CONSTRAINT [FK_Permiso_Permiso_Permiso]
GO
ALTER TABLE [dbo].[Permiso_Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Permiso_Permiso_Permiso1] FOREIGN KEY([Id_Permiso_hijo])
REFERENCES [dbo].[Permiso] ([Id])
GO
ALTER TABLE [dbo].[Permiso_Permiso] CHECK CONSTRAINT [FK_Permiso_Permiso_Permiso1]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_Area] FOREIGN KEY([Codigo_area])
REFERENCES [dbo].[Area] ([Codigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_Area]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_Autorizante] FOREIGN KEY([Codigo_autorizante])
REFERENCES [dbo].[Autorizante] ([Codigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_Autorizante]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_Intermediario] FOREIGN KEY([Codigo_intermediario])
REFERENCES [dbo].[Intermediario] ([Codigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_Intermediario]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_Remito_Remito_estado] FOREIGN KEY([Codigo_estado])
REFERENCES [dbo].[Remito_estado] ([Codigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_Remito_Remito_estado]
GO
ALTER TABLE [dbo].[Remito_expedientes]  WITH CHECK ADD  CONSTRAINT [FK_Remito_expedientes_Expediente1] FOREIGN KEY([Codigo_expediente])
REFERENCES [dbo].[Expediente] ([Codigo])
GO
ALTER TABLE [dbo].[Remito_expedientes] CHECK CONSTRAINT [FK_Remito_expedientes_Expediente1]
GO
ALTER TABLE [dbo].[Remito_expedientes]  WITH CHECK ADD  CONSTRAINT [FK_Remito_expedientes_Remito] FOREIGN KEY([Codigo_remito])
REFERENCES [dbo].[Remito] ([Codigo])
GO
ALTER TABLE [dbo].[Remito_expedientes] CHECK CONSTRAINT [FK_Remito_expedientes_Remito]
GO
ALTER TABLE [dbo].[Remito_nros_comdoc]  WITH CHECK ADD  CONSTRAINT [FK_Remito_nros_comdoc_Remito] FOREIGN KEY([Codigo_remito])
REFERENCES [dbo].[Remito] ([Codigo])
GO
ALTER TABLE [dbo].[Remito_nros_comdoc] CHECK CONSTRAINT [FK_Remito_nros_comdoc_Remito]
GO
ALTER TABLE [dbo].[Traduccion]  WITH CHECK ADD  CONSTRAINT [FK_Traduccion_Etiqueta] FOREIGN KEY([Id_etiqueta])
REFERENCES [dbo].[Etiqueta] ([Id_etiqueta])
GO
ALTER TABLE [dbo].[Traduccion] CHECK CONSTRAINT [FK_Traduccion_Etiqueta]
GO
ALTER TABLE [dbo].[Traduccion]  WITH CHECK ADD  CONSTRAINT [FK_Traduccion_Idioma] FOREIGN KEY([Id_idioma])
REFERENCES [dbo].[Idioma] ([Id_idioma])
GO
ALTER TABLE [dbo].[Traduccion] CHECK CONSTRAINT [FK_Traduccion_Idioma]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Idioma] FOREIGN KEY([Id_idioma])
REFERENCES [dbo].[Idioma] ([Id_idioma])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Idioma]
GO
ALTER TABLE [dbo].[Usuario_Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Permiso_Permiso] FOREIGN KEY([Id_permiso])
REFERENCES [dbo].[Permiso] ([Id])
GO
ALTER TABLE [dbo].[Usuario_Permiso] CHECK CONSTRAINT [FK_Usuario_Permiso_Permiso]
GO
ALTER TABLE [dbo].[Usuario_Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Permiso_Usuario] FOREIGN KEY([Codigo_usuario])
REFERENCES [dbo].[Usuario] ([Codigo])
GO
ALTER TABLE [dbo].[Usuario_Permiso] CHECK CONSTRAINT [FK_Usuario_Permiso_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[DVActualizarDVH]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[DVActualizarDVV]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[DVCalcularDVV]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[DVInsertarDVV]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[DVTraerDVHSuma]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[DVTraerDVV]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[ListarTodosAutorizantes]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarDisponibleCaja]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarRemitoAsociado]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaArea]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaAutorizante]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_altaBitacora]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaCuerpo]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaDependencia]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaEtiqueta]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaExpediente]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaIdioma]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaRemito]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaTraduccion]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AltaUsuario]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AuditarAutorizante]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_AuditarExp]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaArea]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaDependencia]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaEtiqueta]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaIdioma]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaTraduccion]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BajaUsuario]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BaseDatosRespaldar]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BitacoraListar]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BitacoraVerLogs]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_borrarPadre]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_borrarPermisoUsuario]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_buscarEstadoPorCodigo]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarIdiomaPorId]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarRtoComdoc]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarUltimoRemito]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarUsuario]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_BuscarUsuarioPorNombre]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CambiarEstadoExpediente]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CargarNrosComdoc]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CargarRemitoExpedientes]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_CodigoCajaSala2]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ExpedienteVerReporte]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GuardarPadreHijo]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GuardarPermiso]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_GuardarPermisoUsuario]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarRemitoDevolucion]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_insertarRemitoExpediente]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_LiberarEspacio]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_areas]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_autorizantes]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_dependencias]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_etiquetas]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_idiomas]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_intermediarios]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_traducciones]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarCajas]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarCuerpoEstados]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarEstadosExpediente]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarExpedientes]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarExpedientesSinCuerpos]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarNotasGdeIngreso]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarRemitos]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ListarTodosEstadosExpediente]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarArea]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarAutorizante]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarDependencia]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarEtiqueta]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarIdioma]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarRemito]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarTraduccion]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarUsuario]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MoverASala2]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_obtenerCuerposPorCaja]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_QuitarEspacioSala2]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_RecuperarAutorizanteDeAuditoria]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_RecuperarExpedienteDeAuditoria]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_todasLasFamilias]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_todasLasPatentes]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TodosLosUsuarios]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TodosLosUsuariosActivosyNoActivos]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Traducciones]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerCodUltimoAutorizante]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerCuerposExp]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerDatosEstado]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerDatosRemitoPorNOTAGDE]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerDisponibilidadCaja]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosDevolucion]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosEgreso]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_traerEstadosIngreso]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpediente]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientePorNroExp]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientePorRemitoDev]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerExpedientesPorCodigoRemito]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerIdiomas]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerNumerosComdocRemito]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerPermisosUsuario]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerRemitoAsociado]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_TraerTodo]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_traerUltimoID]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_VerificarEstadoSala2]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_VerificarNombreUsu]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_VerificarNotaGDE]    Script Date: 15/12/2020 20:25:53 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_VerificarNroExpElectronico]    Script Date: 15/12/2020 20:25:53 ******/
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

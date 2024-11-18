USE [DBTisey]
GO
/****** Object:  Table [dbo].[auth_group]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group_permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_permission]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[codename] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](6) NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cedula] [nvarchar](16) NOT NULL,
	[PersonaId_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_admin_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_time] [datetimeoffset](7) NOT NULL,
	[object_id] [nvarchar](max) NULL,
	[object_repr] [nvarchar](200) NOT NULL,
	[action_flag] [smallint] NOT NULL,
	[change_message] [nvarchar](max) NOT NULL,
	[content_type_id] [int] NULL,
	[user_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_content_type]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_content_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_label] [nvarchar](100) NOT NULL,
	[model] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_session]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_session](
	[session_key] [nvarchar](40) NOT NULL,
	[session_data] [nvarchar](max) NOT NULL,
	[expire_date] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[INSS] [nvarchar](16) NOT NULL,
	[PersonaId_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](100) NOT NULL,
	[Apellidos] [nvarchar](100) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](6) NOT NULL,
	[Descripcion] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetimeoffset](7) NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](150) NOT NULL,
	[last_name] [nvarchar](150) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_groups]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_groups](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[usuario_id] [bigint] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_user_permissions]    Script Date: 18/11/2024 13:51:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_user_permissions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[usuario_id] [bigint] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[auth_permission] ON 
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add content type', 4, N'add_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change content type', 4, N'change_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete content type', 4, N'delete_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view content type', 4, N'view_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add session', 5, N'add_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change session', 5, N'change_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete session', 5, N'delete_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view session', 5, N'view_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add usuario', 6, N'add_usuario')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change usuario', 6, N'change_usuario')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete usuario', 6, N'delete_usuario')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view usuario', 6, N'view_usuario')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add categoria', 7, N'add_categoria')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change categoria', 7, N'change_categoria')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete categoria', 7, N'delete_categoria')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view categoria', 7, N'view_categoria')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add cliente', 8, N'add_cliente')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change cliente', 8, N'change_cliente')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete cliente', 8, N'delete_cliente')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view cliente', 8, N'view_cliente')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add empleado', 9, N'add_empleado')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change empleado', 9, N'change_empleado')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete empleado', 9, N'delete_empleado')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view empleado', 9, N'view_empleado')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add persona', 10, N'add_persona')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change persona', 10, N'change_persona')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete persona', 10, N'delete_persona')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view persona', 10, N'view_persona')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add sexo', 11, N'add_sexo')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change sexo', 11, N'change_sexo')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete sexo', 11, N'delete_sexo')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view sexo', 11, N'view_sexo')
GO
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 
GO
INSERT [dbo].[Categoria] ([id], [Codigo], [Nombre]) VALUES (1, N'LIB', N'Libreria')
GO
INSERT [dbo].[Categoria] ([id], [Codigo], [Nombre]) VALUES (2, N'COS', N'Cosmeticos')
GO
INSERT [dbo].[Categoria] ([id], [Codigo], [Nombre]) VALUES (3, N'CHV', N'Chiveria')
GO
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (1, CAST(N'2024-11-18T19:47:32.0162990+00:00' AS DateTimeOffset), N'1', N'Libreria', 1, N'[{"added": {}}]', 7, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (2, CAST(N'2024-11-18T19:47:45.3535600+00:00' AS DateTimeOffset), N'2', N'Cosmeticos', 1, N'[{"added": {}}]', 7, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3, CAST(N'2024-11-18T19:47:57.6660330+00:00' AS DateTimeOffset), N'3', N'Chiveria', 1, N'[{"added": {}}]', 7, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4, CAST(N'2024-11-18T19:48:12.0439220+00:00' AS DateTimeOffset), N'1', N'Masculino', 1, N'[{"added": {}}]', 11, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (5, CAST(N'2024-11-18T19:48:21.1292050+00:00' AS DateTimeOffset), N'2', N'Femenino', 1, N'[{"added": {}}]', 11, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (6, CAST(N'2024-11-18T19:48:30.6342680+00:00' AS DateTimeOffset), N'3', N'Otros', 1, N'[{"added": {}}]', 11, 1)
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'Categoria', N'categoria')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'Cliente', N'cliente')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'contenttypes', N'contenttype')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'Empleado', N'empleado')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'Persona', N'persona')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'sessions', N'session')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'Sexo', N'sexo')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'Usuario', N'usuario')
GO
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'Categoria', N'0001_initial', CAST(N'2024-11-18T19:30:03.0749520+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'Persona', N'0001_initial', CAST(N'2024-11-18T19:30:03.0893640+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'Cliente', N'0001_initial', CAST(N'2024-11-18T19:30:03.1016970+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'Empleado', N'0001_initial', CAST(N'2024-11-18T19:30:03.1154810+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'Sexo', N'0001_initial', CAST(N'2024-11-18T19:30:03.1259890+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'contenttypes', N'0001_initial', CAST(N'2024-11-18T19:30:03.1345090+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2024-11-18T19:30:04.7794810+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'auth', N'0001_initial', CAST(N'2024-11-18T19:30:04.8837930+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2024-11-18T19:30:04.9195250+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'auth', N'0003_alter_user_email_max_length', CAST(N'2024-11-18T19:30:04.9489540+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'auth', N'0004_alter_user_username_opts', CAST(N'2024-11-18T19:30:04.9714580+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'auth', N'0005_alter_user_last_login_null', CAST(N'2024-11-18T19:30:04.9995580+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'auth', N'0006_require_contenttypes_0002', CAST(N'2024-11-18T19:30:05.0181660+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2024-11-18T19:30:05.0284090+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'auth', N'0008_alter_user_username_max_length', CAST(N'2024-11-18T19:30:05.0374090+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2024-11-18T19:30:05.0482110+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'auth', N'0010_alter_group_name_max_length', CAST(N'2024-11-18T19:30:06.6694790+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'auth', N'0011_update_proxy_permissions', CAST(N'2024-11-18T19:30:06.6969820+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (19, N'auth', N'0012_alter_user_first_name_max_length', CAST(N'2024-11-18T19:30:06.7197470+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (20, N'Usuario', N'0001_initial', CAST(N'2024-11-18T19:30:06.7758290+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (21, N'admin', N'0001_initial', CAST(N'2024-11-18T19:30:06.7975700+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (22, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2024-11-18T19:30:06.8144570+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (23, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2024-11-18T19:30:06.8250220+00:00' AS DateTimeOffset))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (24, N'sessions', N'0001_initial', CAST(N'2024-11-18T19:30:06.8361030+00:00' AS DateTimeOffset))
GO
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'i3qsyu0hwhcxrwvy2yj351qph7is9ia8', N'.eJxVjEEOwiAQRe_C2hDAlgGX7nsGMjCMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hJnERWpx-t4jpkesO6I711mRqdV3mKHdFHrTLqVF-Xg_376BgL996NOBYAToi6xNrOA-GNYKxXltWejSGicFRjt4lp5JKfoig2KIC61m8P9CoN4w:1tD7iC:Cqs8LkHe0_Unmtuc4MC3pjXjQrreQBgf2FhEpWEAWXY', CAST(N'2024-12-02T19:47:04.3499440+00:00' AS DateTimeOffset))
GO
SET IDENTITY_INSERT [dbo].[Sexo] ON 
GO
INSERT [dbo].[Sexo] ([id], [Codigo], [Descripcion]) VALUES (1, N'M', N'Masculino')
GO
INSERT [dbo].[Sexo] ([id], [Codigo], [Descripcion]) VALUES (2, N'F', N'Femenino')
GO
INSERT [dbo].[Sexo] ([id], [Codigo], [Descripcion]) VALUES (3, N'O', N'Otros')
GO
SET IDENTITY_INSERT [dbo].[Sexo] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 
GO
INSERT [dbo].[Usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (1, N'pbkdf2_sha256$390000$ySoVfaITzWUN0LKJVVJu0y$5tjgWnM25KiIJMsetz1uuuo5S/j6X86QjNpYYPHcAjI=', CAST(N'2024-11-18T19:47:04.3459490+00:00' AS DateTimeOffset), 1, N'admin', N'', N'', N'litotrana98@gmail.com', 1, 1, CAST(N'2024-11-18T19:46:52.4671100+00:00' AS DateTimeOffset))
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 18/11/2024 13:51:37 ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuario__F3DBC5724FD68B55]    Script Date: 18/11/2024 13:51:37 ******/
ALTER TABLE [dbo].[Usuario] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [Cliente_PersonaId_id_c4f46194_fk_Persona_id] FOREIGN KEY([PersonaId_id])
REFERENCES [dbo].[Persona] ([id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [Cliente_PersonaId_id_c4f46194_fk_Persona_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_Usuario_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_Usuario_id]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [Empleado_PersonaId_id_d762de30_fk_Persona_id] FOREIGN KEY([PersonaId_id])
REFERENCES [dbo].[Persona] ([id])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [Empleado_PersonaId_id_d762de30_fk_Persona_id]
GO
ALTER TABLE [dbo].[Usuario_groups]  WITH CHECK ADD  CONSTRAINT [Usuario_groups_group_id_41c3a916_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[Usuario_groups] CHECK CONSTRAINT [Usuario_groups_group_id_41c3a916_fk_auth_group_id]
GO
ALTER TABLE [dbo].[Usuario_groups]  WITH CHECK ADD  CONSTRAINT [Usuario_groups_usuario_id_48f41311_fk_Usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Usuario_groups] CHECK CONSTRAINT [Usuario_groups_usuario_id_48f41311_fk_Usuario_id]
GO
ALTER TABLE [dbo].[Usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [Usuario_user_permissions_permission_id_614dc495_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[Usuario_user_permissions] CHECK CONSTRAINT [Usuario_user_permissions_permission_id_614dc495_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[Usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [Usuario_user_permissions_usuario_id_a4d95b6f_fk_Usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Usuario_user_permissions] CHECK CONSTRAINT [Usuario_user_permissions_usuario_id_a4d95b6f_fk_Usuario_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO

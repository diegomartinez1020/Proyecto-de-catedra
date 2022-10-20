CREATE DATABASE [Bolsa_Trabajo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bolsa_Trabajo', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Bolsa_Trabajo.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bolsa_Trabajo_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Bolsa_Trabajo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bolsa_Trabajo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bolsa_Trabajo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bolsa_Trabajo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Bolsa_Trabajo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bolsa_Trabajo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bolsa_Trabajo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bolsa_Trabajo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bolsa_Trabajo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bolsa_Trabajo] SET  MULTI_USER 
GO
ALTER DATABASE [Bolsa_Trabajo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bolsa_Trabajo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bolsa_Trabajo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bolsa_Trabajo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Bolsa_Trabajo]
GO
/****** Object:  Table [dbo].[candidatos]    Script Date: 25/02/2015 12:34:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[candidatos](
	[nIdCandidato] [int] IDENTITY(1,1) NOT NULL,
	[sNombreCandidato] [varchar](255) NULL,
	[sApellidosCandidato] [varchar](255) NULL,
	[sNacionalidad] [varchar](100) NULL,
	[sEmailPrimario] [varchar](255) NULL,
	[sEmailSecundario] [varchar](255) NULL,
	[nIdGenero] [int] NULL,
	[dFechaNacimiento] [date] NULL,
	[nIdMunicipio] [int] NULL,
	[sTelefonoContacto] [varchar](15) NULL,
 CONSTRAINT [PK__candidat__7B0564E9928218BE] PRIMARY KEY CLUSTERED 
(
	[nIdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 25/02/2015 12:34:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[nIdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[sNombreCategoria] [nvarchar](50) NULL,
 CONSTRAINT [PK_categorias] PRIMARY KEY CLUSTERED 
(
	[nIdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[empresas]    Script Date: 25/02/2015 12:34:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empresas](
	[nIdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[sNombreEmpresa] [nvarchar](50) NULL,
	[sPathImage] [nvarchar](200) NULL,
	[sDescripcion] [text] NULL,
	[sTelefono] [char](10) NULL,
	[sDireccion] [nchar](255) NULL,
	[sEmail] [nchar](255) NULL,
 CONSTRAINT [PK_empresas] PRIMARY KEY CLUSTERED 
(
	[nIdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[municipios]    Script Date: 25/02/2015 12:34:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[municipios](
	[nIdMunicipio] [int] NOT NULL,
	[sNombreMunicipio] [varchar](100) NULL,
	[nIdPais] [int] NOT NULL,
 CONSTRAINT [PK_municipios] PRIMARY KEY CLUSTERED 
(
	[nIdMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ofertas]    Script Date: 25/02/2015 12:34:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ofertas](
	[nIdOferta] [int] IDENTITY(1,1) NOT NULL,
	[nIdEmpresa] [int] NULL,
	[sTituloOferta] [nvarchar](100) NULL,
	[nTipoJornada] [int] NULL,
	[nTipoContrato] [int] NULL,
	[fSalario] [float] NULL,
	[nIdLocalidad] [int] NULL,
	[nTipoLocalidad] [int] NULL,
	[nIdCategoria] [int] NULL,
	[dFechaPublicacion] [date] NULL,
	[sDescripcion] [text] NULL,
	[fechaContratacion] [date] NULL,
	[nVacantes] [int] NULL,
 CONSTRAINT [PK_ofertas] PRIMARY KEY CLUSTERED 
(
	[nIdOferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[paises]    Script Date: 25/02/2015 12:34:32 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paises](
	[nIdPais] [int] NOT NULL,
	[sNombrePais] [varchar](150) NOT NULL,
 CONSTRAINT [PK_paises] PRIMARY KEY CLUSTERED 
(
	[nIdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[candidatos] ON 

INSERT [dbo].[candidatos] ([nIdCandidato], [sNombreCandidato], [sApellidosCandidato], [sNacionalidad], [sEmailPrimario], [sEmailSecundario], [nIdGenero], [dFechaNacimiento], [nIdMunicipio], [sTelefonoContacto]) VALUES (1, N'Rodrigo José', N'Olivares Vasquez', N'Salvadoreño', N'rodrigo.olivares@udb.edu.sv', NULL, 1, CAST(0x33170B00 AS Date), 4, N'22726985')
INSERT [dbo].[candidatos] ([nIdCandidato], [sNombreCandidato], [sApellidosCandidato], [sNacionalidad], [sEmailPrimario], [sEmailSecundario], [nIdGenero], [dFechaNacimiento], [nIdMunicipio], [sTelefonoContacto]) VALUES (2, N'Ana Patricia', N'Rivera Ramirez', N'Salvadoreño', N'patricia.rivera.ramirez@udb.edu.sv', NULL, 2, CAST(0x97170B00 AS Date), 2, N'25143094')
INSERT [dbo].[candidatos] ([nIdCandidato], [sNombreCandidato], [sApellidosCandidato], [sNacionalidad], [sEmailPrimario], [sEmailSecundario], [nIdGenero], [dFechaNacimiento], [nIdMunicipio], [sTelefonoContacto]) VALUES (3, N'Rafael Ernesto', N'De León León', N'Salvadoreño', N'rafael.deleon@udb.edu.sv', NULL, 1, CAST(0xE2160B00 AS Date), 4, N'25143095')
INSERT [dbo].[candidatos] ([nIdCandidato], [sNombreCandidato], [sApellidosCandidato], [sNacionalidad], [sEmailPrimario], [sEmailSecundario], [nIdGenero], [dFechaNacimiento], [nIdMunicipio], [sTelefonoContacto]) VALUES (4, N'Martina Alejandra', N'Rivas Rivas', N'Salvadoreño', N'martina.rivas@udb.edu.sv', NULL, 2, CAST(0x76170B00 AS Date), 3, N'22322338')
INSERT [dbo].[candidatos] ([nIdCandidato], [sNombreCandidato], [sApellidosCandidato], [sNacionalidad], [sEmailPrimario], [sEmailSecundario], [nIdGenero], [dFechaNacimiento], [nIdMunicipio], [sTelefonoContacto]) VALUES (5, N'Marcela Alexandra', N'Ascencio Diaz', N'Salvadoreño', N'marcela.ascencio@udb.edu.sv', N'ale2012@hotmail.com', 2, CAST(0xB1170B00 AS Date), 2, N'22326625')
INSERT [dbo].[candidatos] ([nIdCandidato], [sNombreCandidato], [sApellidosCandidato], [sNacionalidad], [sEmailPrimario], [sEmailSecundario], [nIdGenero], [dFechaNacimiento], [nIdMunicipio], [sTelefonoContacto]) VALUES (6, N'Daniel Edgardo', N'Diaz Olivares', N'Salvadoreño', N'daniel.diaz@udb.edu.sv', NULL, 1, CAST(0xE7170B00 AS Date), 4, N'26598741')
INSERT [dbo].[candidatos] ([nIdCandidato], [sNombreCandidato], [sApellidosCandidato], [sNacionalidad], [sEmailPrimario], [sEmailSecundario], [nIdGenero], [dFechaNacimiento], [nIdMunicipio], [sTelefonoContacto]) VALUES (7, N'Ernesto Alexander', N'Alvarado Orellana', N'Salvadoreño', N'ernesto.alexander@udb.edu.sv', NULL, 1, CAST(0x07180B00 AS Date), 4, N'25149687')
SET IDENTITY_INSERT [dbo].[candidatos] OFF
SET IDENTITY_INSERT [dbo].[categorias] ON 

INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (1, N'Marketing/Ventas')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (2, N'Administración/Oficina')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (3, N'Ingeniería')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (4, N'Contabilidad/Finanzas')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (5, N'Informática/Telecomunicaciones')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (6, N'Hosteleria/Turismo')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (7, N'Atención al cliente')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (8, N'Productos/Operaciones')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (9, N'Docencia')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (10, N'Medicina/Salud')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (11, N'Almacén/Logística')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (12, N'Mercadeo/Publicidad/Comunicaciones')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (13, N'Recursos Humanos')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (14, N'Diseño/Artes gráficas')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (15, N'Call Center/Telemercadeo')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (16, N'Construcción/Obra')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (17, N'Dirección/Gerencia')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (18, N'Investigación y calidad')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (19, N'Legal / Asesoría')
INSERT [dbo].[categorias] ([nIdCategoria], [sNombreCategoria]) VALUES (20, N'Compras/Comercio Exterior')
SET IDENTITY_INSERT [dbo].[categorias] OFF
SET IDENTITY_INSERT [dbo].[empresas] ON 

INSERT [dbo].[empresas] ([nIdEmpresa], [sNombreEmpresa], [sPathImage], [sDescripcion], [sTelefono], [sDireccion], [sEmail]) VALUES (1, N'Grupo Treming', NULL, N'¿Quienes somos? GRUPO TREMING es una empresa dedicada a brindar respuestas inmediatas a las necesidades de nuestros clientes, basando nuestros servicios en las siguientes servicios: Soluciones de RRHH y Soluciones de IT. Con esta amplia variedad de servicios, la compañía apoya y mejora las perspectivas y la ventaja competitiva tanto de personas como de empresas. ¿Que Hacemos? En GRUPO TREMING, establecemos alianzas que harán mas eficientes las tareas de nuestros clientes, asumimos la responsabilidad de desempeñar el proyecto que el CLIENTE ha decidido no realizar con recursos propios, para que el mismo se enfoque a fortalecer sus ventajas competitivas. Empresa del sector Servicios Profesionales, localizada en San Salvador, De 51 a 200 trabajadores', NULL, NULL, NULL)
INSERT [dbo].[empresas] ([nIdEmpresa], [sNombreEmpresa], [sPathImage], [sDescripcion], [sTelefono], [sDireccion], [sEmail]) VALUES (2, N'Contactos y Oportunidades, S.A. de C.V.', NULL, N'Empresa de sólido prestigio a nivel regional, dedicados a los servicios de HeadHunter y Outsourcing, para diferentes empresas. Empresa del sector RRHH/Personal, localizada en San Salvador, De 51 a 200 trabajadores', NULL, NULL, NULL)
INSERT [dbo].[empresas] ([nIdEmpresa], [sNombreEmpresa], [sPathImage], [sDescripcion], [sTelefono], [sDireccion], [sEmail]) VALUES (3, N'Manpower Group', NULL, N'ManpowerGroup es líder mundial en soluciones innovadoras de capital humano con más de 60 años de experiencia a nivel global. Tenemos representación en 82 países con más de 4,000 oficinas, 3,500,000 empleados y 400,000 clientes anuales. Así mismo, capacitamos a más de 9 millones de personas. Actualmente, con nuestros más de 40 años de servicio en la región México y Centroamérica, contamos con más de 70,000 empleados temporales y permanentes, más de 1 millón de candidatos registrados, atendemos a más de 2,000 clientes mensuales y tenemos representación en más de 100 unidades de negocio con presencia en cada estado y país de la región. Contamos con oficinas en El Salvador, Costa Rica, Guatemala, Honduras, Panamá, Nicaragua y República Dominicana que reportan a nuestro corporativo en la Ciudad de México. Empresa del sector RRHH/Personal, localizada en San Salvador, Más de 1000 trabajadores', NULL, NULL, NULL)
INSERT [dbo].[empresas] ([nIdEmpresa], [sNombreEmpresa], [sPathImage], [sDescripcion], [sTelefono], [sDireccion], [sEmail]) VALUES (4, N'IT Power', NULL, N'It Power es una fabrica de software formada por consultores de sistemas del mas alto nivel. Entre los servicios que ofrecemos se encuentran: Diseño y desarrollo de proyectos de tecnología, mantenimiento de sistemas informáticos, auditoria de sistemas, outsourcing de personal, asesoría empresarial, maquila de datos y capacitaciones. Empresa del sector Informática/Software, localizada en San Salvador', NULL, NULL, NULL)
INSERT [dbo].[empresas] ([nIdEmpresa], [sNombreEmpresa], [sPathImage], [sDescripcion], [sTelefono], [sDireccion], [sEmail]) VALUES (5, N'Human Talent Hunter', NULL, N'Somos una empresa enfocada en generar un vínculo entre el Talento Humano y nuestros clientes, mediante el Reclutamiento, Selección y Administración del personal, basado en las necesidades de las empresas y las tendencias del mercado, garantizando un servicio profesional, confidencial y altamente efectivo en tiempo, costo y calidad. Empresa del sector RRHH/Personal, localizada en San Salvador, De 1 a 10 trabajadores', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[empresas] OFF
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (1, N'Santa Ana', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (2, N'Ahuachapán', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (3, N'Sonsonate', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (4, N'San Salvador', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (5, N'Cabañas', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (6, N'Cuscatlán', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (7, N'La Libertad', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (8, N'Chalatenango', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (9, N'San Vicente', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (10, N'La Paz', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (11, N'Usulután', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (12, N'San Miguel', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (13, N'Morazán', 1)
INSERT [dbo].[municipios] ([nIdMunicipio], [sNombreMunicipio], [nIdPais]) VALUES (14, N'La Unión', 1)
SET IDENTITY_INSERT [dbo].[ofertas] ON 

INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (2, 1, N'Programador Java Junior', 1, 1, 600, 5, 1, 5, CAST(0xA4390B00 AS Date), NULL, CAST(0xAA390B00 AS Date), 2)
INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (3, 2, N'Asistente Administrativo', 1, 1, 450, 5, 1, 8, CAST(0xA4390B00 AS Date), NULL, CAST(0xAA390B00 AS Date), 1)
INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (4, 1, N'Programador Java Senior', 1, 2, 1000, 4, 1, 5, CAST(0xA4390B00 AS Date), NULL, CAST(0xAD390B00 AS Date), 1)
INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (5, 1, N'Programador ASP.NET Visual Basic', 2, 2, 500, 4, 1, 5, CAST(0xA4390B00 AS Date), NULL, CAST(0xAD390B00 AS Date), 2)
INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (6, 2, N'Asistente a la Gerencia', 2, 1, 450, 4, 1, 8, CAST(0xA5390B00 AS Date), NULL, CAST(0xB2390B00 AS Date), 1)
INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (7, 1, N'Programador PHP Senior', 1, 1, 950, 4, 1, 5, CAST(0xA5390B00 AS Date), NULL, CAST(0xB2390B00 AS Date), 1)
INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (8, 1, N'Administrador de Bases de Datos Junior', 1, 1, 750, 4, 1, 5, CAST(0xA5390B00 AS Date), N'Configuración de servicios, realización de respaldos, documentación del servidor de bases de datos', CAST(0xB2390B00 AS Date), 2)
INSERT [dbo].[ofertas] ([nIdOferta], [nIdEmpresa], [sTituloOferta], [nTipoJornada], [nTipoContrato], [fSalario], [nIdLocalidad], [nTipoLocalidad], [nIdCategoria], [dFechaPublicacion], [sDescripcion], [fechaContratacion], [nVacantes]) VALUES (9, 2, N'Administrador de Bases de Datos Senior', 2, 2, 1200, 4, 1, 5, CAST(0xA5390B00 AS Date), N'Configuración de servicios, realización de respaldos, documentación del servidor de bases de datos, auditoria de bases de datos', CAST(0xB2390B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[ofertas] OFF
INSERT [dbo].[paises] ([nIdPais], [sNombrePais]) VALUES (1, N'El Salvador')
INSERT [dbo].[paises] ([nIdPais], [sNombrePais]) VALUES (2, N'Guatemala')
INSERT [dbo].[paises] ([nIdPais], [sNombrePais]) VALUES (3, N'Honduras')
INSERT [dbo].[paises] ([nIdPais], [sNombrePais]) VALUES (4, N'Nicaragua')
INSERT [dbo].[paises] ([nIdPais], [sNombrePais]) VALUES (5, N'Costa Rica')
INSERT [dbo].[paises] ([nIdPais], [sNombrePais]) VALUES (6, N'Panamá')
ALTER TABLE [dbo].[candidatos]  WITH CHECK ADD  CONSTRAINT [FK_candidatos_municipios] FOREIGN KEY([nIdMunicipio])
REFERENCES [dbo].[municipios] ([nIdMunicipio])
GO
ALTER TABLE [dbo].[candidatos] CHECK CONSTRAINT [FK_candidatos_municipios]
GO
ALTER TABLE [dbo].[municipios]  WITH CHECK ADD  CONSTRAINT [FK_municipios_paises] FOREIGN KEY([nIdPais])
REFERENCES [dbo].[paises] ([nIdPais])
GO
ALTER TABLE [dbo].[municipios] CHECK CONSTRAINT [FK_municipios_paises]
GO
ALTER TABLE [dbo].[ofertas]  WITH CHECK ADD  CONSTRAINT [FK_ofertas_categorias] FOREIGN KEY([nIdCategoria])
REFERENCES [dbo].[categorias] ([nIdCategoria])
GO
ALTER TABLE [dbo].[ofertas] CHECK CONSTRAINT [FK_ofertas_categorias]
GO
ALTER TABLE [dbo].[ofertas]  WITH CHECK ADD  CONSTRAINT [FK_ofertas_empresas] FOREIGN KEY([nIdEmpresa])
REFERENCES [dbo].[empresas] ([nIdEmpresa])
GO
ALTER TABLE [dbo].[ofertas] CHECK CONSTRAINT [FK_ofertas_empresas]
GO
ALTER TABLE [dbo].[ofertas]  WITH CHECK ADD  CONSTRAINT [FK_ofertas_municipios] FOREIGN KEY([nIdLocalidad])
REFERENCES [dbo].[municipios] ([nIdMunicipio])
GO
ALTER TABLE [dbo].[ofertas] CHECK CONSTRAINT [FK_ofertas_municipios]
GO
USE [master]
GO
/****** Object:  Database [TradeDB]    Script Date: 09.04.2023 12:47:03 ******/
CREATE DATABASE [TradeDB]

GO
USE [TradeDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[OrderNontents] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderInfo] [int] NULL,
	[OrderCodeToObtain] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticle] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointID] [int] IDENTITY(1,1) NOT NULL,
	[IndexPickupPoint] [int] NOT NULL,
	[City] [int] NOT NULL,
	[Street] [int] NOT NULL,
	[House] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PickupPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticle] [nvarchar](50) NOT NULL,
	[ProductTovar] [int] NOT NULL,
	[ProductMeasurementUnit] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductMaximumDiscountAmount] [tinyint] NULL,
	[ProductCategory] [int] NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductPhoto] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductArticle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[StreetID] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StreetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tovar]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovar](
	[TovarID] [int] IDENTITY(1,1) NOT NULL,
	[TovarName] [int] NOT NULL,
	[TovarManufacturer] [int] NOT NULL,
	[TovarProvider] [int] NOT NULL,
	[TovarDescription] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TovarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TovarName]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TovarName](
	[TovarNameID] [int] IDENTITY(1,1) NOT NULL,
	[TovarName] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TovarNameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserInfo] [int] NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 09.04.2023 12:47:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserInfoID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Общестроительные материалы')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Стеновые и фасадные материалы')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Сухие строительные смеси и гидроизоляция')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Ручной инструмент')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Защита лица, глаз, головы')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityID], [CityName]) VALUES (1, N' Сыктывкар')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'М500')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Изостронг')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'Knauf')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'MixMaster')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'ЛСР')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (7, N'Vinylon')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (8, N'Павловский завод ')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (9, N'Weber')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (10, N'Hesler')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (11, N'Armero')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (14, N'Исток')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (15, N'RUIZ')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (17, N'Delta')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (1, 1, N'PMEZMH, 2, BPV4MM, 2', CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, NULL, 701, 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (2, 2, N'JVL42J, 15, F895RB, 15', CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 14, NULL, 702, 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (3, 3, N'3XBOTN, 13, 3L7RCZ, 17', CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 22, 9, 703, 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (4, 4, N'2G3280, 40, MIO8YV, 100', CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 22, NULL, 704, 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (5, 5, N'UER2QD, 100, ZR70B4, 100', CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 26, 8, 705, 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (6, 6, N'LPDDM4, 20, LQ48MW, 20', CAST(N'2022-05-20T00:00:00.000' AS DateTime), CAST(N'2022-05-26T00:00:00.000' AS DateTime), 28, NULL, 706, 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (7, 7, N'O43COU, 50, M26EXW, 50', CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 28, 10, 707, 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (8, 8, N'K0YACK, 40, ASPXSG, 40', CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 32, NULL, 708, 2)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (9, 9, N'4WZEOT, 10, 4JR1HN, 10', CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-29T00:00:00.000' AS DateTime), 36, NULL, 709, 1)
INSERT [dbo].[Order] ([OrderID], [OrderNumber], [OrderNontents], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderInfo], [OrderCodeToObtain], [OrderStatus]) VALUES (10, 10, N'QHNOKR, 1, EQ6RKO, 1', CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 36, 7, 710, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (1, 344288, 1, 1, 1)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (2, 614164, 1, 2, 30)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (3, 394242, 1, 3, 43)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (4, 660540, 1, 4, 25)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (5, 125837, 1, 5, 40)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (6, 125703, 1, 6, 49)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (7, 625283, 1, 7, 46)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (8, 614611, 1, 8, 50)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (9, 454311, 1, 9, 19)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (10, 660007, 1, 10, 19)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (11, 603036, 1, 11, 4)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (12, 450983, 1, 12, 26)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (13, 394782, 1, 1, 3)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (14, 603002, 1, 13, 28)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (15, 450558, 1, 14, 30)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (16, 394060, 1, 15, 43)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (17, 410661, 1, 16, 50)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (18, 625590, 1, 3, 20)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (19, 625683, 1, 17, 0)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (20, 400562, 1, 18, 32)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (21, 614510, 1, 19, 47)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (22, 410542, 1, 20, 46)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (23, 620839, 1, 21, 8)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (24, 443890, 1, 3, 1)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (25, 603379, 1, 22, 46)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (26, 603721, 1, 23, 41)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (27, 410172, 1, 24, 13)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (28, 420151, 1, 25, 32)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (29, 125061, 1, 26, 8)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (30, 630370, 1, 5, 24)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (31, 614753, 1, 27, 35)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (32, 426030, 1, 19, 44)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (33, 450375, 1, 28, 44)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (34, 625560, 1, 29, 12)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (35, 630201, 1, 12, 17)
INSERT [dbo].[PickupPoint] ([PickupPointID], [IndexPickupPoint], [City], [Street], [House]) VALUES (36, 190949, 1, 30, 26)
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'0YGHZ7', 30, 1, CAST(700.0000 AS Decimal(19, 4)), 9, 5, 9, 36, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'2G3280', 8, 1, CAST(795.0000 AS Decimal(19, 4)), 16, 2, 9, 20, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'3L7RCZ', 6, 1, CAST(7400.0000 AS Decimal(19, 4)), 7, 2, 2, 20, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'3XBOTN', 5, 1, CAST(110.0000 AS Decimal(19, 4)), 14, 1, 5, 21, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'4JR1HN', 20, 1, CAST(26.0000 AS Decimal(19, 4)), 3, 4, 6, 7, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'4WZEOT', 19, 1, CAST(110.0000 AS Decimal(19, 4)), 2, 4, 6, 17, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'61PGH3', 24, 1, CAST(184.0000 AS Decimal(19, 4)), 2, 5, 6, 25, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'81F1WG', 29, 1, CAST(1500.0000 AS Decimal(19, 4)), 1, 5, 2, 13, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'83M5ME', 23, 1, CAST(122.0000 AS Decimal(19, 4)), 16, 4, 9, 26, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'ASPXSG', 17, 1, CAST(711.0000 AS Decimal(19, 4)), 17, 3, 10, 20, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'BPV4MM', 2, 1, CAST(8.0000 AS Decimal(19, 4)), 13, 1, 8, 2, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'EQ6RKO', 28, 1, CAST(36.0000 AS Decimal(19, 4)), 17, 5, 3, 22, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'F895RB', 4, 1, CAST(102.0000 AS Decimal(19, 4)), 17, 1, 6, 7, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'GN6ICZ', 25, 1, CAST(154.0000 AS Decimal(19, 4)), 10, 5, 6, 8, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'I6MH89', 22, 1, CAST(326.0000 AS Decimal(19, 4)), 12, 4, 6, 3, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'JVL42J', 3, 1, CAST(13.0000 AS Decimal(19, 4)), 1, 1, 4, 34, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'K0YACK', 16, 1, CAST(160.0000 AS Decimal(19, 4)), 9, 3, 8, 19, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'LPDDM4', 12, 1, CAST(500.0000 AS Decimal(19, 4)), 17, 3, 6, 38, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'LQ48MW', 13, 1, CAST(462.0000 AS Decimal(19, 4)), 16, 3, 6, 33, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'M26EXW', 15, 1, CAST(340.0000 AS Decimal(19, 4)), 8, 3, 8, 2, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'MIO8YV', 9, 1, CAST(30.0000 AS Decimal(19, 4)), 9, 2, 9, 31, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'O43COU', 14, 1, CAST(750.0000 AS Decimal(19, 4)), 9, 3, 1, 16, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'PMEZMH', 1, 1, CAST(440.0000 AS Decimal(19, 4)), 10, 1, 8, 34, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'QHNOKR', 27, 1, CAST(251.0000 AS Decimal(19, 4)), 6, 5, 2, 22, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'S72AM3', 7, 1, CAST(500.0000 AS Decimal(19, 4)), 9, 2, 5, 35, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'UER2QD', 10, 1, CAST(25.0000 AS Decimal(19, 4)), 20, 2, 8, 27, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'Z3LO0U', 26, 1, CAST(228.0000 AS Decimal(19, 4)), 19, 5, 9, 11, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'Z3XFSP', 21, 1, CAST(63.0000 AS Decimal(19, 4)), 19, 4, 8, 5, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'ZKQ5FF', 18, 1, CAST(65.0000 AS Decimal(19, 4)), 13, 4, 6, 6, NULL)
INSERT [dbo].[Product] ([ProductArticle], [ProductTovar], [ProductMeasurementUnit], [ProductCost], [ProductMaximumDiscountAmount], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductPhoto]) VALUES (N'ZR70B4', 11, 1, CAST(16.0000 AS Decimal(19, 4)), 3, 2, 3, 26, NULL)
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (1, N'М500')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (2, N'Изостронг')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (3, N'Knauf')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (4, N'MixMaster')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (5, N'ЛСР')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (6, N'ВОЛМА')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (7, N'Vinylon')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (8, N'Павловский завод')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (9, N'Weber')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (10, N'Hesler')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (11, N'Armero')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (12, N'Wenzo Roma')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (13, N'KILIMGRIN')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (14, N'Исток')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (15, N'RUIZ')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (16, N'Husqvarna')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (17, N'Delta')
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор
')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер ')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (1, N'Завершен')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (2, N'Новый')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (1, N' ул. Чехова')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (2, N'  ул. Степная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (3, N' ул. Коммунистическая')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (4, N' ул. Солнечная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (5, N' ул. Шоссейная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (6, N' ул. Партизанская')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (7, N' ул. Победы')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (8, N' ул. Молодежная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (9, N' ул. Новая')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (10, N' ул. Октябрьская')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (11, N' ул. Садовая')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (12, N' ул. Комсомольская')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (13, N' ул. Дзержинского')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (14, N' ул. Набережная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (15, N' ул. Фрунзе')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (16, N' ул. Школьная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (17, N' ул. 8 Марта')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (18, N' ул. Зеленая')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (19, N' ул. Маяковского')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (20, N' ул. Светлая')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (21, N' ул. Цветочная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (22, N' ул. Спортивная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (23, N' ул. Гоголя')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (24, N' ул. Северная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (25, N' ул. Вишневая')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (26, N' ул. Подгорная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (27, N' ул. Полевая')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (28, N'ул. Клубная')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (29, N' ул. Некрасова')
INSERT [dbo].[Street] ([StreetID], [StreetName]) VALUES (30, N' ул. Мичурина')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Tovar] ON 

INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (1, 1, 1, 1, N'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (2, 2, 2, 2, N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (3, 2, 2, 2, N'Пленка техническая полиэтиленовая Изостронг 100 мк 3 м рукав 1,5 м, пог.м')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (4, 3, 3, 3, N'Песок строительный 50 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (5, 4, 4, 4, N'Керамзит фракция 10-20 мм 0,05 куб.м')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (6, 5, 5, 5, N'Газобетон ЛСР 100х250х625 мм D400')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (7, 6, 6, 6, N'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (8, 7, 7, 7, N'Угол наружный Vinylon 3050 мм серо-голубой')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (9, 8, 6, 6, N'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (10, 9, 7, 7, N'Скоба для пазогребневой плиты Knauf С1 120х100 мм')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (11, 8, 8, 8, N'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (12, 10, 7, 7, N'Штукатурка гипсовая Knauf Ротбанд 30 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (13, 10, 9, 9, N'Штукатурка гипсовая Knauf МП-75 машинная 30 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (14, 11, 6, 6, N'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (15, 12, 3, 3, N'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (16, 13, 4, 4, N'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (17, 14, 9, 9, N'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (18, 15, 10, 10, N'Лезвие для ножа Hesler 18 мм прямое (10 шт.)')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (19, 15, 11, 11, N'Лезвие для ножа Armero 18 мм прямое (10 шт.)')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (20, 16, 10, 10, N'Шпатель малярный 100 мм с пластиковой ручкой')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (21, 17, 10, 10, N'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (22, 18, 12, 12, N'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (23, 19, 11, 11, N'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (24, 20, 13, 13, N'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (25, 21, 14, 14, N'Каска защитная Исток (КАС001О) оранжевая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (26, 20, 15, 15, N'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (27, 22, 14, 14, N'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (28, 23, 16, 16, N'Подшлемник для каски одноразовый')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (29, 21, 17, 17, N'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая')
INSERT [dbo].[Tovar] ([TovarID], [TovarName], [TovarManufacturer], [TovarProvider], [TovarDescription]) VALUES (30, 20, 16, 16, N'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами')
SET IDENTITY_INSERT [dbo].[Tovar] OFF
GO
SET IDENTITY_INSERT [dbo].[TovarName] ON 

INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (1, N'Цемент')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (2, N'Пленка техническая')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (3, N'Песок строительный')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (4, N'Керамзит фракция')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (5, N'Газобетон')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (6, N'Пазогребневая плита ')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (7, N'Угол наружный')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (8, N'Кирпич')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (9, N'Скоба для пазогребневой плиты')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (10, N'Штукатурка гипсовая')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (11, N'Шпаклевка')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (12, N'Клей для плитки, керамогранита и камня')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (13, N'Смесь цементно-песчаная')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (14, N'Ровнитель')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (15, N'Лезвие для ножа ')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (16, N'Шпатель')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (17, N'Нож строительный ')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (18, N'Валик')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (19, N'Кисть')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (20, N'Очки защитные')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (21, N'Каска защитная ')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (22, N'Маска защитная')
INSERT [dbo].[TovarName] ([TovarNameID], [TovarName]) VALUES (23, N'Подшлемник')
SET IDENTITY_INSERT [dbo].[TovarName] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (1, N'шт')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (1, 1, N'klh7pi4rcbtz@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (2, 2, N'gn0354mbiork@outlook.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (3, 3, N'1o4l05k8dwpv@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (4, 4, N'hsqixl2vebuz@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (5, 5, N'towkse0hf26b@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (6, 6, N'khx0ncdwz4uj@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (7, 7, N'01zji3wfuq7h@outlook.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (8, 8, N'am65k18q7bwp@mail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (9, 9, N'wt9q8i6ypx47@outlook.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserInfo], [UserLogin], [UserPassword], [UserRole]) VALUES (10, 10, N'4o72gufv3xlz@tutanota.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (1, N'Басова', N'Амина', N'Кирилловна')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (2, N'Михайлов', N'Андрей', N'Денисович')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (3, N'Сидоров', N'Егор', N'Александрович')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (4, N'Аксенова', N'Ульяна', N'Ивановна')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (5, N'Васильева', N'Камила', N'Ивановна')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (6, N'Ильин', N'Артём', N'Родионович')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (7, N'Васильева', N'Василиса', N'Фёдоровна')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (8, N'Кудрявцева', N'Василиса', N'Матвеевна')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (9, N'Кириллова', N'Николь', N'Святославовна')
INSERT [dbo].[UserInfo] ([UserInfoID], [UserSurname], [UserName], [UserPatronymic]) VALUES (10, N'Андреева', N'Полина', N'Артёмовна')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderInfo])
REFERENCES [dbo].[UserInfo] ([UserInfoID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([PickupPointID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticle])
REFERENCES [dbo].[Product] ([ProductArticle])
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD FOREIGN KEY([Street])
REFERENCES [dbo].[Street] ([StreetID])
GO
ALTER TABLE [dbo].[PickupPoint]  WITH CHECK ADD FOREIGN KEY([City])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductTovar])
REFERENCES [dbo].[Tovar] ([TovarID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductMeasurementUnit])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD FOREIGN KEY([TovarManufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD FOREIGN KEY([TovarName])
REFERENCES [dbo].[TovarName] ([TovarNameID])
GO
ALTER TABLE [dbo].[Tovar]  WITH CHECK ADD FOREIGN KEY([TovarProvider])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserInfo])
REFERENCES [dbo].[UserInfo] ([UserInfoID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
USE [master]
GO
ALTER DATABASE [TradeDB] SET  READ_WRITE 
GO

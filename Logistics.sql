USE [master]
GO
/****** Object:  Database [AntExpress]    Script Date: 2018/6/11 13:33:47 ******/
CREATE DATABASE [AntExpress]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AntExpress', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AntExpress.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AntExpress_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AntExpress_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AntExpress] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AntExpress].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AntExpress] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AntExpress] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AntExpress] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AntExpress] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AntExpress] SET ARITHABORT OFF 
GO
ALTER DATABASE [AntExpress] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AntExpress] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AntExpress] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AntExpress] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AntExpress] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AntExpress] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AntExpress] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AntExpress] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AntExpress] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AntExpress] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AntExpress] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AntExpress] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AntExpress] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AntExpress] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AntExpress] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AntExpress] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AntExpress] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AntExpress] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AntExpress] SET RECOVERY FULL 
GO
ALTER DATABASE [AntExpress] SET  MULTI_USER 
GO
ALTER DATABASE [AntExpress] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AntExpress] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AntExpress] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AntExpress] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AntExpress', N'ON'
GO
USE [AntExpress]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2018/6/11 13:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] NOT NULL,
	[pwd] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Areas]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[RID] [int] NOT NULL,
	[Province] [nvarchar](20) NOT NULL,
	[City] [nvarchar](20) NOT NULL,
	[District] [nvarchar](20) NOT NULL,
	[PostCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DeId] [int] NOT NULL,
	[EDepartment] [nvarchar](20) NULL,
	[Other] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiapatchBillInfo]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiapatchBillInfo](
	[DID] [int] NOT NULL,
	[SenderName] [nvarchar](10) NOT NULL,
	[SenderAddress] [nvarchar](20) NOT NULL,
	[SenderPhone] [nvarchar](20) NOT NULL,
	[ConsigneeName] [nvarchar](4) NOT NULL,
	[ConsigneeAddress] [nvarchar](20) NOT NULL,
	[ConsigneePhone] [nvarchar](20) NOT NULL,
	[Number] [int] NOT NULL,
	[Other] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[DID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeesInfo]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeesInfo](
	[Eid] [int] NOT NULL,
	[EName] [nvarchar](20) NULL,
	[EPwd] [nvarchar](35) NULL,
	[EQuestion] [nvarchar](20) NULL,
	[EAnswer] [nvarchar](20) NULL,
	[EGender] [nvarchar](4) NULL,
	[EDepartment] [nvarchar](20) NULL,
	[EOccupation] [nvarchar](20) NULL,
	[EPhone] [nvarchar](20) NULL,
	[ESalary] [money] NULL,
	[EMail] [varchar](20) NULL,
	[EKey] [int] NULL,
 CONSTRAINT [PK__Employee__C1971B53AB7BB9CC] PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NormalBillInfo]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalBillInfo](
	[NID] [int] NOT NULL,
	[DID] [int] NOT NULL,
	[Other] [nvarchar](20) NULL,
	[PickupTime] [date] NOT NULL,
 CONSTRAINT [PK__NormalBi__C7DEC333ADB960C9] PRIMARY KEY CLUSTERED 
(
	[NID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occupations]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occupations](
	[OId] [int] NOT NULL,
	[EOccupation] [nvarchar](20) NULL,
	[Other] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[OId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Saff]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Saff](
	[SID] [int] NOT NULL,
	[SName] [nvarchar](20) NULL,
	[SGender] [nvarchar](20) NULL,
	[SPhone] [nvarchar](20) NULL,
	[SEmail] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkBillInfo]    Script Date: 2018/6/11 13:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkBillInfo](
	[WID] [int] NOT NULL,
	[NID] [int] NOT NULL,
	[Saff] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([id], [pwd]) VALUES (11111, N'admin')
INSERT [dbo].[Areas] ([RID], [Province], [City], [District], [PostCode]) VALUES (1, N'山东', N'青岛', N'青岛大学', 260000)
INSERT [dbo].[Areas] ([RID], [Province], [City], [District], [PostCode]) VALUES (3, N'山东', N'济南', N'泉城广场', 250000)
INSERT [dbo].[Areas] ([RID], [Province], [City], [District], [PostCode]) VALUES (5, N'山东', N'济南', N'济南大学', 250000)
INSERT [dbo].[Areas] ([RID], [Province], [City], [District], [PostCode]) VALUES (10, N'山东', N'烟台', N'烟台', 270000)
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (1, N'总经办', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (2, N'财务部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (3, N'行政部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (4, N'策划部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (5, N'人事部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (6, N'市场部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (7, N'采购部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (8, N'派送部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (9, N'宣传部', N'无')
INSERT [dbo].[Departments] ([DeId], [EDepartment], [Other]) VALUES (10, N'组织部', N'无')
INSERT [dbo].[DiapatchBillInfo] ([DID], [SenderName], [SenderAddress], [SenderPhone], [ConsigneeName], [ConsigneeAddress], [ConsigneePhone], [Number], [Other]) VALUES (1233322, N'柴进', N'河北省沧州市运河区解放路39号', N'13888888888', N'林冲', N'河南省焦作市张督监府鸳鸯楼地下室', N'13667896789', 1, N'管制刀具')
INSERT [dbo].[DiapatchBillInfo] ([DID], [SenderName], [SenderAddress], [SenderPhone], [ConsigneeName], [ConsigneeAddress], [ConsigneePhone], [Number], [Other]) VALUES (1456789, N'张顺', N'安徽省安庆市宿松县长江中', N'15566566666', N'史进', N'陕西省渭南市华阴县史家村村长家', N'18888888888', 6, N'生鲜速达')
INSERT [dbo].[DiapatchBillInfo] ([DID], [SenderName], [SenderAddress], [SenderPhone], [ConsigneeName], [ConsigneeAddress], [ConsigneePhone], [Number], [Other]) VALUES (1654644, N'张青', N'河南省焦作市孟州道光明寺', N'12365456416', N'孙二娘', N'河南省焦作市孟州道十字坡酒店', N'16597777777', 10, N'青菜')
INSERT [dbo].[DiapatchBillInfo] ([DID], [SenderName], [SenderAddress], [SenderPhone], [ConsigneeName], [ConsigneeAddress], [ConsigneePhone], [Number], [Other]) VALUES (1654874, N'公孙胜', N'河南省南乐县西邵乡雾化营村黄泥岗', N'12355446999', N'吴用', N'山东省济宁市梁山县梁山风景区办公室', N'15666666666', 1, N'贵金属')
INSERT [dbo].[DiapatchBillInfo] ([DID], [SenderName], [SenderAddress], [SenderPhone], [ConsigneeName], [ConsigneeAddress], [ConsigneePhone], [Number], [Other]) VALUES (2188776, N'卢俊义', N'河北省大名县大名镇大名府', N'12366666666', N'时迁', N'浙江省上虞市丰惠镇祝家庄和平饭店', N'13756666666', 2, N'包袱')
INSERT [dbo].[DiapatchBillInfo] ([DID], [SenderName], [SenderAddress], [SenderPhone], [ConsigneeName], [ConsigneeAddress], [ConsigneePhone], [Number], [Other]) VALUES (2346565, N'李逵', N'山东省临沂市沂水县百丈村1号', N'17888888888', N'柴进', N'山东省高唐县聊城市公安局牢房看守', N'12012012012', 2, N'绳子')
INSERT [dbo].[DiapatchBillInfo] ([DID], [SenderName], [SenderAddress], [SenderPhone], [ConsigneeName], [ConsigneeAddress], [ConsigneePhone], [Number], [Other]) VALUES (5879847, N'武松', N'山东省聊城市阳谷县张秋镇景阳冈', N'13999999999', N'吴用', N'山东省济宁市梁山县梁山风景区办公室', N'12333333333', 1, N'虎皮')
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (201, N'卢俊义', N'123456', NULL, N'高级', N'女', N'总经办', N'派送员', N'17186457810', 1000000.0000, N'5674896@126.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (301, N'吴用', N'123456', N'无', N'普通', N'男', N'人事部', N'HR', N'17564542084', 900000.0000, N'54568972@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (401, N'公孙胜', N'123456', N'无', N'普通', N'男', N'人事部', N'HR', N'13698987878', 800000.0000, N'549/7964@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (501, N'关胜', N'123456', N'无', N'普通', N'男', N'财务部', N'会计', N'12354645654', 700000.0000, N'14654446@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (601, N'林冲', N'123456', N'无', N'普通', N'男', N'财务部', N'会计', N'15467878678', 700000.0000, N'464464@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (701, N'秦明', N'123456', N'无', N'普通', N'男', N'财务部', N'会计', N'14867867654', 600000.0000, N'516541@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (801, N'延灼', N'123456', N'无', N'普通', N'男', N'组织部', N'组织委员', N'27864645646', 600000.0000, N'897498798@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (901, N'花荣', N'123456', N'无', N'普通', N'男', N'组织部', N'组织员', N'18797896797', 500000.0000, N'6454998@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1001, N'柴进', N'123456', N'无', N'普通', N'男', N'组织部', N'组织员', N'19776767677', 500000.0000, N'5468947@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1101, N'李应', N'123456', N'无', N'普通', N'男', N'宣传部', N'宣传部长', N'18976756766', 500000.0000, N'648979@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1201, N'朱仝', N'123456', N'无', N'普通', N'男', N'宣传部', N'宣传员', N'13758793732', 500000.0000, N'49879@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1301, N'鲁智深', N'123456', N'无', N'普通', N'男', N'行政部', N'行政部长', N'12378765786', 500000.0000, N'549898@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1401, N'武松', N'123456', N'无', N'普通', N'男', N'行政部', N'参谋长', N'12378757858', 500000.0000, N'649844@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1501, N'董平', N'123456', N'无', N'普通', N'男', N'市场部', N'司机', N'15785767357', 500000.0000, N'65418947@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1601, N'张清', N'123456', N'无', N'普通', N'男', N'采购部', N'保安', N'18899897957', 500000.0000, N'146847964@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1701, N'杨志', N'123456', N'无', N'普通', N'男', N'采购部', N'门卫', N'17869797896', 500000.0000, N'16546446@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1801, N'徐宁', N'123456', N'无', N'普通', N'男', N'策划部', N'保洁', N'17897467867', 500000.0000, N'14654987498@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (1901, N'索超', N'123456', N'无', N'普通', N'男', N'策划部', N'派送员', N'12786768766', 500000.0000, N'16548464@qq.com', NULL)
INSERT [dbo].[EmployeesInfo] ([Eid], [EName], [EPwd], [EQuestion], [EAnswer], [EGender], [EDepartment], [EOccupation], [EPhone], [ESalary], [EMail], [EKey]) VALUES (2001, N'戴宗', N'123456', N'无', N'普通', N'男', N'策划部', N'派送员', N'13687857867', 500000.0000, N'56548974984@qq.com', NULL)
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (101, 1213441, N'防护手套', CAST(0x2E3E0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (102, 1233322, N'管制刀具', CAST(0x2F3E0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (103, 2346565, N'绳子', CAST(0x303E0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (104, 5879847, N'虎皮', CAST(0x4D3E0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (105, 2018060, N'速效解酒药', CAST(0x4E3E0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (106, 2188776, N'包袱', CAST(0xE23C0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (107, 1456789, N'生鲜速达', CAST(0xE23C0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (108, 1654644, N'青菜', CAST(0xE33C0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (109, 1654874, N'贵金属', CAST(0xF53C0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (110, 514964, NULL, CAST(0xF63C0B00 AS Date))
INSERT [dbo].[NormalBillInfo] ([NID], [DID], [Other], [PickupTime]) VALUES (111, 546412, NULL, CAST(0xF83C0B00 AS Date))
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (1, N'总经理', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (2, N'派送员', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (3, N'HR', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (4, N'保洁', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (5, N'会计', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (8, N'组织委员', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (10, N'组织员', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (11, N'宣传部长', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (12, N'宣传员', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (13, N'行政部长', N'无')
INSERT [dbo].[Occupations] ([OId], [EOccupation], [Other]) VALUES (14, N'参谋长', N'无')
INSERT [dbo].[Saff] ([SID], [SName], [SGender], [SPhone], [SEmail]) VALUES (101, N'李荣浩', N'男', N'18986785406', N'123548@qq.com')
INSERT [dbo].[Saff] ([SID], [SName], [SGender], [SPhone], [SEmail]) VALUES (102, N'许嵩', N'男', N'17806284653', N'2034526@126.com')
INSERT [dbo].[Saff] ([SID], [SName], [SGender], [SPhone], [SEmail]) VALUES (103, N'周杰伦', N'男', N'17650245603', N'023154@qq.com')
INSERT [dbo].[Saff] ([SID], [SName], [SGender], [SPhone], [SEmail]) VALUES (105, N'诺威', N'男', N'17856542356', N'1023456@qq.com')
INSERT [dbo].[WorkBillInfo] ([WID], [NID], [Saff]) VALUES (101, 101, N'周杰伦')
USE [master]
GO
ALTER DATABASE [AntExpress] SET  READ_WRITE 
GO

USE [A01_RT03]
GO
/****** Object:  Table [dbo].[Announce]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announce](
	[idAnn] [nchar](10) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[datePost] [datetime] NOT NULL,
	[titleAnn] [nvarchar](50) NOT NULL,
	[contentAnn] [nchar](1000) NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Announce] PRIMARY KEY CLUSTERED 
(
	[idAnn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child](
	[idChild] [nchar](10) NOT NULL,
	[childName] [nvarchar](50) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [char](1) NOT NULL,
	[progress] [nvarchar](500) NOT NULL,
	[weight] [real] NOT NULL,
	[height] [int] NOT NULL,
	[health] [nvarchar](500) NOT NULL,
	[imgAvt] [nchar](20) NULL,
 CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED 
(
	[idChild] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChildCours]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildCours](
	[idChildCour] [nchar](10) NOT NULL,
	[idSkillCours] [nchar](10) NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[dateStart] [datetime] NULL,
	[dateEnd] [datetime] NULL,
	[name] [nchar](10) NULL,
	[TotalSeat] [int] NULL,
	[timeStart] [datetime] NULL,
	[timeEnd] [datetime] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_ChildCours] PRIMARY KEY CLUSTERED 
(
	[idChildCour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[idFeedBack] [nchar](10) NOT NULL,
	[idParent] [nchar](10) NOT NULL,
	[contentFeedback] [nvarchar](500) NULL,
	[rate] [int] NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[date] [date] NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[idFeedBack] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeeList]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeeList](
	[idFeeList] [nchar](10) NOT NULL,
	[nameFee] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_FeeList] PRIMARY KEY CLUSTERED 
(
	[idFeeList] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proposal]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proposal](
	[idProposal] [nchar](10) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[title] [nvarchar](500) NULL,
	[contentProposal] [nvarchar](1000) NOT NULL,
	[timeStart] [datetime] NOT NULL,
	[timeEnd] [datetime] NOT NULL,
	[accept] [int] NOT NULL,
	[status] [nchar](10) NULL,
	[totalVote] [int] NOT NULL,
 CONSTRAINT [PK_Proposal] PRIMARY KEY CLUSTERED 
(
	[idProposal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryList]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryList](
	[idSalary] [nchar](10) NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[salary] [int] NOT NULL,
	[dateStart] [date] NOT NULL,
	[dateEnd] [date] NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_SalaryList] PRIMARY KEY CLUSTERED 
(
	[idSalary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillClass]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillClass](
	[idClass] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NULL,
	[idChildCour] [nchar](10) NULL,
	[idTeacher] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_SkillClass] PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillCours]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillCours](
	[idSkillCour] [nchar](10) NOT NULL,
	[skillName] [nvarchar](50) NOT NULL,
	[priceSkillCour] [int] NOT NULL,
 CONSTRAINT [PK_SkillCours] PRIMARY KEY CLUSTERED 
(
	[idSkillCour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tuition]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tuition](
	[idTuition] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NOT NULL,
	[idFee] [nchar](10) NOT NULL,
	[tuition] [nchar](1) NOT NULL,
	[date] [date] NOT NULL,
	[dateStart] [date] NOT NULL,
	[dateEnd] [date] NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Tuition] PRIMARY KEY CLUSTERED 
(
	[idTuition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [nchar](10) NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [char](1) NOT NULL,
	[email] [nchar](150) NULL,
	[phoneNumber] [varchar](10) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role] [nchar](10) NULL,
	[idChild] [nchar](10) NULL,
	[certicate] [nvarchar](50) NULL,
	[imgAvt] [nchar](30) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserVote]    Script Date: 6/10/2023 1:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserVote](
	[idVote] [nchar](10) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[vote] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[idProposal] [nchar](10) NOT NULL,
 CONSTRAINT [PK_UserVote] PRIMARY KEY CLUSTERED 
(
	[idVote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'brz8598192', N'De1600    ', CAST(N'2023-06-09T11:03:34.280' AS DateTime), N'second', N'hihii                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'fcv5254668', N'De1600    ', CAST(N'2023-06-09T11:00:49.447' AS DateTime), N'first Ann', N'hihihh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'fnf6374158', N'De1600    ', CAST(N'2023-06-09T11:00:28.153' AS DateTime), N'First Ann', N'hihihi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'ipp1368547', N'De1600    ', CAST(N'2023-06-09T11:04:36.950' AS DateTime), N'three', N'11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'mgj4475134', N'De1600    ', CAST(N'2023-06-09T11:09:53.620' AS DateTime), N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'mva4546249', N'De1600    ', CAST(N'2023-06-09T11:00:12.323' AS DateTime), N'First Ann', N'hihihi                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'qns5284876', N'De1600    ', CAST(N'2023-06-09T11:04:52.987' AS DateTime), N'three', N'11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'qvz8473736', N'De1600    ', CAST(N'2023-06-09T11:02:38.503' AS DateTime), N'first Ann', N'hihihh                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'xsn8271682', N'De1600    ', CAST(N'2023-06-09T11:04:45.190' AS DateTime), N'three', N'11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'yej2835675', N'De1600    ', CAST(N'2023-06-09T11:09:59.767' AS DateTime), N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'          ')
INSERT [dbo].[Announce] ([idAnn], [idUser], [datePost], [titleAnn], [contentAnn], [status]) VALUES (N'ztv6264282', N'De1600    ', CAST(N'2023-06-09T11:04:06.767' AS DateTime), N'second', N'hihii                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', N'          ')
GO
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'anv5892744', N'Con Ba', N'De1600    ', CAST(N'2021-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'c111      ', N'nam', N'lfl1639127', CAST(N'2018-07-09' AS Date), N'M', N'3', 20, 15, N'g', N'post-1.jpg          ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'dde1395869', N'Con Hai', N'De1600    ', CAST(N'2022-06-08' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'dic4354647', N'Long', N'pov3386762', CAST(N'2023-06-15' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'jym5461677', N'Hi', N'De1600    ', CAST(N'2023-06-02' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'mvi5471823', N'Long', N'lfl1639127', CAST(N'2019-02-09' AS Date), N'M', N'NULL', 0, 0, N'g', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'nbi2834983', N'Long', N'pov3386762', CAST(N'2023-06-15' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'qvh7837354', N'Con Bon', N'De1600    ', CAST(N'2021-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'rtr4611554', N'Con Viet', N'pov3386762', CAST(N'2020-06-09' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'tbq3316451', N'Con Hai', N'De1600    ', CAST(N'2022-06-08' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'tcz3342611', N'Con Ba', N'De1600    ', CAST(N'2021-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'tgf6871941', N'Long', N'pov3386762', CAST(N'2023-06-14' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'vlk6558366', N'Con Nam', N'De1600    ', CAST(N'2022-06-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'xid3954242', N'Con Y', N'De1600    ', CAST(N'2022-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ')
GO
INSERT [dbo].[ChildCours] ([idChildCour], [idSkillCours], [idTeacher], [dateStart], [dateEnd], [name], [TotalSeat], [timeStart], [timeEnd], [Status]) VALUES (N'Cc22      ', N'd002      ', N'lul7789124', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-19T00:00:00.000' AS DateTime), N'A         ', 40, CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'regist    ')
INSERT [dbo].[ChildCours] ([idChildCour], [idSkillCours], [idTeacher], [dateStart], [dateEnd], [name], [TotalSeat], [timeStart], [timeEnd], [Status]) VALUES (N'Dcc11     ', N'd001      ', N'pov3386762', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'C         ', 39, CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-01T00:00:00.000' AS DateTime), N'accept    ')
GO
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'att3596134', N'De1600    ', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', CAST(N'2023-06-09T20:54:29.390' AS DateTime), CAST(N'2023-06-16T20:54:29.390' AS DateTime), 8, N'active    ', 10)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'dqo9253441', N'De1600    ', N'check Vote', N'hihihi', CAST(N'2023-06-10T00:52:34.343' AS DateTime), CAST(N'2023-06-17T00:52:34.343' AS DateTime), 1, N'active    ', 2)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'mcd7959925', N'De1600    ', N'First Proposal', N'Writing a good proposal is a critical skill in many occupations, from school to business management to geology. The goal of a proposal is to gain support for your plan by informing the appropriate people. Your ideas or suggestions are more likely to be approved if you can communicate them in a clear, concise, engaging manner. Knowing how to write a persuasive, captivating proposal is essential for success in many fields. There are several types of proposals, such as science proposals and book proposals, but each following the same basic guidelines.
', CAST(N'2023-06-08T12:58:59.823' AS DateTime), CAST(N'2023-06-15T12:58:59.823' AS DateTime), 4, N'active    ', 5)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'ptp4326283', N'De1600    ', N'Lan Dao', N'1223xdxzcxzczxczxczx', CAST(N'2023-06-08T21:55:59.817' AS DateTime), CAST(N'2023-06-15T21:55:59.817' AS DateTime), 0, N'active    ', 0)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'sgv3666386', N'pov3386762', N'p 2', N'hihihihi', CAST(N'2023-06-09T09:45:08.010' AS DateTime), CAST(N'2023-06-16T09:45:08.010' AS DateTime), 0, N'active    ', 0)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'uks5426429', N'pov3386762', N'Proposal cua Viet', N'Hi ae, Proposal cua Viet ', CAST(N'2023-06-08T22:41:57.867' AS DateTime), CAST(N'2023-06-15T22:41:57.867' AS DateTime), 3, N'active    ', 4)
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status], [totalVote]) VALUES (N'unq6314982', N'De1600    ', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', N'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', CAST(N'2023-06-09T20:54:25.117' AS DateTime), CAST(N'2023-06-16T20:54:25.117' AS DateTime), 1, N'active    ', 3)
GO
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'23hgg     ', N'mvi5471823', N'Cc22      ', N'lul7789124', N'S         ')
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'2bg1      ', N'mvi5471823', N'Dcc11     ', N'pov3386762', N'S         ')
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'34h1      ', N'c111      ', N'Dcc11     ', N'pov3386762', N'S         ')
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'nfr3957258', N'anv5892744', N'Dcc11     ', N'pov3386762', N'regist    ')
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'qes7192818', N'anv5892744', N'Cc22      ', N'lul7789124', N'regist    ')
GO
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'amq7614336', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'bqn8669611', N'1243', 12)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'd001      ', N'erobic', 1800000)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'd002      ', N'swim', 12437777)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'fle2256339', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'fxa6125932', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'hpi2992174', N'coures B', 12)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'inr6318972', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'uzd6473219', N'Math Logic', 100)
GO
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'dbt2464538', N'Dung', N'01 J', CAST(N'2002-02-02' AS Date), N'M', N'                                                                                                                                                      ', N'1234567890', N'12345', N'Parent    ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'De1600    ', N'Hoang Y Bui', N'01 Cam Le - Hoan Hai - Da Nang', CAST(N'2002-09-06' AS Date), N'M', N'hoangy@gmail.com                                                                                                                                      ', N'097544111', N'123456', N'Admin     ', N'D11       ', NULL, NULL)
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'lfl1639127', N'Hoang Y hai', N'Xuân Hòa', CAST(N'2002-01-25' AS Date), N'M', N'hoangyhai@gmail.com                                                                                                                                   ', N'0981456014', N'123456', N'Parent    ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'lul7789124', N'Nhi', N'01 IOO', CAST(N'2003-02-09' AS Date), N'F', N'nhi@gmail.com                                                                                                                                         ', N'123456789', N'12345', N'Parent    ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'pov3386762', N'Viet', N'01 Hoa', CAST(N'2002-02-01' AS Date), N'M', N'viet@gmail.com                                                                                                                                        ', N'0961103209', N'12345', N'Teacher   ', N'NULL      ', N'Null', N'team-2.jpg                    ')
GO
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'abc1234567', N'De1600    ', 1, CAST(N'2023-06-09T22:18:56.850' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'aem2454491', N'De1600    ', 1, CAST(N'2023-06-10T00:31:17.097' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'bct2624779', N'De1600    ', 1, CAST(N'2023-06-10T00:51:35.793' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'blx7586691', N'De1600    ', 1, CAST(N'2023-06-10T00:51:31.137' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'ecr6253258', N'De1600    ', 1, CAST(N'2023-06-10T00:32:28.137' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'fcp5749573', N'De1600    ', 0, CAST(N'2023-06-10T00:29:36.923' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'fpq1414215', N'De1600    ', 1, CAST(N'2023-06-10T00:30:18.590' AS DateTime), N'unq6314982')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'imz4444729', N'De1600    ', 1, CAST(N'2023-06-10T00:27:40.170' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'jhc4673588', N'De1600    ', 0, CAST(N'2023-06-10T00:30:28.640' AS DateTime), N'unq6314982')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'jko6239819', N'De1600    ', 0, CAST(N'2023-06-10T00:30:25.410' AS DateTime), N'unq6314982')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'lpm8464987', N'De1600    ', 0, CAST(N'2023-06-10T00:30:57.617' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'nhc9729864', N'De1600    ', 1, CAST(N'2023-06-10T00:23:13.760' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'ojx8853842', N'De1600    ', 0, CAST(N'2023-06-10T00:29:43.883' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'oxo4615987', N'De1600    ', 1, CAST(N'2023-06-10T00:31:12.960' AS DateTime), N'mcd7959925')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'ozz7987695', N'De1600    ', 1, CAST(N'2023-06-10T00:51:26.070' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'qei7864749', N'pov3386762', 0, CAST(N'2023-06-10T00:53:07.257' AS DateTime), N'dqo9253441')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'sif8485396', N'De1600    ', 1, CAST(N'2023-06-10T00:29:04.257' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'spz3113626', N'De1600    ', 1, CAST(N'2023-06-10T00:32:42.237' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'srn9749148', N'De1600    ', 1, CAST(N'2023-06-10T00:29:58.247' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'thz4461275', N'De1600    ', 1, CAST(N'2023-06-10T00:27:59.097' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'vbt6258329', N'De1600    ', 1, CAST(N'2023-06-10T00:29:48.400' AS DateTime), N'att3596134')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'yqr7183725', N'De1600    ', 0, CAST(N'2023-06-10T00:23:41.033' AS DateTime), N'uks5426429')
INSERT [dbo].[UserVote] ([idVote], [idUser], [vote], [date], [idProposal]) VALUES (N'zar3911298', N'De1600    ', 1, CAST(N'2023-06-10T00:52:42.780' AS DateTime), N'dqo9253441')
GO
ALTER TABLE [dbo].[Announce]  WITH CHECK ADD  CONSTRAINT [FK_Announce_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Announce] CHECK CONSTRAINT [FK_Announce_Users]
GO
ALTER TABLE [dbo].[Child]  WITH CHECK ADD  CONSTRAINT [FK_Child_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Child] CHECK CONSTRAINT [FK_Child_Users]
GO
ALTER TABLE [dbo].[ChildCours]  WITH CHECK ADD  CONSTRAINT [FK_ChildCours_SkillCours] FOREIGN KEY([idSkillCours])
REFERENCES [dbo].[SkillCours] ([idSkillCour])
GO
ALTER TABLE [dbo].[ChildCours] CHECK CONSTRAINT [FK_ChildCours_SkillCours]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Users] FOREIGN KEY([idParent])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Users]
GO
ALTER TABLE [dbo].[Proposal]  WITH CHECK ADD  CONSTRAINT [FK_Proposal_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Proposal] CHECK CONSTRAINT [FK_Proposal_Users]
GO
ALTER TABLE [dbo].[SalaryList]  WITH CHECK ADD  CONSTRAINT [FK_SalaryList_Users] FOREIGN KEY([idTeacher])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[SalaryList] CHECK CONSTRAINT [FK_SalaryList_Users]
GO
ALTER TABLE [dbo].[SkillClass]  WITH CHECK ADD  CONSTRAINT [FK_SkillClass_Child] FOREIGN KEY([idChild])
REFERENCES [dbo].[Child] ([idChild])
GO
ALTER TABLE [dbo].[SkillClass] CHECK CONSTRAINT [FK_SkillClass_Child]
GO
ALTER TABLE [dbo].[SkillClass]  WITH CHECK ADD  CONSTRAINT [FK_SkillClass_ChildCours] FOREIGN KEY([idChildCour])
REFERENCES [dbo].[ChildCours] ([idChildCour])
GO
ALTER TABLE [dbo].[SkillClass] CHECK CONSTRAINT [FK_SkillClass_ChildCours]
GO
ALTER TABLE [dbo].[Tuition]  WITH CHECK ADD  CONSTRAINT [FK_Tuition_Child] FOREIGN KEY([idChild])
REFERENCES [dbo].[Child] ([idChild])
GO
ALTER TABLE [dbo].[Tuition] CHECK CONSTRAINT [FK_Tuition_Child]
GO
ALTER TABLE [dbo].[Tuition]  WITH CHECK ADD  CONSTRAINT [FK_Tuition_FeeList] FOREIGN KEY([idFee])
REFERENCES [dbo].[FeeList] ([idFeeList])
GO
ALTER TABLE [dbo].[Tuition] CHECK CONSTRAINT [FK_Tuition_FeeList]
GO
ALTER TABLE [dbo].[UserVote]  WITH CHECK ADD  CONSTRAINT [FK_UserVote_Proposal] FOREIGN KEY([idProposal])
REFERENCES [dbo].[Proposal] ([idProposal])
GO
ALTER TABLE [dbo].[UserVote] CHECK CONSTRAINT [FK_UserVote_Proposal]
GO
ALTER TABLE [dbo].[UserVote]  WITH CHECK ADD  CONSTRAINT [FK_UserVote_Users] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[UserVote] CHECK CONSTRAINT [FK_UserVote_Users]
GO

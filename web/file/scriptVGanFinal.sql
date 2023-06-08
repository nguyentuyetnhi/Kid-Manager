USE [A01_RT03]
GO
/****** Object:  Table [dbo].[Announce]    Script Date: 6/8/2023 2:00:29 PM ******/
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
	[status] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Announce] PRIMARY KEY CLUSTERED 
(
	[idAnn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 6/8/2023 2:00:29 PM ******/
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
/****** Object:  Table [dbo].[ChildCours]    Script Date: 6/8/2023 2:00:29 PM ******/
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
	[Status] [nchar](4) NULL,
 CONSTRAINT [PK_ChildCours] PRIMARY KEY CLUSTERED 
(
	[idChildCour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 6/8/2023 2:00:29 PM ******/
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
/****** Object:  Table [dbo].[FeeList]    Script Date: 6/8/2023 2:00:29 PM ******/
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
/****** Object:  Table [dbo].[Proposal]    Script Date: 6/8/2023 2:00:29 PM ******/
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
 CONSTRAINT [PK_Proposal] PRIMARY KEY CLUSTERED 
(
	[idProposal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryList]    Script Date: 6/8/2023 2:00:29 PM ******/
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
/****** Object:  Table [dbo].[SkillClass]    Script Date: 6/8/2023 2:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillClass](
	[idClass] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NULL,
	[idChildCour] [nchar](10) NULL,
	[idTeacher] [nchar](10) NULL,
	[Status] [nchar](4) NULL,
 CONSTRAINT [PK_SkillClass] PRIMARY KEY CLUSTERED 
(
	[idClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillCours]    Script Date: 6/8/2023 2:00:29 PM ******/
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
/****** Object:  Table [dbo].[Tuition]    Script Date: 6/8/2023 2:00:29 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 6/8/2023 2:00:29 PM ******/
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
/****** Object:  Table [dbo].[UserVote]    Script Date: 6/8/2023 2:00:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserVote](
	[idUser] [nchar](10) NOT NULL,
	[vote] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[idProposal] [nchar](10) NOT NULL,
 CONSTRAINT [PK_UserVote] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'c111      ', N'nam', N'lfl1639127', CAST(N'2018-07-09' AS Date), N'M', N'3', 20, 15, N'g', N'post-1.jpg          ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'dic4354647', N'Long', N'pov3386762', CAST(N'2023-06-15' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'mvi5471823', N'Long', N'lfl1639127', CAST(N'2019-02-09' AS Date), N'M', N'NULL', 0, 0, N'g', NULL)
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'nbi2834983', N'Long', N'pov3386762', CAST(N'2023-06-15' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'tgf6871941', N'Long', N'pov3386762', CAST(N'2023-06-14' AS Date), N'M', N'NULL', 0, 0, N'NULL', N'NULL                ')
INSERT [dbo].[Child] ([idChild], [childName], [idUser], [dob], [gender], [progress], [weight], [height], [health], [imgAvt]) VALUES (N'xid3954242', N'Con Y', N'De1600    ', CAST(N'2022-02-08' AS Date), N'F', N'NULL', 0, 0, N'NULL', N'NULL                ')
GO
INSERT [dbo].[ChildCours] ([idChildCour], [idSkillCours], [idTeacher], [dateStart], [dateEnd], [name], [TotalSeat], [timeStart], [timeEnd], [Status]) VALUES (N'Cc22      ', N'd002      ', N'lul7789124', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-19T00:00:00.000' AS DateTime), N'A         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[ChildCours] ([idChildCour], [idSkillCours], [idTeacher], [dateStart], [dateEnd], [name], [TotalSeat], [timeStart], [timeEnd], [Status]) VALUES (N'Dcc11     ', N'd001      ', N'pov3386762', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-07-01T00:00:00.000' AS DateTime), N'C         ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Proposal] ([idProposal], [idUser], [title], [contentProposal], [timeStart], [timeEnd], [accept], [status]) VALUES (N'mcd7959925', N'De1600    ', N'First Proposal', N'Writing a good proposal is a critical skill in many occupations, from school to business management to geology. The goal of a proposal is to gain support for your plan by informing the appropriate people. Your ideas or suggestions are more likely to be approved if you can communicate them in a clear, concise, engaging manner. Knowing how to write a persuasive, captivating proposal is essential for success in many fields. There are several types of proposals, such as science proposals and book proposals, but each following the same basic guidelines.
', CAST(N'2023-06-08T12:58:59.823' AS DateTime), CAST(N'2023-06-15T12:58:59.823' AS DateTime), 0, N'active    ')
GO
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'23hgg     ', N'mvi5471823', N'Cc22      ', N'lul7789124', N'S   ')
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'2bg1      ', N'mvi5471823', N'Dcc11     ', N'pov3386762', N'S   ')
INSERT [dbo].[SkillClass] ([idClass], [idChild], [idChildCour], [idTeacher], [Status]) VALUES (N'34h1      ', N'c111      ', N'Dcc11     ', N'pov3386762', N'S   ')
GO
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'amq7614336', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'd001      ', N'erobic', 1800000)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'd002      ', N'swim', 12437777)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'fle2256339', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'fxa6125932', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'inr6318972', N'Math Logic', 100)
INSERT [dbo].[SkillCours] ([idSkillCour], [skillName], [priceSkillCour]) VALUES (N'uzd6473219', N'Math Logic', 100)
GO
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'dbt2464538', N'Dung', N'01 J', CAST(N'2002-02-02' AS Date), N'M', N'                                                                                                                                                      ', N'1234567890', N'12345', N'Parent    ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'De1600    ', N'Hoang Y', N'01 Cam Le', CAST(N'2002-09-06' AS Date), N'M', N'hoangy@gmail.com                                                                                                                                      ', N'097544111', N'123456', N'Admin     ', N'D11       ', NULL, NULL)
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'lfl1639127', N'Hoang Y hai', N'Xuân Hòa', CAST(N'2002-01-25' AS Date), N'M', N'hoangyhai@gmail.com                                                                                                                                   ', N'0981456014', N'123456', N'Parent    ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'lul7789124', N'Nhi', N'01 IOO', CAST(N'2003-02-09' AS Date), N'F', N'nhi@gmail.com                                                                                                                                         ', N'123456789', N'12345', N'Parent    ', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'pov3386762', N'Viet', N'01 Hoa', CAST(N'2002-02-01' AS Date), N'M', N'viet@gmail.com                                                                                                                                        ', N'0961103209', N'12345', N'Teacher   ', N'NULL      ', N'Null', N'team-2.jpg                    ')
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

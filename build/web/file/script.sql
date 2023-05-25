USE [A01_RT03]
GO
/****** Object:  Table [dbo].[Announce]    Script Date: 5/25/2023 2:14:42 PM ******/
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
/****** Object:  Table [dbo].[Child]    Script Date: 5/25/2023 2:14:43 PM ******/
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
 CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED 
(
	[idChild] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChildCours]    Script Date: 5/25/2023 2:14:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildCours](
	[idChildCour] [nchar](10) NOT NULL,
	[idChild] [nchar](10) NOT NULL,
	[idSkillCours] [nchar](10) NOT NULL,
	[idTeacher] [nchar](10) NOT NULL,
	[dateStart] [date] NOT NULL,
	[dateEnd] [date] NOT NULL,
 CONSTRAINT [PK_ChildCours] PRIMARY KEY CLUSTERED 
(
	[idChildCour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 5/25/2023 2:14:43 PM ******/
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
/****** Object:  Table [dbo].[FeeList]    Script Date: 5/25/2023 2:14:43 PM ******/
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
/****** Object:  Table [dbo].[Proposal]    Script Date: 5/25/2023 2:14:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proposal](
	[idProposal] [nchar](10) NOT NULL,
	[idUser] [nchar](10) NOT NULL,
	[proposalName] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[SalaryList]    Script Date: 5/25/2023 2:14:43 PM ******/
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
/****** Object:  Table [dbo].[SkillCours]    Script Date: 5/25/2023 2:14:43 PM ******/
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
/****** Object:  Table [dbo].[Tuition]    Script Date: 5/25/2023 2:14:43 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 5/25/2023 2:14:43 PM ******/
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
	[role] [char](2) NOT NULL,
	[idChild] [nchar](10) NULL,
	[certicate] [nvarchar](50) NULL,
	[imgAvt] [nchar](30) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserVote]    Script Date: 5/25/2023 2:14:43 PM ******/
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
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'dbt2464538', N'Dung', N'01 J', CAST(N'2002-02-02' AS Date), N'M', N'                                                                                                                                                      ', N'1234567890', N'12345', N'PR', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'De1600    ', N'Hoang Y', N'01 Cam Le', CAST(N'2002-09-06' AS Date), N'M', N'hoangy@gmail.com                                                                                                                                      ', N'097544111', N'123456', N'AD', N'D11       ', NULL, NULL)
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'lfl1639127', N'Hoang Y hai', N'Xuân Hòa', CAST(N'2002-01-25' AS Date), N'M', N'hoangyhai@gmail.com                                                                                                                                   ', N'0981456014', N'123456', N'PR', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'lul7789124', N'Nhi', N'01 IOO', CAST(N'2003-02-09' AS Date), N'F', N'nhi@gmail.com                                                                                                                                         ', N'123456789', N'12345', N'PR', N'NULL      ', N'NULL', N'NULL                          ')
INSERT [dbo].[Users] ([idUser], [fullName], [address], [dob], [gender], [email], [phoneNumber], [password], [role], [idChild], [certicate], [imgAvt]) VALUES (N'pov3386762', N'Viet', N'01 Hoa', CAST(N'2002-02-01' AS Date), N'M', N'                                                                                                                                                      ', N'0961103209', N'12345', N'PR', N'NULL      ', N'NULL', N'NULL                          ')
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
ALTER TABLE [dbo].[ChildCours]  WITH CHECK ADD  CONSTRAINT [FK_ChildCours_Child] FOREIGN KEY([idChild])
REFERENCES [dbo].[Child] ([idChild])
GO
ALTER TABLE [dbo].[ChildCours] CHECK CONSTRAINT [FK_ChildCours_Child]
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

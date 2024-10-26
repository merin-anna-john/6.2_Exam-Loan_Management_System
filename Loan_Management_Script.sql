USE [Loan_Management_System_FullStack]
GO
/****** Object:  Table [dbo].[BackgroundVerification]    Script Date: 26-10-2024 16:14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackgroundVerification](
	[VerificationID] [int] IDENTITY(1,1) NOT NULL,
	[LoanID] [int] NULL,
	[LoanOfficerID] [int] NULL,
	[Status] [varchar](20) NULL,
	[Notes] [varchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VerificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 26-10-2024 16:14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Comments] [text] NOT NULL,
	[Rating] [int] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Help]    Script Date: 26-10-2024 16:14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Help](
	[HelpID] [int] IDENTITY(1,1) NOT NULL,
	[Question] [text] NOT NULL,
	[Answer] [text] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HelpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 26-10-2024 16:14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loans](
	[LoanID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[Status] [varchar](20) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanVerification]    Script Date: 26-10-2024 16:14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanVerification](
	[VerificationID] [int] IDENTITY(1,1) NOT NULL,
	[LoanID] [int] NULL,
	[LoanOfficerID] [int] NULL,
	[Status] [varchar](20) NULL,
	[Notes] [varchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VerificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 26-10-2024 16:14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26-10-2024 16:14:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[RoleID] [int] NULL,
	[Email] [varchar](100) NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BackgroundVerification] ON 

INSERT [dbo].[BackgroundVerification] ([VerificationID], [LoanID], [LoanOfficerID], [Status], [Notes], [CreatedAt], [UpdatedAt]) VALUES (3, 1, 4, N'Completed', N'Verification completed successfully.', CAST(N'2024-10-26T10:27:00.537' AS DateTime), CAST(N'2024-10-26T10:27:00.537' AS DateTime))
INSERT [dbo].[BackgroundVerification] ([VerificationID], [LoanID], [LoanOfficerID], [Status], [Notes], [CreatedAt], [UpdatedAt]) VALUES (4, 2, 5, N'Pending', N'Awaiting for information.', CAST(N'2024-10-26T10:27:00.537' AS DateTime), CAST(N'2024-10-26T10:27:00.537' AS DateTime))
INSERT [dbo].[BackgroundVerification] ([VerificationID], [LoanID], [LoanOfficerID], [Status], [Notes], [CreatedAt], [UpdatedAt]) VALUES (5, 3, 4, N'Failed', N'Background check failed.', CAST(N'2024-10-26T10:27:00.537' AS DateTime), CAST(N'2024-10-26T10:27:00.537' AS DateTime))
SET IDENTITY_INSERT [dbo].[BackgroundVerification] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [Comments], [Rating], [CreatedAt]) VALUES (1, 2, N'The application process was smooth and easy to understand.', 4, CAST(N'2024-10-26T10:28:34.440' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [Comments], [Rating], [CreatedAt]) VALUES (2, 3, N'Loan approval took longer than expected.', 3, CAST(N'2024-10-26T10:28:34.440' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [Comments], [Rating], [CreatedAt]) VALUES (3, 2, N'Customer support was very helpful and responsive.', 5, CAST(N'2024-10-26T10:28:34.440' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [UserID], [Comments], [Rating], [CreatedAt]) VALUES (4, 4, N'Background verification was completed swiftly.', 4, CAST(N'2024-10-26T10:28:34.440' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Help] ON 

INSERT [dbo].[Help] ([HelpID], [Question], [Answer], [CreatedAt], [UpdatedAt], [CreatedBy]) VALUES (1, N'How do I apply for a loan?', N'To apply for a loan, log in to your account and select "Apply for Loan" from the dashboard.', CAST(N'2024-10-26T10:28:19.973' AS DateTime), CAST(N'2024-10-26T10:28:19.973' AS DateTime), 1)
INSERT [dbo].[Help] ([HelpID], [Question], [Answer], [CreatedAt], [UpdatedAt], [CreatedBy]) VALUES (2, N'What documents are required?', N'You will need ID proof, income proof, and address proof.', CAST(N'2024-10-26T10:28:19.973' AS DateTime), CAST(N'2024-10-26T10:28:19.973' AS DateTime), 1)
INSERT [dbo].[Help] ([HelpID], [Question], [Answer], [CreatedAt], [UpdatedAt], [CreatedBy]) VALUES (3, N'How do I contact customer support?', N'You can reach customer support via email at support@example.com.', CAST(N'2024-10-26T10:28:19.973' AS DateTime), CAST(N'2024-10-26T10:28:19.973' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Help] OFF
GO
SET IDENTITY_INSERT [dbo].[Loans] ON 

INSERT [dbo].[Loans] ([LoanID], [UserID], [Amount], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, 2, CAST(15000.00 AS Decimal(10, 2)), N'Pending', CAST(N'2024-10-26T10:23:19.310' AS DateTime), CAST(N'2024-10-26T10:23:19.310' AS DateTime))
INSERT [dbo].[Loans] ([LoanID], [UserID], [Amount], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, 3, CAST(250000.00 AS Decimal(10, 2)), N'Approved', CAST(N'2024-10-26T10:23:19.310' AS DateTime), CAST(N'2024-10-26T10:23:19.310' AS DateTime))
INSERT [dbo].[Loans] ([LoanID], [UserID], [Amount], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, 2, CAST(50000.00 AS Decimal(10, 2)), N'Rejected', CAST(N'2024-10-26T10:23:19.310' AS DateTime), CAST(N'2024-10-26T10:23:19.310' AS DateTime))
SET IDENTITY_INSERT [dbo].[Loans] OFF
GO
SET IDENTITY_INSERT [dbo].[LoanVerification] ON 

INSERT [dbo].[LoanVerification] ([VerificationID], [LoanID], [LoanOfficerID], [Status], [Notes], [CreatedAt], [UpdatedAt]) VALUES (2, 1, 4, N'Verified', N'Verified all documents and approved for further processing.', CAST(N'2024-10-26T10:28:02.080' AS DateTime), CAST(N'2024-10-26T10:28:02.080' AS DateTime))
INSERT [dbo].[LoanVerification] ([VerificationID], [LoanID], [LoanOfficerID], [Status], [Notes], [CreatedAt], [UpdatedAt]) VALUES (3, 2, 5, N'Not Verified', N'Loan verification failed due to financial instability.', CAST(N'2024-10-26T10:28:02.080' AS DateTime), CAST(N'2024-10-26T10:28:02.080' AS DateTime))
INSERT [dbo].[LoanVerification] ([VerificationID], [LoanID], [LoanOfficerID], [Status], [Notes], [CreatedAt], [UpdatedAt]) VALUES (4, 3, 4, N'Pending', N'Verification in progress.', CAST(N'2024-10-26T10:28:02.080' AS DateTime), CAST(N'2024-10-26T10:28:02.080' AS DateTime))
SET IDENTITY_INSERT [dbo].[LoanVerification] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName], [CreatedAt], [UpdatedAt]) VALUES (1, N'Admin', CAST(N'2024-10-26T10:14:47.840' AS DateTime), CAST(N'2024-10-26T10:14:47.840' AS DateTime))
INSERT [dbo].[Roles] ([RoleID], [RoleName], [CreatedAt], [UpdatedAt]) VALUES (2, N'Customer', CAST(N'2024-10-26T10:14:47.840' AS DateTime), CAST(N'2024-10-26T10:14:47.840' AS DateTime))
INSERT [dbo].[Roles] ([RoleID], [RoleName], [CreatedAt], [UpdatedAt]) VALUES (3, N'Loan Officer', CAST(N'2024-10-26T10:14:47.840' AS DateTime), CAST(N'2024-10-26T10:14:47.840' AS DateTime))
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Username], [Password], [RoleID], [Email], [CreatedAt], [UpdatedAt]) VALUES (1, N'Admin', N'Admin@123', 1, N'admin@gmail.com', CAST(N'2024-10-26T10:22:51.933' AS DateTime), CAST(N'2024-10-26T10:22:51.933' AS DateTime))
INSERT [dbo].[Users] ([UserID], [Username], [Password], [RoleID], [Email], [CreatedAt], [UpdatedAt]) VALUES (2, N'John', N'John@123', 2, N'john@gmail.com', CAST(N'2024-10-26T10:22:51.933' AS DateTime), CAST(N'2024-10-26T10:22:51.933' AS DateTime))
INSERT [dbo].[Users] ([UserID], [Username], [Password], [RoleID], [Email], [CreatedAt], [UpdatedAt]) VALUES (3, N'Jane', N'Jane@123', 2, N'jane@gmail.com', CAST(N'2024-10-26T10:22:51.933' AS DateTime), CAST(N'2024-10-26T10:22:51.933' AS DateTime))
INSERT [dbo].[Users] ([UserID], [Username], [Password], [RoleID], [Email], [CreatedAt], [UpdatedAt]) VALUES (4, N'Loan_officer1', N'Officer1@123', 3, N'officer1@gmail.com', CAST(N'2024-10-26T10:22:51.933' AS DateTime), CAST(N'2024-10-26T10:22:51.933' AS DateTime))
INSERT [dbo].[Users] ([UserID], [Username], [Password], [RoleID], [Email], [CreatedAt], [UpdatedAt]) VALUES (5, N'Loan_officer2', N'Officer2@123', 3, N'officer2@gmail.com', CAST(N'2024-10-26T10:22:51.933' AS DateTime), CAST(N'2024-10-26T10:22:51.933' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__8A2B6160988827F9]    Script Date: 26-10-2024 16:14:47 ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E4E44C215A]    Script Date: 26-10-2024 16:14:47 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D10534036ACAE4]    Script Date: 26-10-2024 16:14:47 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BackgroundVerification] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[BackgroundVerification] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[BackgroundVerification] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Feedback] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Help] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Help] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Loans] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Loans] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Loans] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[LoanVerification] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[LoanVerification] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[LoanVerification] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[BackgroundVerification]  WITH CHECK ADD FOREIGN KEY([LoanID])
REFERENCES [dbo].[Loans] ([LoanID])
GO
ALTER TABLE [dbo].[BackgroundVerification]  WITH CHECK ADD FOREIGN KEY([LoanOfficerID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Help]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[LoanVerification]  WITH CHECK ADD FOREIGN KEY([LoanID])
REFERENCES [dbo].[Loans] ([LoanID])
GO
ALTER TABLE [dbo].[LoanVerification]  WITH CHECK ADD FOREIGN KEY([LoanOfficerID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[BackgroundVerification]  WITH CHECK ADD CHECK  (([Status]='Failed' OR [Status]='Completed' OR [Status]='Pending'))
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD CHECK  (([Rating]>=(1) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD CHECK  (([Status]='Rejected' OR [Status]='Approved' OR [Status]='Pending'))
GO
ALTER TABLE [dbo].[LoanVerification]  WITH CHECK ADD CHECK  (([Status]='Not Verified' OR [Status]='Verified' OR [Status]='Pending'))
GO

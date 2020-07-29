USE [TENNIS]
GO
/****** Object:  Table [dbo].[COMMITTEE_MEMBERS]    Script Date: 2020/7/28 上午 08:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMITTEE_MEMBERS](
	[PLAYERNO] [int] NOT NULL,
	[BEGIN_DATE] [datetime2](3) NOT NULL,
	[END_DATE] [datetime2](3) NULL,
	[POSITION] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[PLAYERNO] ASC,
	[BEGIN_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATCHES]    Script Date: 2020/7/28 上午 08:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATCHES](
	[MATCHNO] [int] NOT NULL,
	[TEAMNO] [int] NOT NULL,
	[PLAYERNO] [int] NOT NULL,
	[WON] [smallint] NOT NULL,
	[LOST] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MATCHNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PENALTIES]    Script Date: 2020/7/28 上午 08:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PENALTIES](
	[PAYMENTNO] [int] NOT NULL,
	[PLAYERNO] [int] NOT NULL,
	[PAYMENT_DATE] [datetime2](3) NOT NULL,
	[AMOUNT] [decimal](7, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PAYMENTNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLAYERS]    Script Date: 2020/7/28 上午 08:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLAYERS](
	[PLAYERNO] [int] NOT NULL,
	[NAME] [char](15) NOT NULL,
	[INITIALS] [char](3) NOT NULL,
	[BIRTH_DATE] [datetime2](3) NULL,
	[SEX] [char](1) NOT NULL,
	[JOINED] [smallint] NOT NULL,
	[STREET] [varchar](30) NOT NULL,
	[HOUSENO] [char](4) NULL,
	[POSTCODE] [char](6) NULL,
	[TOWN] [varchar](30) NOT NULL,
	[PHONENO] [char](13) NULL,
	[LEAGUENO] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[PLAYERNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEAMS]    Script Date: 2020/7/28 上午 08:51:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEAMS](
	[TEAMNO] [int] NOT NULL,
	[PLAYERNO] [int] NOT NULL,
	[DIVISION] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TEAMNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (2, CAST(N'1990-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1992-12-31T00:00:00.0000000' AS DateTime2), N'Chairman            ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (2, CAST(N'1994-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Member              ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (6, CAST(N'1990-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1990-12-31T00:00:00.0000000' AS DateTime2), N'Secretary           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (6, CAST(N'1991-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1992-12-31T00:00:00.0000000' AS DateTime2), N'Member              ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (6, CAST(N'1992-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1993-12-31T00:00:00.0000000' AS DateTime2), N'Treasurer           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (6, CAST(N'1993-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Chairman            ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (8, CAST(N'1990-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1990-12-31T00:00:00.0000000' AS DateTime2), N'Treasurer           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (8, CAST(N'1991-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1991-12-31T00:00:00.0000000' AS DateTime2), N'Secretary           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (8, CAST(N'1993-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1993-12-31T00:00:00.0000000' AS DateTime2), N'Member              ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (8, CAST(N'1994-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Member              ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (27, CAST(N'1990-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1990-12-31T00:00:00.0000000' AS DateTime2), N'Member              ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (27, CAST(N'1991-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1991-12-31T00:00:00.0000000' AS DateTime2), N'Treasurer           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (27, CAST(N'1993-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1993-12-31T00:00:00.0000000' AS DateTime2), N'Treasurer           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (57, CAST(N'1992-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1992-12-31T00:00:00.0000000' AS DateTime2), N'Secretary           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (95, CAST(N'1994-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Treasurer           ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (112, CAST(N'1992-01-01T00:00:00.0000000' AS DateTime2), CAST(N'1992-12-31T00:00:00.0000000' AS DateTime2), N'Member              ')
INSERT [dbo].[COMMITTEE_MEMBERS] ([PLAYERNO], [BEGIN_DATE], [END_DATE], [POSITION]) VALUES (112, CAST(N'1994-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Secretary           ')
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (1, 1, 6, 3, 1)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (2, 1, 6, 2, 3)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (3, 1, 6, 3, 0)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (4, 1, 44, 3, 2)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (5, 1, 83, 0, 3)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (6, 1, 2, 1, 3)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (7, 1, 57, 3, 0)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (8, 1, 8, 0, 3)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (9, 2, 27, 3, 2)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (10, 2, 104, 3, 2)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (11, 2, 112, 2, 3)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (12, 2, 112, 1, 3)
INSERT [dbo].[MATCHES] ([MATCHNO], [TEAMNO], [PLAYERNO], [WON], [LOST]) VALUES (13, 2, 8, 0, 3)
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (1, 6, CAST(N'1980-12-08T00:00:00.0000000' AS DateTime2), CAST(100.00 AS Decimal(7, 2)))
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (2, 44, CAST(N'1981-05-05T00:00:00.0000000' AS DateTime2), CAST(75.00 AS Decimal(7, 2)))
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (3, 27, CAST(N'1983-09-10T00:00:00.0000000' AS DateTime2), CAST(100.00 AS Decimal(7, 2)))
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (4, 104, CAST(N'1984-12-08T00:00:00.0000000' AS DateTime2), CAST(50.00 AS Decimal(7, 2)))
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (5, 44, CAST(N'1980-12-08T00:00:00.0000000' AS DateTime2), CAST(25.00 AS Decimal(7, 2)))
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (6, 8, CAST(N'1980-12-08T00:00:00.0000000' AS DateTime2), CAST(25.00 AS Decimal(7, 2)))
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (7, 44, CAST(N'1982-12-30T00:00:00.0000000' AS DateTime2), CAST(30.00 AS Decimal(7, 2)))
INSERT [dbo].[PENALTIES] ([PAYMENTNO], [PLAYERNO], [PAYMENT_DATE], [AMOUNT]) VALUES (8, 27, CAST(N'1984-11-12T00:00:00.0000000' AS DateTime2), CAST(75.00 AS Decimal(7, 2)))
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (2, N'Everett        ', N'R  ', CAST(N'1948-09-01T00:00:00.0000000' AS DateTime2), N'M', 1975, N'Stoney Road', N'43  ', N'3575NH', N'Stratford', N'070-237893   ', N'2411')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (6, N'Parmenter      ', N'R  ', CAST(N'1964-06-25T00:00:00.0000000' AS DateTime2), N'M', 1977, N'Haseltine Lane', N'80  ', N'1234KK', N'Stratford', N'070-476537   ', N'8467')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (7, N'Wise           ', N'GWS', CAST(N'1963-05-11T00:00:00.0000000' AS DateTime2), N'M', 1981, N'Edgecombe Way', N'39  ', N'9758VB', N'Stratford', N'070-347689   ', NULL)
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (8, N'Newcastle      ', N'B  ', CAST(N'1962-07-08T00:00:00.0000000' AS DateTime2), N'F', 1980, N'Station Road', N'4   ', N'6584WO', N'Inglewood', N'070-458458   ', N'2983')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (27, N'Collins        ', N'DD ', CAST(N'1964-12-28T00:00:00.0000000' AS DateTime2), N'F', 1983, N'Long Drive', N'804 ', N'8457DK', N'Eltham', N'079-234857   ', N'2513')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (28, N'Collins        ', N'C  ', CAST(N'1963-06-22T00:00:00.0000000' AS DateTime2), N'F', 1983, N'Old Main Road', N'10  ', N'1294QK', N'Midhurst', N'010-659599   ', NULL)
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (39, N'Bishop         ', N'D  ', CAST(N'1956-10-29T00:00:00.0000000' AS DateTime2), N'M', 1980, N'Eaton Square', N'78  ', N'9629CD', N'Stratford', N'070-393435   ', NULL)
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (44, N'Baker          ', N'E  ', CAST(N'1963-01-09T00:00:00.0000000' AS DateTime2), N'M', 1980, N'Lewis Street', N'23  ', N'4444LJ', N'Inglewood', N'070-368753   ', N'1124')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (57, N'Brown          ', N'M  ', CAST(N'1971-08-17T00:00:00.0000000' AS DateTime2), N'M', 1985, N'Edgecombe Way', N'16  ', N'4377CB', N'Stratford', N'070-473458   ', N'6409')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (83, N'Hope           ', N'PK ', CAST(N'1956-11-11T00:00:00.0000000' AS DateTime2), N'M', 1982, N'Magdalene Road', N'16A ', N'1812UP', N'Stratford', N'070-353548   ', N'1608')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (95, N'Miller         ', N'P  ', CAST(N'1963-05-14T00:00:00.0000000' AS DateTime2), N'M', 1972, N'High Street', N'33A ', N'5746OP', N'Douglas', N'070-867564   ', NULL)
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (100, N'Parmenter      ', N'P  ', CAST(N'1963-02-28T00:00:00.0000000' AS DateTime2), N'M', 1979, N'Haseltine Lane', N'80  ', N'6494SG', N'Stratford', N'070-494593   ', N'6524')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (104, N'Moorman        ', N'D  ', CAST(N'1970-05-10T00:00:00.0000000' AS DateTime2), N'F', 1984, N'Stout Street', N'65  ', N'9437AO', N'Eltham', N'079-987571   ', N'7060')
INSERT [dbo].[PLAYERS] ([PLAYERNO], [NAME], [INITIALS], [BIRTH_DATE], [SEX], [JOINED], [STREET], [HOUSENO], [POSTCODE], [TOWN], [PHONENO], [LEAGUENO]) VALUES (112, N'Bailey         ', N'IP ', CAST(N'1963-10-01T00:00:00.0000000' AS DateTime2), N'F', 1984, N'Vixen Road', N'8   ', N'6392LK', N'Plymouth', N'010-548745   ', N'1319')
INSERT [dbo].[TEAMS] ([TEAMNO], [PLAYERNO], [DIVISION]) VALUES (1, 6, N'first ')
INSERT [dbo].[TEAMS] ([TEAMNO], [PLAYERNO], [DIVISION]) VALUES (2, 27, N'second')

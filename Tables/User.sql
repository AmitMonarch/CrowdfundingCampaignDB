USE [CFC_dB]
GO

/****** Object:  Table [dbo].[User]    Script Date: 20-03-2024 11:05:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Country] [nvarchar](50) NULL,
	[SecurityQuestion] [nvarchar](255) NULL,
	[SecurityAnswer] [nvarchar](255) NULL,
	[Gender] [varchar](20) NULL,
	[Address] [varchar](100) NULL,
	[PinCode] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Active] [varchar](10) NULL,
	[Subscribed] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ('Gender') FOR [Gender]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ('Address') FOR [Address]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ('Pincode') FOR [PinCode]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ('City') FOR [City]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ('State') FOR [State]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ('false') FOR [Active]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT ('false') FOR [Subscribed]
GO



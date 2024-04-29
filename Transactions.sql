USE [CFC_dB]
GO

/****** Object:  Table [dbo].[Transactions]    Script Date: 21-03-2024 10:12:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Transactions](
	[TransactionsId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Shares] [decimal](18, 0) NOT NULL,
	[CampaignTitle] [varchar](255) NOT NULL,
	[Company] [varchar](255) NOT NULL,
	[CampaignId] [int] NOT NULL,
	[CompanyAdmin] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



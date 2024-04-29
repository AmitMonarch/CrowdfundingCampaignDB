USE [CFC_dB]
GO

/****** Object:  Table [dbo].[DesignCampaignData]    Script Date: 22-03-2024 02:43:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DesignCampaignData](
	[CampaignID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CampaignTitle] [nvarchar](255) NOT NULL,
	[CompanyName] [nvarchar](255) NOT NULL,
	[BriefDescription] [nvarchar](1000) NOT NULL,
	[Overview] [nvarchar](3000) NOT NULL,
	[About] [nvarchar](3000) NOT NULL,
	[Terms] [nvarchar](3000) NOT NULL,
	[Goal] [float] NOT NULL,
	[Raised] [float] NOT NULL,
	[Remaining] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Investors] [float] NOT NULL,
	[Valuation] [float] NOT NULL,
	[maxValue] [float] NULL,
	[CampaignAdmin] [int] NULL,
	[EndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DesignCampaignData]  WITH CHECK ADD  CONSTRAINT [FK_DesignCampaignData_User] FOREIGN KEY([CampaignAdmin])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[DesignCampaignData] CHECK CONSTRAINT [FK_DesignCampaignData_User]
GO



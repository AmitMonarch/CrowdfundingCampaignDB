USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[AddNewCampaign]    Script Date: 22-03-2024 03:03:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddNewCampaign]
    @CampaignAdmin INT,
	@EndDate DateTime
AS
BEGIN
    INSERT INTO [dbo].[DesignCampaignData] (
        [CampaignTitle],
        [CompanyName],
		[Image],
        [BriefDescription],
        [Overview],
        [About],
        [Terms],
        [Goal],
        [Raised],
        [Remaining],
        [Price],
        [Investors],
        [Valuation],
        [maxValue],
        [CampaignAdmin],
		[EndDate]
    ) VALUES (
        'CampaignTitle',
        'CompanyName',
		'',
        'BriefDescription',
        'Overview',
        'About',
        'Terms',
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        @CampaignAdmin,
		@EndDate
    )
END
GO



USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[UpdateCampaignData]    Script Date: 20-03-2024 11:11:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCampaignData]
    @CampaignID INT,
    @Image NVARCHAR(MAX),
    @CampaignTitle NVARCHAR(255),
    @CompanyName NVARCHAR(255),
    @BriefDescription NVARCHAR(1000),
    @Overview NVARCHAR(3000),
    @About NVARCHAR(3000),
    @Terms NVARCHAR(3000),
    @Goal INT,
    @Raised INT,
    @Remaining INT,
    @Price INT,
    @Investors INT,
    @Valuation INT
AS
BEGIN
    UPDATE CampaignData
    SET Image = @Image,
        CampaignTitle = @CampaignTitle,
        CompanyName = @CompanyName,
        BriefDescription = @BriefDescription,
        Overview = @Overview,
        About = @About,
        Terms = @Terms,
        Goal = @Goal,
        Raised = @Raised,
        Remaining = @Remaining,
        Price = @Price,
        Investors = @Investors,
        Valuation = @Valuation
    WHERE CampaignID = @CampaignID;
END;
GO



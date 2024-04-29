USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[CopyDesignCampaignDataToCampaignData]    Script Date: 20-03-2024 11:09:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CopyDesignCampaignDataToCampaignData]
    @DesignCampaignID INT
AS
BEGIN
    -- Variables to hold the values to be copied
    DECLARE @Image NVARCHAR(MAX)
    DECLARE @CampaignTitle NVARCHAR(255)
    DECLARE @CompanyName NVARCHAR(255)
    DECLARE @BriefDescription NVARCHAR(1000)
    DECLARE @Overview NVARCHAR(3000)
    DECLARE @About NVARCHAR(3000)
    DECLARE @Terms NVARCHAR(3000)
    DECLARE @Goal FLOAT
    DECLARE @Raised FLOAT
    DECLARE @Remaining FLOAT
    DECLARE @Price FLOAT
    DECLARE @Investors FLOAT
    DECLARE @Valuation FLOAT
    DECLARE @maxValue FLOAT

    -- Selecting values to be copied from DesignCampaignData
    SELECT @Image = [Image],
           @CampaignTitle = [CampaignTitle],
           @CompanyName = [CompanyName],
           @BriefDescription = [BriefDescription],
           @Overview = [Overview],
           @About = [About],
           @Terms = [Terms],
           @Goal = [Goal],
           @Raised = [Raised],
           @Remaining = [Remaining],
           @Price = [Price],
           @Investors = [Investors],
           @Valuation = [Valuation],
           @maxValue = [maxValue]
    FROM [dbo].[DesignCampaignData]
    WHERE [CampaignID] = @DesignCampaignID

    -- Check if a record exists in CampaignData with the provided LayoutID
    IF EXISTS (SELECT 1 FROM [dbo].[CampaignData] WHERE [LayoutID] = @DesignCampaignID)
    BEGIN
        -- Update CampaignData with values from DesignCampaignData
        UPDATE [dbo].[CampaignData]
        SET [Image] = @Image,
            [CampaignTitle] = @CampaignTitle,
            [CompanyName] = @CompanyName,
            [BriefDescription] = @BriefDescription,
            [Overview] = @Overview,
            [About] = @About,
            [Terms] = @Terms,
            [Goal] = @Goal,
            [Raised] = @Raised,
            [Remaining] = @Remaining,
            [Price] = @Price,
            [Investors] = @Investors,
            [Valuation] = @Valuation,
            [maxValue] = @maxValue
        WHERE [LayoutID] = @DesignCampaignID
    END
    ELSE
    BEGIN
        -- Insert into CampaignData if no record with provided LayoutID is found
        INSERT INTO [dbo].[CampaignData] ([Image], [CampaignTitle], [CompanyName], [BriefDescription],
                                          [Overview], [About], [Terms], [Goal], [Raised], [Remaining],
                                          [Price], [Investors], [Valuation], [maxValue], [LayoutID])
        VALUES (@Image, @CampaignTitle, @CompanyName, @BriefDescription, @Overview, @About, @Terms,
                @Goal, @Raised, @Remaining, @Price, @Investors, @Valuation, @maxValue, @DesignCampaignID)
    END
END
GO



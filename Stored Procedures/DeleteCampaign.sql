USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[DeleteCampaign]    Script Date: 22-03-2024 11:35:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCampaign]
    @CampaignId INT
AS
BEGIN
    SET NOCOUNT ON;

	declare @transactionCampaignId int;

	select @transactionCampaignId =  CampaignID from CampaignData where LayoutID = @CampaignId;

    -- Delete from Transactions table where CampaignId = @CampaignId
    DELETE FROM dbo.Transactions WHERE CampaignId = @transactionCampaignId;

    -- Delete from DesignCampaignData table where LayoutID = @CampaignId
    DELETE FROM dbo.DesignCampaignData WHERE CampaignID = @CampaignId;

    -- Delete from CampaignData table
    DELETE FROM dbo.CampaignData WHERE LayoutID= @CampaignId;

    PRINT 'Campaign deleted successfully.';
END
GO



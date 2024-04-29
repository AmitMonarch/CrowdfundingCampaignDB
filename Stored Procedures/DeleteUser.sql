USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 22-03-2024 11:35:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUser]
    @UserId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete from Transactions table where CompanyAdmin = @UserId
    DELETE FROM dbo.Transactions WHERE CompanyAdmin = @UserId;

    -- Delete from CampaignData table where CampaignAdmin = @UserId
    DELETE FROM dbo.CampaignData WHERE CampaignAdmin = @UserId;

    -- Delete from DesignCampaignData table where CampaignAdmin = @UserId
    DELETE FROM dbo.DesignCampaignData WHERE CampaignAdmin = @UserId;

    -- Delete from User table where UserId = @UserId
    DELETE FROM dbo.[User] WHERE UserID = @UserId;

    PRINT 'User and related data deleted successfully.';
END
GO



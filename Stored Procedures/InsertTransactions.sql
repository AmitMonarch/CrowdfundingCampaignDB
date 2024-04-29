USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[InsertTransaction]    Script Date: 21-03-2024 10:13:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertTransaction]
    @UserId INT,
    @Amount DECIMAL(18, 2),
    @Shares DECIMAL,
    @CampaignID INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @FirstName VARCHAR(100);
    DECLARE @LastName VARCHAR(100);
    DECLARE @CampaignTitle VARCHAR(255);
    DECLARE @Company VARCHAR(255);
    DECLARE @CompanyAdmin INT;

    -- Retrieve FirstName and LastName from User table
    SELECT @FirstName = FirstName, @LastName = LastName
    FROM [User]
    WHERE UserId = @UserId;

    -- Retrieve CampaignTitle, Company, and CompanyAdmin from CampaignData table
    SELECT @CampaignTitle = CampaignTitle, @Company = CompanyName, @CompanyAdmin = CampaignAdmin
    FROM CampaignData
    WHERE CampaignID = @CampaignID;

    -- Insert into transactions table
    INSERT INTO Transactions (FirstName, LastName, Amount, Shares, CampaignTitle, Company, CampaignId, CompanyAdmin)
    VALUES (@FirstName, @LastName, @Amount, @Shares, @CampaignTitle, @Company, @CampaignID, @CompanyAdmin);
END;
GO



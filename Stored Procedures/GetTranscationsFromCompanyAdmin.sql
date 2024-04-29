USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[GetTransactionsByCompanyAdmin]    Script Date: 21-03-2024 11:24:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTransactionsByCompanyAdmin]
    @CompanyAdmin INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CampaignId,
        FirstName,
        LastName,
        Amount,
        Shares,
        CampaignTitle,
        Company
    FROM
        Transactions
    WHERE
        CompanyAdmin = @CompanyAdmin
    GROUP BY
        CampaignId,
        FirstName,  -- Include all non-aggregated columns in the GROUP BY clause
        LastName,
        CampaignTitle,
		Amount,
		Shares,
        Company;
END;
GO



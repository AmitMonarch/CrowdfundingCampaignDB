USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[UpdateCampaignColumnData]    Script Date: 20-03-2024 11:11:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCampaignColumnData]
    @ColumnName NVARCHAR(255),
    @ColumnValue NVARCHAR(MAX)
AS
BEGIN
    UPDATE CampaignData
    SET
        @ColumnName = @ColumnValue
    WHERE
        CampaignID = 1;
END;
GO



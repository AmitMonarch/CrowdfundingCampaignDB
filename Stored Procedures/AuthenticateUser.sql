USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 20-03-2024 11:09:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AuthenticateUser]
    @Email NVARCHAR(100),
    @Password NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @HashedPassword NVARCHAR(100);

    -- Hash the password using SHA-256 algorithm
    SET @HashedPassword = CONVERT(NVARCHAR(100), HASHBYTES('SHA2_256', @Password), 2);

    SELECT *
    FROM [User]
    WHERE Email = @Email AND Password = @HashedPassword;
END;
GO



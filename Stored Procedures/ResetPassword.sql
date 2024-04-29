USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[ResetPassword]    Script Date: 20-03-2024 11:10:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ResetPassword]
    @Email NVARCHAR(100),
    @Password NVARCHAR(100)
    
AS
BEGIN
    SET NOCOUNT ON;

    -- Hash the password using SHA-256 algorithm
    DECLARE @HashedPassword NVARCHAR(100);
    SET @HashedPassword = CONVERT(NVARCHAR(100), HASHBYTES('SHA2_256', @Password), 2);

        -- Update the password in the [User] table
        UPDATE [User]
        SET Password = @HashedPassword
        WHERE Email = @Email;
END;
GO



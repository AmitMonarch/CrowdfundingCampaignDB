USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 20-03-2024 11:10:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegisterUser]
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Email NVARCHAR(100),
    @Password NVARCHAR(100),
    @DateOfBirth DATE,
    @PhoneNumber NVARCHAR(20),
    @Country NVARCHAR(50),
	@SecurityQuestion NVARCHAR(255),
	@SecurityAnswer NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @HashedPassword NVARCHAR(100);
	SET @HashedPassword = CONVERT(NVARCHAR(100), HASHBYTES('SHA2_256', @Password), 2);

    INSERT INTO [User] (FirstName, LastName, Email, Password, DateOfBirth, PhoneNumber, Country, SecurityQuestion, SecurityAnswer)
    VALUES (@FirstName, @LastName, @Email, @HashedPassword, @DateOfBirth, @PhoneNumber, @Country, @SecurityQuestion, @SecurityAnswer);
END;
GO



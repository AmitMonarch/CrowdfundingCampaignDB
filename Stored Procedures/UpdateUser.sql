USE [CFC_dB]
GO

/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 20-03-2024 11:12:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUser]
    @UserId INT,
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @DateOfBirth DATE,
    @PhoneNumber NVARCHAR(20),
    @Country NVARCHAR(50),
    @Gender VARCHAR(20),
    @Address VARCHAR(100),
    @PinCode VARCHAR(50),
    @City VARCHAR(50),
    @State VARCHAR(50)
AS
BEGIN
    UPDATE [dbo].[User]
    SET
        FirstName = @FirstName,
        LastName = @LastName,
        DateOfBirth = @DateOfBirth,
        PhoneNumber = @PhoneNumber,
        Country = @Country,
        Gender = @Gender,
        Address = @Address,
        PinCode = @PinCode,
        City = @City,
        State = @State
    WHERE
        UserId = @UserId;
END
GO



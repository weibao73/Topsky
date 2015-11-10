--Cleanup
DELETE FROM [dbo].[Users]
DBCC CHECKIDENT ([dbo.Users], reseed, 0)

GO

--Insert new users
INSERT INTO [dbo].[Users]
VALUES('Tom1', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'AB', 'Canada')

GO

INSERT INTO [dbo].[Users]
VALUES('Tom2', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'AB', 'Canada')

GO

INSERT INTO [dbo].[Users]
VALUES('Tom3', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'AB', 'Canada')

GO

INSERT INTO [dbo].[Users]
VALUES('Tom4', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'AB', 'Canada')

GO

INSERT INTO [dbo].[Users]
VALUES('Tom5', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'AB', 'Canada')

GO

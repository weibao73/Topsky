--Cleanup
DELETE FROM [dbo].[User]
DBCC CHECKIDENT ([dbo.User], reseed, 0)

GO

--Insert new users
INSERT INTO [dbo].[User]
VALUES('Tom1', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'Canada')

GO

INSERT INTO [dbo].[User]
VALUES('Tom2', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'Canada')

GO

INSERT INTO [dbo].[User]
VALUES('Tom3', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'Canada')

GO

INSERT INTO [dbo].[User]
VALUES('Tom4', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'Canada')

GO

INSERT INTO [dbo].[User]
VALUES('Tom5', 'Xun', 'Tom.Xun@gmail.com', 'abc', '5555 55 st', 'T3T6T5', 'Edmonton', 'Canada')

GO

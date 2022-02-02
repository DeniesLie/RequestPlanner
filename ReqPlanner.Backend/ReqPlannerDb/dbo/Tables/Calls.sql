CREATE TABLE [dbo].[Calls]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NULL, 
    [Url] NVARCHAR(100) NOT NULL, 
    [CreationUtcTime] DATETIME NOT NULL,
    [UserId] INT NOT NULL, 
    CONSTRAINT [FK_Calls_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id])
)

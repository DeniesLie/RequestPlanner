CREATE TABLE [dbo].[Keys]
(
	[ValueHash] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(50) NULL, 
    [UserId] INT NOT NULL, 
    CONSTRAINT [FK_Keys_Users] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id])
)

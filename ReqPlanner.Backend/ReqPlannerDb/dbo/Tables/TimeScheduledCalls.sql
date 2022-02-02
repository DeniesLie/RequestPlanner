CREATE TABLE [dbo].[TimeScheduledCalls]
(
	[CallId] INT NOT NULL PRIMARY KEY, 
    [ExecUtcTime] DATETIME NOT NULL, 
    CONSTRAINT [FK_TimeScheduledCalls_Calls] FOREIGN KEY ([CallId]) REFERENCES [Calls]([Id])
)

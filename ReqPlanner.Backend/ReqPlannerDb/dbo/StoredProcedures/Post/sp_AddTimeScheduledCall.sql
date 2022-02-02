CREATE PROCEDURE [dbo].[sp_AddTimeScheduledCall]
    @Title nvarchar(50), 
    @Url nvarchar(100), 
    @UserId int,
    @ExecUtcTime datetime
AS
begin
    declare @CallId int

    -- save call into Calls table and obtain it's id
	exec @CallId = sp_AddCall @Title, @Url, @UserId

    -- save info about call and time of planned execution
    insert into TimeScheduledCalls (CallId, ExecUtcTime ) 
    values (@CallId, @ExecUtcTime)
end

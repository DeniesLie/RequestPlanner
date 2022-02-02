CREATE PROCEDURE [dbo].[sp_AddCall]
    @Title nvarchar(50), 
    @Url nvarchar(100), 
    @UserId int
AS
begin
    declare @TempIdTable table(Id int)
    declare @CallId int

	insert into Calls ([Title], [Url], [UserId], [CreationUtcTime])
        output inserted.Id into @TempIdTable
    values (@Title, @Url, @UserId, GETUTCDATE())

    set @CallId = (select [Id] from @TempIdTable)
    return @CallId
end
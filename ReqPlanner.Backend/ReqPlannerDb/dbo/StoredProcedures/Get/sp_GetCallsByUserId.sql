CREATE PROCEDURE [dbo].[sp_GetCallsByUserId]
	@Id int
AS
begin
	select * from Calls
	where Calls.UserId = @Id
end
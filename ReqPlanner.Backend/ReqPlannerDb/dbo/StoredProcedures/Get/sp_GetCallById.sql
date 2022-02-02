CREATE PROCEDURE [dbo].[sp_GetCallById]
	@Id int
AS
begin
	select * from Calls where Calls.Id = @Id
end
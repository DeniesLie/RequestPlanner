CREATE PROCEDURE [dbo].[sp_GetUserById]
	@Id int
AS
begin
	select * from Users where Users.Id = @Id
end
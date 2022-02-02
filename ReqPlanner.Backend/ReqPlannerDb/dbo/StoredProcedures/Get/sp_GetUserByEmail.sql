CREATE PROCEDURE [dbo].[sp_GetUserByEmail]
	@Email nvarchar(50)
AS
begin
	select * from Users
	where Users.Email = @Email
end

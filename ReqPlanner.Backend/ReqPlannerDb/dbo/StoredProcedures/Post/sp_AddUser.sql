CREATE PROCEDURE [dbo].[add_User]
	@Email nvarchar(50),
	@UserName nvarchar(50),
	@PasswordHash nvarchar(50)
AS
begin
	insert into Users (Email, UserName, PasswordHash) 
		output inserted.*
	values (@Email, @UserName, @PasswordHash)
end

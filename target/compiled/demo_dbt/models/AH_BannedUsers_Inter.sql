
Select
	IsLockedOut IsLockedOut,
	cast(LastIP as nvarchar(4000)) Lastip,
	cast(UserName as nvarchar(4000)) UserName,
	cast(FName as nvarchar(4000)) FName,
	cast(LName as nvarchar(4000)) LName,
	Id ID,
	UserId UserID
From AH_BannedUsers_Raw
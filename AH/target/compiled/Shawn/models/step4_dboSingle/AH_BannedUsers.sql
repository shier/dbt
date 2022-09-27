
Select
	cast([Lastip] as nvarchar(4000)) [LastIP],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([FName] as nvarchar(4000)) [FName],
	cast([LName] as nvarchar(4000)) [LName],
	cast([IsLockedOut] as bit) [IsLockedOut],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId] 
From stg.[AH_BannedUsers_FinalView]
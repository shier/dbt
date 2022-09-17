
Select
	cast([Lastip] as nvarchar(4000)) [Lastip],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([FName] as nvarchar(4000)) [FName],
	cast([LName] as nvarchar(4000)) [LName],
	cast([IsLockedOut] as bit) [IsLockedOut],
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID] 
From stg.[AH_BannedUsers_FinalView]

Select
	cast([IsActive] as bit) [IsActive],
	cast([Password] as nvarchar(4000)) [Password],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([AccessfailedCount] as int) [AccessFailedCount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([LockOutEnd] as datetime) [LockoutEnd] 
From stg.[CC_LoginPassword_FinalView]
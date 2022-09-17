
Select
	cast([RoleID] as int) [RoleId],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId] 
From stg.[AH_UserRoles_FinalView]
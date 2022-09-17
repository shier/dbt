
Select
	cast([RoleID] as int) [RoleID],
	cast([ID] as int) [ID_RWXUserRoles],
	cast([UserID] as int) [UserID] 
From stg.[AH_UserRoles_FinalView]
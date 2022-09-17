
Select
	cast([ID] as int) [RoleID],
	cast([CreatedOn] as datetime) [Created_RWXRoles],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXRoles],
	cast([DeletedOn] as datetime) [DeletedDate_RWXRoles],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXRoles],
	cast([Name] as nvarchar(500)) [Role] 
From stg.[AH_Roles_FinalView]
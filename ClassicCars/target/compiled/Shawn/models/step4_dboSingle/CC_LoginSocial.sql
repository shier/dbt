
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([SocialprovIDErID] as int) [SocialprovIDErID],
	cast([SocialprovIDErKey] as nvarchar(4000)) [SocialprovIDErKey],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_LoginSocial_FinalView]
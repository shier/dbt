
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([SocialprovIDErID] as int) [SocialProviderId],
	cast([SocialprovIDErKey] as nvarchar(4000)) [SocialProviderKey],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_LoginSocial_FinalView]
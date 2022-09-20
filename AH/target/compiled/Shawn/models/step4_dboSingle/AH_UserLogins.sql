
Select
	cast([LoginprovIDEr] as nvarchar(4000)) [LoginProvider],
	cast([ProvIDErKey] as nvarchar(4000)) [ProviderKey],
	cast([UserID] as int) [UserId] 
From stg.[AH_UserLogins_FinalView]
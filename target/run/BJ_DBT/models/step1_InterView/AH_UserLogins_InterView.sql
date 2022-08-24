create view "stg"."AH_UserLogins_InterView__dbt_tmp" as
    
Select
	cast([LoginProvider] as nvarchar(4000)) [LoginprovIDEr],
	cast([ProviderKey] as nvarchar(4000)) [ProvIDErKey],
	[UserId] [UserID]
From stg.[AH_UserLogins_Raw]

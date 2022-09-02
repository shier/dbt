{{ config(materialized='view',schema='stg')}}
Select
	cast([LoginProvider] as nvarchar(4000)) [LoginprovIDEr],
	cast([ProviderKey] as nvarchar(4000)) [ProvIDErKey],
	[UserId] [UserID]
From stg.[AH_UserLogins_Raw]

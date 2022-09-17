{{ config(materialized='table',schema='dbo')}}
Select
	cast([ProvIDErName] as nvarchar(4000)) [ProviderName],
	cast([ProvIDErUserID] as nvarchar(4000)) [ProviderUserId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([LocalUserID] as int) [LocalUserId] 
From stg.[AH_ExternalUserIDs_FinalView]
{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ProvIDErName] as nvarchar(4000)) [ProvIDErName],
	cast([ProvIDErUserID] as nvarchar(4000)) [ProvIDErUserID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([LocalUserID] as int) [LocalUserID] 
From stg.[AH_ExternalUserIDs_FinalView]
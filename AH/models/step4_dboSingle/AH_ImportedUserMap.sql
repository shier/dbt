{{ config(materialized='table',schema='dbo')}}
Select
	cast([LocalUserID] as int) [localUserId],
	cast([ForeignUserID] as int) [foreignUserId],
	cast([ImportedUserName] as nvarchar(4000)) [importedUsername] 
From stg.[AH_ImportedUserMap_FinalView]
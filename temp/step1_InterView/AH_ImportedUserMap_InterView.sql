{{ config(materialized='view',schema='stg')}}
Select
	[localUserId] [LocalUserID],
	[foreignUserId] [ForeignUserID],
	cast([importedUsername] as nvarchar(4000)) [ImportedUserName]
From stg.[AH_ImportedUserMap_Raw]

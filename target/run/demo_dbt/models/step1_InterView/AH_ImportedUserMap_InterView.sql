create view "stg"."AH_ImportedUserMap_InterView__dbt_tmp" as
    
Select
	[localUserId] [LocalUserID],
	[foreignUserId] [ForeignUserID],
	cast([importedUsername] as nvarchar(4000)) [ImportedUserName]
From stg.[AH_ImportedUserMap_Raw]

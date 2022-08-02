create view "stg"."AH_ExternalUserIDs_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([ProviderName] as nvarchar(4000)) [ProvIDErName],
	cast([ProviderUserId] as nvarchar(4000)) [ProvIDErUserID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[LocalUserId] [LocalUserID]
From stg.[AH_ExternalUserIDs_Raw]

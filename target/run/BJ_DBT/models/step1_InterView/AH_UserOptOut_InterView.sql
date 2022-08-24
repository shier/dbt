create view "stg"."AH_UserOptOut_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([EmailName] as nvarchar(4000)) [EmailName],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UserId] [UserID]
From stg.[AH_UserOptOut_Raw]

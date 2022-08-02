create view "stg"."AH_Watches_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[UserId] [UserID],
	[ListingId] [ListingID],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_Watches_Raw]

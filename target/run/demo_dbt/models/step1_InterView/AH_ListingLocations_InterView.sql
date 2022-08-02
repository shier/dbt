create view "stg"."AH_ListingLocations_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[LocationId] [LocationID],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_ListingLocations_Raw]

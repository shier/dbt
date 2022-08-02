create view "stg"."AH_CategoryListings_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[ListingId] [ListingID],
	[CategoryId] [CategoryID]
From stg.[AH_CategoryListings_Raw]

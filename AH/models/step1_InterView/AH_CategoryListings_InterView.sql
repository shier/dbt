{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[ListingId] [ListingID],
	[CategoryId] [CategoryID]
From stg.[AH_CategoryListings_Raw]

{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[LocationId] [LocationID],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_ListingLocations_Raw]

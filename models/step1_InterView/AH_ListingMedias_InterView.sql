{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[MediaId] [MediaID],
	[ListingId] [ListingID],
	[DisplayOrder] [DisplayOrder]
From stg.[AH_ListingMedias_Raw]

{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DecorationId] [DecorationID],
	[ListingId] [ListingID]
From stg.[AH_Listingdecorations_Raw]

{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[OldReserve] [OldReserve],
	[NewReserve] [NewReserve]
From stg.[AH_ListingsReserveHistory_Raw]

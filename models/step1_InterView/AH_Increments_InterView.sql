{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[PriceLevel] [PriceLevel],
	[Amount] [Amount],
	[ListingTypeId] [ListingTypeID],
	[AuctionEventId] [AuctionEventID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_Increments_Raw]

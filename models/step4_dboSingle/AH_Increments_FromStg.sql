{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([PriceLevel] as numeric(194)) [PriceLevel],
	cast([Amount] as numeric(194)) [Amount],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([AuctionEventID] as int) [AuctionEventID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_Increments_FinalView]
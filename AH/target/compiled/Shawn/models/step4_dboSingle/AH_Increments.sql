
Select
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([PriceLevel] as numeric(19,4)) [PriceLevel],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([ID] as int) [Id],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([AuctionEventID] as int) [AuctionEventId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_Increments_FinalView]
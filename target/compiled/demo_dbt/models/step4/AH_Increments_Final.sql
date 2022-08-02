
Select
	[ID],[PriceLevel],[Amount],[LastUpdatedUser],[AuctionEventID],[ListingTypeID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Increments_Incr] 
Where [dbt_valid_to] is null
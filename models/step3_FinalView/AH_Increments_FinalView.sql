{{ config(materialized='view',schema='stg')}}
Select
	[ID],[LastUpdatedUser],[PriceLevel],[Amount],[ListingTypeID],[AuctionEventID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Increments_Incr] 
Where [dbt_valid_to] is null
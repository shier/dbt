{{ config(materialized='view',schema='stg')}}
Select
	[BidderApplicationID],[AuctionID],[AuctionName],[DateRange],[PreRegistrationFee],[PreRegistrationCutoffDate] 
From stg.[Auct_BidderApplication_Incr] 
Where [dbt_valid_to] is null
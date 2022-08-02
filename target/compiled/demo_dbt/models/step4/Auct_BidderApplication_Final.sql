
Select
	[BidderApplicationID],[AuctionName],[DateRange],[PreRegistrationCutoffDate],[PreRegistrationFee],[AuctionID] 
From stg.[Auct_BidderApplication_Incr] 
Where [dbt_valid_to] is null
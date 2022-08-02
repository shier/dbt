create view "stg"."Auct_BidderApplication_FinalView__dbt_tmp" as
    
Select
	[BidderApplicationID],[AuctionID],[AuctionName],[DateRange],[PreRegistrationFee],[PreRegistrationCutoffDate] 
From stg.[Auct_BidderApplication_Incr] 
Where [dbt_valid_to] is null

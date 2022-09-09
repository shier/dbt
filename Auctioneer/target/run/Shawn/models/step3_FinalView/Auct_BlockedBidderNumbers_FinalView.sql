create view "stg"."Auct_BlockedBidderNumbers_FinalView__dbt_tmp" as
    
Select
	[AuctionID],[AuctionBidderNumber],[Comments],[BlockedByUserID] 
From [Auct_BlockedBidderNumbers_Incr] 
Where [dbt_valid_to] is null

create view "stg"."Auct_BidderBadge_FinalView__dbt_tmp" as
    
Select
	[BidderBadgeID],[BidderBadgeImageID],[BidderStatusID],[AuctionID] 
From stg.[Auct_BidderBadge_Incr] 
Where [dbt_valid_to] is null

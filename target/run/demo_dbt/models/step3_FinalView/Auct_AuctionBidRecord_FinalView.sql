create view "stg"."Auct_AuctionBidRecord_FinalView__dbt_tmp" as
    
Select
	[AuctionBidRecordID],[LotNumber],[AuctionBidderNumber],[AuctionID],[Created] 
From stg.[Auct_AuctionBidRecord_Incr] 
Where [dbt_valid_to] is null

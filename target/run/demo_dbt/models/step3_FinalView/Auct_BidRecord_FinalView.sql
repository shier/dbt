create view "stg"."Auct_BidRecord_FinalView__dbt_tmp" as
    
Select
	[LotNumber],[AuctionID],[EndingBID],[ChangeTime] 
From [Auct_BidRecord_Incr]

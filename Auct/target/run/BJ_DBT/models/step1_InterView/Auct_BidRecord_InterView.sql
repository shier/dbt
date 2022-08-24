create view "stg"."Auct_BidRecord_InterView__dbt_tmp" as
    
Select
	[LOTNUMBER] [LotNumber],
	[AUCTIONID] [AuctionID],
	[ENDINGBID] [EndingBID],
	[CHANGETIME] [ChangeTime]
From stg.[Auct_BidRecord_Raw]

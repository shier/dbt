{{ config(materialized='view',schema='stg')}}
Select
	[LOTNUMBER] [LotNumber],
	[AUCTIONID] [AuctionID],
	[ENDINGBID] [EndingBID],
	[CHANGETIME] [ChangeTime]
From stg.[Auct_BidRecord_Raw]

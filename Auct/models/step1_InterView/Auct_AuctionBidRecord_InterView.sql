{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONBIDRECORDID] [AuctionBidRecordID],
	[LOTNUMBER] [LotNumber],
	[AUCTIONBIDDERNUMBER] [AuctionBidderNumber],
	[AUCTIONID] [AuctionID],
	[CREATED] [Created]
From stg.[Auct_AuctionBidRecord_Raw]

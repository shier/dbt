{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONID] [AuctionID],
	[AUCTIONBIDDERNUMBER] [AuctionBidderNumber],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[BLOCKEDBYUSERID] [BlockedByUserID]
From stg.[Auct_BlockedBidderNumbers_Raw]

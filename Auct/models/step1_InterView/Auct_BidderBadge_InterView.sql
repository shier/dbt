{{ config(materialized='view',schema='stg')}}
Select
	[BIDDERBADGEID] [BidderBadgeID],
	[BIDDERBADGEIMAGEID] [BidderBadgeImageID],
	[BIDDERSTATUSID] [BidderStatusID],
	[AUCTIONID] [AuctionID]
From stg.[Auct_BidderBadge_Raw]

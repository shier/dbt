create view "dbo_stg"."Auct_BidderBadge_InterView__dbt_tmp" as
    
Select
	[BIDDERBADGEID] [BidderBadgeID],
	[BIDDERBADGEIMAGEID] [BidderBadgeImageID],
	[BIDDERSTATUSID] [BidderStatusID],
	[AUCTIONID] [AuctionID]
From stg.[Auct_BidderBadge_Raw]

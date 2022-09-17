
Select
	cast([BidderBadgeID] as int) [BIDDERBADGEID],
	cast([BidderBadgeImageID] as int) [BIDDERBADGEIMAGEID],
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_BidderBadge_FinalView]
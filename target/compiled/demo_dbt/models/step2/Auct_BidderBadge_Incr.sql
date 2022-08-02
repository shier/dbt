
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(BidderBadgeImageID as varchar), Cast(BidderStatusID as varchar), Cast(AuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderBadge_Inter]
	)
Select * From hashData

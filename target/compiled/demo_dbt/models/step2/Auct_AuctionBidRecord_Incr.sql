
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(LotNumber as varchar), Cast(AuctionBidderNumber as varchar), Cast(AuctionID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBidRecord_Inter]
	)
Select * From hashData

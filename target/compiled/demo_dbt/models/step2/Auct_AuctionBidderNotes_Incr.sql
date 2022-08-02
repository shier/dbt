
With hashData as (
		Select
			HASHBYTES('MD5', Cast(AuctionBidderID as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBidderNotes_Inter]
	)
Select * From hashData

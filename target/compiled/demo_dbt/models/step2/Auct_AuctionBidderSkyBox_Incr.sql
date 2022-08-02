
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionBidderID as varchar), Cast(CreatedByUserID as varchar), Cast(AuctionID as varchar), Cast(Active as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBidderSkyBox_Inter]
	)
Select * From hashData


With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DeferedPercentage as varchar), Cast(GlAccountNumber as varchar), Cast(ParentAuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionDeferedRevenue_Inter]
	)
Select * From hashData

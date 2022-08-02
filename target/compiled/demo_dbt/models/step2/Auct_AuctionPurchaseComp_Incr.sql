
With hashData as (
		Select
			HASHBYTES('MD5', Cast(CompedAuctionID as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionPurchaseComp_Inter]
	)
Select * From hashData

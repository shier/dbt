
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionID as varchar), Cast(CreatedByUserID as varchar), Cast(ItemTypeID as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ChargeatSaleAuctionFeeType_Inter]
	)
Select * From hashData

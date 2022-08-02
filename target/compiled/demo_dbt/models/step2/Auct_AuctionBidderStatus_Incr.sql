
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionID as varchar), Cast(FeeID as varchar), Cast(RangeStart as varchar), Cast(RangeEnd as varchar), Cast(CommissionPercentage as varchar), Cast(AutomobiliaCommissionPercentage as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBidderStatus_Inter]
	)
Select * From hashData


With hashData as (
		Select
			HASHBYTES('MD5', concat(AuctionName, DateRange, PreRegistrationCutoffDate, Cast(PreRegistrationFee as varchar), Cast(AuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderApplication_Inter]
	)
Select * From hashData

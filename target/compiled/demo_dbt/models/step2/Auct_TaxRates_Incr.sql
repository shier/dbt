
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(AuctionID as varchar), Cast(Rate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaxRates_Inter]
	)
Select * From hashData


With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(AuctionID as varchar), Cast(UpdateEventID as varchar), City, State, County)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionLocation_Inter]
	)
Select * From hashData

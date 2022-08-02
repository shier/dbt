
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(VoltsRequired as varchar), Cast(UpdateEventID as varchar), Cast(LocationID as varchar), Cast(AuctionID as varchar), Cast(AmpsRequired as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Booth_Inter]
	)
Select * From hashData

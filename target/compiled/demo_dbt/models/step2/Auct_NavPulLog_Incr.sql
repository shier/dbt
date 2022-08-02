
With hashData as (
		Select
			HASHBYTES('MD5', concat(ProcessDate, Cast(Created as varchar), Cast(Status as varchar), Cast(AuctionID as varchar), Cast(RecsProcessed as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavPulLog_Inter]
	)
Select * From hashData

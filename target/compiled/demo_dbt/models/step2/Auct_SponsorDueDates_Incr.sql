
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Amountdue as varchar), Cast(DueDate as varchar), Cast(Created as varchar), Cast(SponsorAuctionID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorDueDates_Inter]
	)
Select * From hashData


With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(StartTime as varchar), Cast(EndTime as varchar), Cast(Created as varchar), Cast(DocketID as varchar), Cast(UpdateEventID as varchar), Cast(AskingBID as varchar), Cast(HighBID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockBid_Inter]
	)
Select * From hashData

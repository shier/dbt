
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Processor, Cast(UpdateEventID as varchar), Cast(ProcessorID as varchar), Cast(Active as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderStatus_Inter]
	)
Select * From hashData

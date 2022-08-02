
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, BidGeneratorText, Cast(UpdateEventID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuthenticStatus_Inter]
	)
Select * From hashData

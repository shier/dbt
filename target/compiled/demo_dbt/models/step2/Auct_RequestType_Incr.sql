
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(UpdateEventID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_RequestType_Inter]
	)
Select * From hashData

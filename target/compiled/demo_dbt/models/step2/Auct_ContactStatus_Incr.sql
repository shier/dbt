
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(Created as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactStatus_Inter]
	)
Select * From hashData

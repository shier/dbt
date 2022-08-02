
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UpdateEventID as varchar), Cast(Created as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_IndustryType_Inter]
	)
Select * From hashData

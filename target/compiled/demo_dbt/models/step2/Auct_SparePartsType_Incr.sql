
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UpdateEventID as varchar), Cast(Created as varchar), Name, InActive)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SparePartsType_Inter]
	)
Select * From hashData

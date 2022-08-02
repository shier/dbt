
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UpdateEventID as varchar), Cast(Created as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PhoneStatus_Inter]
	)
Select * From hashData

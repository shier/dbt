
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), KeyLocationName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DriverKeyLocationName_Inter]
	)
Select * From hashData

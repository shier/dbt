
With hashData as (
		Select
			HASHBYTES('MD5', concat(KeyLocationOther, KeyLocationComment, Cast(DriverInFormationID as varchar), Cast(DriverKeyLocationNameID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DriverKeyLocations_Inter]
	)
Select * From hashData

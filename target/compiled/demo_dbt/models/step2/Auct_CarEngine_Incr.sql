
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UpdateEventID as varchar), Cast(Created as varchar), Cast(Cylinders as varchar), Cast(Displacement as varchar), Cast(Horsepower as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarEngine_Inter]
	)
Select * From hashData

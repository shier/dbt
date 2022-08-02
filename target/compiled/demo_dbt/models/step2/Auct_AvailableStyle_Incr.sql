
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CarModelID as varchar), Cast(CarStyleID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), AllowDropDown)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableStyle_Inter]
	)
Select * From hashData


With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(CarModelID as varchar), Cast(CarMakeID as varchar), Cast(UpdateEventID as varchar), AllowDropDown)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableModel_Inter]
	)
Select * From hashData

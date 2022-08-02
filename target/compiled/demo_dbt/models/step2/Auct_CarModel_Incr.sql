
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Cast(WebActive as varchar), Cast(Created as varchar), Cast(CarTypeID as varchar), Cast(UpdateEventID as varchar), Name, RowGUID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarModel_Inter]
	)
Select * From hashData

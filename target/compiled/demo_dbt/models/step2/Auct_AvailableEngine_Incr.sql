
With hashData as (
		Select
			HASHBYTES('MD5', concat(AllowDropDown, Cast(CarModelID as varchar), Cast(CarEngineID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableEngine_Inter]
	)
Select * From hashData

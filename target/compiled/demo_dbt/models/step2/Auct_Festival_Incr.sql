
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(GBS_FestivalID as varchar), Cast(Active as varchar), Name, Longitude, Latitude)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Festival_Inter]
	)
Select * From hashData

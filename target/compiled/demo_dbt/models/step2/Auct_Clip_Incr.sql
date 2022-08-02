
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ClipTypeID as varchar), Cast(MultiMediaID as varchar), Cast(Active as varchar), Name, Description)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Clip_Inter]
	)
Select * From hashData

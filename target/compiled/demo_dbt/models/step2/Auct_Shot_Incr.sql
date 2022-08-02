
With hashData as (
		Select
			HASHBYTES('MD5', concat(FileName, Name, SubPath, Cast(ContentID as varchar), Cast(Active as varchar), Cast(PathID as varchar), Cast(MultiMediaTypeID as varchar), Cast(DateCreated as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Shot_Inter]
	)
Select * From hashData

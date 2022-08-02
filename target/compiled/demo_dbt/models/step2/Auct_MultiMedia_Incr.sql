
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ContentID as varchar), Cast(MultiMediaTypeID as varchar), Cast(Active as varchar), Cast(MultiMediaCategoryID as varchar), Cast(PathID as varchar), Cast(DateCreated as varchar), FileName, Name, SubPath)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MultiMedia_Inter]
	)
Select * From hashData

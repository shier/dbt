
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(DateCreated as varchar), Cast(Active as varchar), Cast(ContentTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Content_Inter]
	)
Select * From hashData

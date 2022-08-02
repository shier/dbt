
With hashData as (
		Select
			HASHBYTES('MD5', concat(TagName, Slug)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Tags_Inter]
	)
Select * From hashData

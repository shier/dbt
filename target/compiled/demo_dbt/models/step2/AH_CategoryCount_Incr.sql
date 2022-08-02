
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Count as varchar), Cast(CategoryID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_CategoryCount_Inter]
	)
Select * From hashData

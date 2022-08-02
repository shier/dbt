
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(CreateDateUTC as varchar), Cast(ModifyDateUTC as varchar), Cast(IssueDateUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_NewsLetterissue_Inter]
	)
Select * From hashData

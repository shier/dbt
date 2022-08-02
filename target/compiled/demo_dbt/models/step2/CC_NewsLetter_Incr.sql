
With hashData as (
		Select
			HASHBYTES('MD5', concat(Email, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_NewsLetter_Inter]
	)
Select * From hashData

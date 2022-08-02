
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, DisplayName, AppKey, AppSecret, Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SocialprovIDEr_Inter]
	)
Select * From hashData

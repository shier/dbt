
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), BadMake, BadModel, GoodMake, GoodModel, GoodTrim)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelcorrection_Inter]
	)
Select * From hashData

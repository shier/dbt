
With hashData as (
		Select
			HASHBYTES('MD5', concat(Description, DisplayDescription, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(Price as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Product_Inter]
	)
Select * From hashData

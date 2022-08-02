
With hashData as (
		Select
			HASHBYTES('MD5', concat(Lookup, JsonData, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SalesForceData_Inter]
	)
Select * From hashData

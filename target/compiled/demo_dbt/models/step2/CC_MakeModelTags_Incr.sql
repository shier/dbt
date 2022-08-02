
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([MakeModelFK] as varchar), Cast([TagFK] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelTags_Inter]
	)
Select * From hashData

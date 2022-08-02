
With hashData as (
		Select
			HASHBYTES('MD5', Column2) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Categorystuff_Inter]
	)
Select * From hashData

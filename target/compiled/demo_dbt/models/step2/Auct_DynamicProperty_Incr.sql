
With hashData as (
		Select
			HASHBYTES('MD5', concat(DataClass, Name, DisplayName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DynamicProperty_Inter]
	)
Select * From hashData

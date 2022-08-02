
With hashData as (
		Select
			HASHBYTES('MD5', concat(TypeName, AssemblyName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_XpoBJectType_Inter]
	)
Select * From hashData

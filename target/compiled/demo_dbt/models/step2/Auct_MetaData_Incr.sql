
With hashData as (
		Select
			HASHBYTES('MD5', concat(Value, Cast(DateCreated as varchar), Cast(MetaDataTypeID as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MetaData_Inter]
	)
Select * From hashData

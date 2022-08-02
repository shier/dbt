
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Name, TableName, ColumnName, DisplayColumn)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MetaDataType_Inter]
	)
Select * From hashData

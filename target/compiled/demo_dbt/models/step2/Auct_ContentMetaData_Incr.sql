
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ContentID] as varchar), Cast([MetaDataID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContentMetaData_Inter]
	)
Select * From hashData


With hashData as (
		Select
			HASHBYTES('MD5', concat(VersionNumber, Status, Cast(DaTestamp as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Version_Inter]
	)
Select * From hashData

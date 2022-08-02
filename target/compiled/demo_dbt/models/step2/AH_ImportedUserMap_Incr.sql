
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ForeignUserID as varchar), ImportedUserName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ImportedUserMap_Inter]
	)
Select * From hashData

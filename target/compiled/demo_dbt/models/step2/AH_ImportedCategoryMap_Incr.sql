
With hashData as (
		Select
			HASHBYTES('MD5', Cast(ForeignCategoryID as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ImportedCategoryMap_Inter]
	)
Select * From hashData

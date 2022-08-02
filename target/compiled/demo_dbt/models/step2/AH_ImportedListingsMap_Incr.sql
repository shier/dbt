
With hashData as (
		Select
			HASHBYTES('MD5', Cast(ForeignListingID as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ImportedListingsMap_Inter]
	)
Select * From hashData

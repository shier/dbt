
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Views as varchar), Cast(ImportDate as varchar), ImportID, ImportSource)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingTrackLegacy_Inter]
	)
Select * From hashData

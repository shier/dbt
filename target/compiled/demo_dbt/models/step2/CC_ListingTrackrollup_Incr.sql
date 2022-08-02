
With hashData as (
		Select
			HASHBYTES('MD5', concat(BatchID, Cast(BatchDate as varchar), Cast(Day as varchar), Cast(Views as varchar), Cast(Year as varchar), Cast(Month as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingTrackrollup_Inter]
	)
Select * From hashData

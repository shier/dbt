
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(StartID as varchar), Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(EndID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingTrackRuns_Inter]
	)
Select * From hashData

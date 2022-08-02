
With hashData as (
		Select
			HASHBYTES('MD5', concat(ReferringPage, DestinationURL, AdvertiserName, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ReSourceGUIDETrack_Inter]
	)
Select * From hashData

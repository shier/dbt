
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ListingID as varchar), Cast(ListingActionID as varchar), Cast(UserID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), ReferringPage, DataToken, UserAgent, Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingTrack_Inter]
	)
Select * From hashData

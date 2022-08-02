
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Longitude as varchar), Cast(Latitude as varchar), Browser, Appused, UserAgent, UserEmail, IpAddress, Cast(CreateDateUTC as varchar), Cast(ListingFK as varchar), Cast(UserID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ShareInfo_Inter]
	)
Select * From hashData

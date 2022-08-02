
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ListingID as varchar), Cast(DateShowcasedUTC as varchar), Cast(DateShowcaseExpiresUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Audit_Inter]
	)
Select * From hashData

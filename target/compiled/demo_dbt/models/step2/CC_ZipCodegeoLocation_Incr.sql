
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(Latitude as varchar), Cast(Longitude as varchar), Cast(IsActive as varchar), ZipCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ZipCodegeoLocation_Inter]
	)
Select * From hashData

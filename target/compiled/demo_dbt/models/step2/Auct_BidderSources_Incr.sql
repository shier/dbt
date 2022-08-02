
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Cast(DisplayOrder as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderSources_Inter]
	)
Select * From hashData
